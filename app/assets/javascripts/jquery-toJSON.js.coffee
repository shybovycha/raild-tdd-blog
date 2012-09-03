(($) ->
  $.fn.toJSON = (options) ->
    options = $.extend({}, options)
    self = this
    json = {}
    push_counters = {}
    patterns =
      validate: /^[a-zA-Z][a-zA-Z0-9_]*(?:\[(?:\d*|[a-zA-Z0-9_]+)\])*$/
      key: /[a-zA-Z0-9_]+|(?=\[\])/g
      push: /^$/
      fixed: /^\d+$/
      named: /^[a-zA-Z0-9_]+$/

    @build = (base, key, value) ->
      base[key] = value
      base

    @push_counter = (key, i) ->
      push_counters[key] = 0  if push_counters[key] is `undefined`
      if i is `undefined`
        push_counters[key]++
      else push_counters[key] = ++i  if i isnt `undefined` and i > push_counters[key]

    $.each $(this).serializeArray(), ->
      
      # skip invalid keys
      return  unless patterns.validate.test(@name)
      k = undefined
      keys = @name.match(patterns.key)
      merge = @value
      reverse_key = @name
      while (k = keys.pop()) isnt `undefined`
        
        # adjust reverse_key
        reverse_key = reverse_key.replace(new RegExp("\\[" + k + "\\]$"), "")
        
        # push
        if k.match(patterns.push)
          merge = self.build([], self.push_counter(reverse_key), merge)
        
        # fixed
        else if k.match(patterns.fixed)
          self.push_counter reverse_key, k
          merge = self.build([], k, merge)
        
        # named
        else merge = self.build({}, k, merge)  if k.match(patterns.named)
      json = $.extend(true, json, merge)

    json
) jQuery
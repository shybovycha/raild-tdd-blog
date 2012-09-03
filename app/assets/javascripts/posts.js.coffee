# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery(document).ready( ->
    jQuery('a.add-comment').click( ->
        jQuery(this).parent().children('.add-comment').children('.form-container').toggle()
        jQuery(this).toggle()

        false
    )

    jQuery('.add-comment .cancel-button').click( ->
        jQuery(this).parent().parent().toggle()
        jQuery(this).parent().parent().parent().parent().children('a.add-comment').toggle()

        false
    )

    jQuery('.add-comment .form-container form .submit-button').click( ->
        post_id = jQuery(this).parent().children('[name=post_id]').val()

        jQuery.post('/posts/create_comment/', jQuery(this).parent('form').toJSON(), (data) ->
            if data.errors.length <= 0 and post_id
                jQuery('.comments').load('/posts/get_comments', { "post_id": post_id })
        )

        false
    )
)
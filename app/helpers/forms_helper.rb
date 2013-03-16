module FormsHelper

  # Get the validation status of a form field
  #
  # attribute - The Symbol of the attribute filled by the field
  # form - the simple form SimpleFrom::FormBuilder
  #
  # Example
  #
  #    - simple_form_for @record do |f|
  #      .control-group.file.required{ class: "#{ error? :picture, f }" }
  #        = f.label :picture
  #        = f.error :picture
  #        = f.file_field :picture
  #        = f.hint :picture
  #
  #        = f.input :location, input_html: { class: 'input-mini' }
  #         ...
  #
  # Returns String 'error' if the field triggered a validation error
  def error? attribute, form
    (form.object.errors[attribute].presence) ? 'error' : ''
  end
end

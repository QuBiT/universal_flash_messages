module UniversalFlashMessages::ViewHelpers

  def render_flash_messages( div_id = "flash_messages", div_class = "" )
    div_content = ""
    UniversalFlashMessages::FlashTypes.valid.each do |key|
      div_content << render_flash_message( key.to_s, flash[key] ) unless flash[key].blank?
    end
    return "" if div_content.blank?
    content_tag( :div, div_content.html_safe, :id => div_id, :class => div_class )
  end

  def render_flash_message( css_class, message_array = [] )
    return "" if message_array.blank?
    message_array = [message_array] unless message_array.is_a?(Array)
    content = ""
    message_array.each { |message| content << content_tag( :p, message, :class => "#{css_class}" )}
    return content
  end

end

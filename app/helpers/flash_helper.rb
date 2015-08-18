module FlashHelper
  def flash_messages
    flash.collect do |key, msg|
      alert_class = case(key)
      when :notice, :success
        "success"
      when :alert, :error
        "error"
      else
        "info"
      end

      content_tag(:div, msg, :id => key, :class => "alert #{alert_class} center flash-message")
    end.join.html_safe
  end
end

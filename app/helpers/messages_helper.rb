module MessagesHelper



  def recipients_options(chosen_recipient = nil)
  s = ''

  s << "<option value='#{chosen_recipient.id}' data-img-src='#{gravatar_image_url(chosen_recipient.email, size: 50)}' #{'selected' if chosen_recipient == chosen_recipient}>#{chosen_recipient.name}</option>"
  s.html_safe
end
end

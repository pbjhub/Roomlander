module ApplicationHelper

def page_header(text)
  content_for(:page_header) { text.to_s }
end

def gravatar_for(user, size = 40, title = user.name)
	gravatar_image_tag('junk', :alt => 'Paper plane', :gravatar => { :default => 'https://freeiconshop.com/files/edd/paper-rocket-flat.png', size: size } , class: 'img-rounded') 
end

end



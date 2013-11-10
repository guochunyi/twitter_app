module UsersHelper
  def photo_for(user)
    photo_url = "https://secure.gravatar.com/avatar/1"
    image_tag(photo_url, class: "gravatar")
  end 
end

module ApplicationHelper
  def avatar_url(user)
    if user.photo.url.present?
      cl_image_path user.photo
    else
      image_path 'default_avatar.png'
    end
  end
end

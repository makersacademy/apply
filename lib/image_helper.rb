module ImageHelper
  CDN_URL = "http://assets.makersacademy.com"

  def image_path(path)
    "#{CDN_URL}/images/#{path}"
  end
end

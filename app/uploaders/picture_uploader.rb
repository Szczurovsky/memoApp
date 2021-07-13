class PictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick


  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


    process resize_to_fill: [400, 400]
  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fill: [100, 100]
  end

  version :big do
    process resize_to_fill: [200, 200]
  end

  def extension_allowlist
    %w(jpg png)
  end


end

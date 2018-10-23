class MainImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  # Choose what kind of storage to use for this uploader:
  storage :aws
  # process resize_to_fill: [200, 200]
  version :thumb do
    process resize_to_fill: [200,200]
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end

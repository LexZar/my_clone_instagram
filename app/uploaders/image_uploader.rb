class ImageUploader < Shrine
    #     Attacher.validate do
    #         validate_size      1..5*540*540
    #         validate_mime_type %w[image/jpeg image/png image/webp image/tiff]
    #         validate_extension %w[jpg jpeg png webp tiff tif]
    #       end
    include ImageProcessing::MiniMagick
    plugin :processing
    plugin :versions
    
end
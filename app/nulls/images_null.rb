class ImagesNull
  def initialize(images)
    @images = images
  end

  def first
    ImageNull.new(@images.first)
  end
end

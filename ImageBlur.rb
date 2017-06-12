class Image


  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |x|
      puts x.join
    end
  end

  def getPixel(x,y)
    @image[x][y]
  end

  def changePixel(x,y)
    @image[x][y] = 1
  end


#should loop through @image and find all of the ones
#and blur around them in x

  def blur
    #blurred = Image.new(@image)


    l = @image.length
    li = @image[1].length
    puts "#{l} and #{li}"

  end
end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])



image.output_image
image.blur

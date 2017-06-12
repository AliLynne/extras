class Image


  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |x|
      puts x.join
    end
  end




#should loop through @image and find all of the ones
#and blur around them in x

  def blur(row_index,col_index)
    @image[row_index-1][col_index] = 1
    @image[row_index][col_index-1] = 1
    @image[row_index+1][col_index] = 1
    @image[row_index][col_index+1] = 1
  end
end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])




#image.blur
image.output_image

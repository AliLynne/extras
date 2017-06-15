class Image


  def initialize(image)

    @image = Marshal.load(Marshal.dump(image))

  end

  def output_image

    @image.each do |x|
      puts x.join
    end

  end

#should loop through @image and find the location of all of the ones

  def blurr

    new_image = Image.new(@image)
    @image.each_with_index do |i, row_index|
      i.each_with_index do |a, col_index|
        if a == 1
          new_image.transform(row_index,col_index)
        end
      end
    end
    new_image.output_image
  end

#should transform all of the zeros above, below, left and right to be 1's

  def transform(row_index,col_index)

    if row_index-1 >= 0
      @image[row_index-1][col_index] = 1
    end
    if col_index - 1 >= 0
      @image[row_index][col_index-1] = 1
    end
    if row_index + 1 <= @image.length - 1
      @image[row_index+1][col_index] = 1
    end
    if col_index + 1 <= @image[row_index].length - 1
      @image[row_index][col_index+1] = 1
    end

  end

  def blur(distance)

    new_image = Image.new(@image)
    @image.each_with_index do |i, row_index|
      i.each_with_index do |a, col_index|

          if a == 1
            new_image.transform(row_index,col_index)

          end

      end
    end

    new_image.output_image

  end

end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])




image.blurr
image.output_image

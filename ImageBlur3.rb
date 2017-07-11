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

  def blur(distance)

    new_image = Image.new(@image)
    @image.each_with_index do |i, row_index|
      i.each_with_index do |a, col_index|
        if a == 1
          new_image.transform(row_index,col_index,distance)
        end
      end
    end
    new_image.output_image
  end

  def touples(n)
    s = n + 1
    touple_values = []
    s.times do |x|
      s.times do |y|
        touple_values.push([x, y])
      end
    end

    filtered_array = []

    touple_values.each do |touple|
      # touple = [1, 1]
      x, y = touple
      if x + y <= n
        filtered_array.push([x, y])
        filtered_array.push([-x, y])
        filtered_array.push([x, -y])
        filtered_array.push([-x, -y])
      end
    end

    return filtered_array

  end

  def transform(row_index, col_index, distance)
  touples = touples(distance)
    touples.each do |x,y|
      if (row_index - y >= 0 && row_index - y <=@image.length - 1) && (col_index + x >= 0 && col_index + x <=@image[row_index].length - 1)
        @image[row_index - y][col_index + x] = 1
      end
    end
  end
end



image = Image.new([
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1]
])




image.blur(3)
puts ""
image.output_image

#gem binding.pry
#https://gist.github.com/pdbradley/7d87b4e959a761783a2233177b992939

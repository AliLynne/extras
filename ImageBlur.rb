class Image
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |x|
      puts x.join
    end
  end

  def blur
    array.each_index do |i|
      subarray = array[i]
      subarray.each_index do |x|
          if array[i][x] == 1
            array[i-1][x] = 1
            array[i+1][x] = 1
            array[i][x-1] = 1
            array[i][x+1] = 1
            array.each do |a|
              puts a.join
            end
          end

      end
    end
    array.each do |a|
      puts a.join
    end
  end

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])


image.blur

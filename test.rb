def touples(n)
  touple_values = []
  n.times do |x|
    n.times do |y|
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

puts touples(3)


#should transform all of the zeros above, below, left and right to be 1's

  # def transform(row_index,col_index,distance)
  #   for i in 1..distance
  #     #above
  #     if row_index - i >= 0
  #       @image[row_index-i][col_index] = 1
  #     end
  #     #left
  #     if col_index - i >= 0
  #       @image[row_index][col_index-i] = 1
  #     end
  #     #below
  #     if row_index + i <= @image.length - 1
  #       @image[row_index+i][col_index] = 1
  #     end
  #     #right
  #     if col_index + i <= @image[row_index].length - 1
  #       @image[row_index][col_index+i] = 1
  #     end
  #   end
  # end

  # def blur(distance)
  #
  #   new_image = Image.new(@image)
  #   @image.each_with_index do |i, row_index|
  #     i.each_with_index do |a, col_index|
  #
  #         if a == 1
  #           new_image.transform(row_index,col_index)
  #
  #         end
  #
  #     end
  #   end
  #
  #   new_image.output_image
  #
  # end

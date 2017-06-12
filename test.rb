# This is an irregular 2D array (a jagged array).
values = [["A", "B", "C"], ["D", "E", "F"], ["G", "H"]]

# Loop over indexes.
values.each_index do |i|

    # Get subarray and loop over its indexes also.
    subarray = values[i]
    subarray.each_index do |x|
        # Display the cell.
        puts String(i) << " " << String(x) << "... " << values[i][x]
    end

end

# def subset(input)
#   input.combination(2).to_a # trivialized using the combination method
# end


# O(n^2) complexity 
# 2x size?
# def subset(input)
#   result = []
#   input.each_with_index do |i1, idx| # data structure 1
#     input.drop(idx+1).each do |i2| # Possibly data structure 2
#       result << [i1, i2]
#     end
#   end
#   result
# end

def subset(input)
  combos = []
  until input.size <= 1
    first, *rest = input
    rest.each do |i|
      print rest
      combos << [first, i]
    end
    input = rest
  end
  combos
end
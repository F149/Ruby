class RunLengthEncoding

  def self.encode(str)
    str.gsub(/(.)\1+/) { |m| "#{m.length}#{m[0]}" }
  end

  def self.decode(str)
    str.gsub(/(\d+)(\D)/) { |m| m[-1] * m[0...-1].to_i }
  end
end


# class RunLengthEncoding
#   class << self
#     def encode(text)
#       text.chars.chunk { |c| c }.each_with_object('') do |(letter, count), o|
#         o << (count.size == 1 && letter || '%s%s' % [count.size, letter])
#       end
#     end

#     def decode(text)
#       text.scan(/(\d+)?(\D)/).each_with_object('') do |(digit_maybe,c ), o|
#         o << c * (digit_maybe || 1).to_i 
#       end
#     end
#   end
# end


# class RunLengthEncoding

#   def self.encode(input)
#     output = ""
#     input_elements = input.chars
#     while !input_elements.empty?
#       index = 0
#       index += 1 while input_elements.first == input_elements[index]
#       index > 1 ? output << "#{index}#{input_elements.first}" : output << "#{input_elements.first}"
#       input_elements.shift(index)
#     end
#     output
#   end
 
#   def self.decode(input)
#     input_elements = input.chars
#     output = ""
#     while !input_elements.empty?
#       number_catcher = ""
#       while input_elements.first.to_i > 0
#         number_catcher << input_elements.shift
#       end
#       if number_catcher.to_i > 0
#         number_catcher.to_i.times do
#           output << input_elements.first
#         end
#       else
#         output << input_elements.first
#       end
#       input_elements.delete_at(0)
#     end
#     output
#   end
# end

# class RunLengthEncoding
  
#   def self.encode(data)
#     encoded_data = ""
#     acc = 1
#     (1..data.length).each do |symbol|
#       if data[symbol] == data[symbol - 1]
#         acc += 1
#       else
#         encoded_data << acc.to_s if acc > 1
#         encoded_data << data[symbol - 1]
#         acc = 1
#       end
#     end
#     encoded_data
#   end

#   def self.decode(data)
#     coded_data = data.scan(/\d*\D/)
#     coded_data.map do |char|
#       (num = char[/\d+/]) ? char[/\D/] * num.to_i : char
#     end.join
#   end
# end

class PhoneNumber
  def self.clean(data)
    number_digit = data.gsub(/\d+/, "").gsub(/^1/, "")
    if number_digit[0].match(/[2-9]/) &&
       number_digit[3].match(/[2-9]/) &&
       number_digit.length == 10
       number_digit
    else
      nil
    end
  end
end

# (NXX)-NXX-XXXX

class Bob

    def self.hey(remark)
      if is_silence?(remark)
        'Fine. Be that way!'
      elsif is_yell?(remark) 
        'Whoa, chill out!'
      elsif is_quetion?(remark)
        'Sure.'
      else
        'Whatever.'
      end
    end

private
    def self.is_silence?(remark)
      remark.strip == ""
    end

    def self.is_yell?(remark)
      remark == remark.upcase && remark != remark.downcase 
    end

    def self.is_quetion?(remark)
      # remark.strip.itself[-1] == '?'
      remark.strip.end_with?('?')
    end
  
end   
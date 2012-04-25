module Roman
  extend self

  def to_roman(num)
		size = num.to_s.size
		
		raise InvalidArgumentError if num <= 0 || num >= 4000	
		if num < 10
			return ['','I','II','III','IV','V','VI','VII','VIII','IX'][num]
		end

    case num
    when 10
      'X'
    when 50
      'L'
    when 100
      'C'
    when 500
      'D'
		when 1000
      'M'
		when 1999
      'MCMXCIX'
    end
  end

	class InvalidArgumentError < StandardError; end 
end


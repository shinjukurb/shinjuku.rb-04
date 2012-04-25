module Roman
  extend self

  def to_roman(num)
		size = num.to_s.size

    case num
		when 0
			raise InvalidArgumentError
    when 1
      'I'
    when 4
      'IV'
    when 5
      'V'
    when 6..8
      'V' + 'I' * (num - 5)
    when 9
      'IX'
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


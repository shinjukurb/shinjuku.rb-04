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
    end
  end

	class InvalidArgumentError < StandardError; end 
end


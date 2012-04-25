module Roman
  extend self
  def to_roman(num)
    case num
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
end


class FizzbuzzAdvanced
  attr_accessor :values

  def initialize(file)
    @values = {}
    File.open(file).each do |line|
      k, v = line.split(',')
      values[k.gsub(/\s+/, '')] =
        v.gsub(/\s+/, '') # Eliminate spaces, newlines, etc
    end
  end

  def buzz(n)
    result = ''
    values.each do |k, v|
      result << v if n % k.to_i == 0
    end
    result.empty? ? n : result
  end
end

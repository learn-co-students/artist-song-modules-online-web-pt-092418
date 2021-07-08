module Paramable
  def to_param
    name.downcase.gsub(' ', '-')
  end

  def initialize
    self.class.all << self
  end
end
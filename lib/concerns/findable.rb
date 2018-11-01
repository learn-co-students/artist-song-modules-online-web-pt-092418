module Findable

  def find_by_name
    def self.find_by_name(name)
      @@all.detect{|a| a.name == name}
    end
  end
end

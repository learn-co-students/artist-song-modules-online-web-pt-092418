require 'pry'

class Song

  extend Memorable
  include Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
      # can find a song by name
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    # keeps track of the songs that have been created
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
      # converts its name to a url friendly parameter
    name.downcase.gsub(' ', '-')
  end
end

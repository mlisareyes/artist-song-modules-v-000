require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramble::InstanceMethods

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

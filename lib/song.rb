require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramble::InstanceMethods


  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

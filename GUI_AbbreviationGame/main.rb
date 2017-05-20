#!/usr/bin/env ruby

require 'json'
require 'open-uri'
require "vrlib"
require_rel 'src/'


# Storage the abbreviations
class Abbreviation
  attr_accessor :list
  def initialize(hash)
    @list = hash
    @keys = @list.keys
    @values = @list.values
    @size = @list.size
    @array = [*0..(@size - 1)]
  end

  def random
    n = @array[rand(@array.size - 1)]
    @array.delete(n)
    { @keys[n] => @values[n] } unless n.nil?
  end

  def update
    @size = @list.size
  end

  def reset
    @array = [*0..(@size - 1)]
    self
  end
end

def add_mode(_file, abbrs)
  loop do
    print 'Enter the abbreviation: '
    abbr = gets.chomp.strip
    return if abbr.empty?
    print "Enter the expansion of #{abbr}: "
    expansion = gets.chomp
    abbrs.list[abbr] = expansion
  end
end

def update
  open('abbreviations.json', 'wb') do |file|
    file << open('https://raw.githubusercontent.com/celilileri/ruby-samples/master/AbbreviationGame/abbreviations.json').read
  end
end

def user_interface(file, abbrs)
  loop do
    print "\nWelcome to Abbreviation Game!\n" \
          "What do you want to do?\n\n" \
          "1 - Play the Game!\n" \
          "2 - Add new abbreviations\n" \
          "3 - Update the abbreviation database\n" \
          "\nPlease enter number of your choose: "
    mode = gets.chomp.to_i
    abbrs.update
    case mode
    when 1
      play abbrs.reset
    when 2
      add_mode file, abbrs
      file.puts JSON.pretty_generate abbrs.list
    when 3
      puts "Updating the abbreviation database...\n" \
           "Downloading latest database from GitHub Servers..."
      update
      file = File.open('abbreviations.json', 'r+')
      abbrs = Abbreviation.new JSON.parse File.read(file)
      puts "Update completed."
    else
      return
    end
  end
end

def main
  Arayuz.new.show_glade()
end

main if __FILE__ == $PROGRAM_NAME

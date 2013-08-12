#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require "bundle/bundler/setup"
require "alfred"

require 'json'
require 'uri'
require 'net/http'

Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback
  settings = alfred.setting.load
  query = ARGV.join(" ").strip
  value = query.partition('=').last

  if query.start_with? 'set_host'
    alfred.setting.dump({ "host", value })
    puts "Host has been changed to '#{value}'."
    next
  elsif query.start_with? 'copy'
    IO.popen('pbcopy', 'w+') { |f| f << value }
    puts "Copied '#{value}' to your clipboard."
    next
  end

  unless settings.has_key? "host"
    puts "First setup the remote host IP or hostname using 'reign host'."
    next 
  end

  base_url = "http://#{settings['host']}"

  if query.start_with? 'open'
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    `open #{j['track_id']}`
    puts "Opening '#{j['now_playing']}' in Spotify."
    next 
  end

  if value.start_with? "np" or value.start_with? "nowplaying" # Now Playing
    r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
    puts r.body
  elsif value.start_with? "n" or value.start_with? "next" # Next
    r = Net::HTTP.get_response(URI.parse("#{base_url}/next"))
  elsif value.start_with? "p" or value.start_with? "previous" # Previous
    r = Net::HTTP.get_response(URI.parse("#{base_url}/previous"))
  elsif value.start_with? "s" or value.start_with? "playpause" or value.start_with? "play" or value.start_with? "pause" # Play/Pause
    r = Net::HTTP.get_response(URI.parse("#{base_url}/playpause"))
  elsif value.start_with? "o" or value.start_with? "open" # Open in Spotify
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    `open #{j['track_id']}`
  else
    puts "Unknown command '#{value}'."
  end
end
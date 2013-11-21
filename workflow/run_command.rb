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
    settings[:host] = value
    alfred.setting.close
    puts "Host has been changed to '#{value}'."
    next
  end

  unless settings.has_key? :host
    puts "First setup the remote host IP or hostname using 'reign host'."
    next
  end

  base_url = "http://#{settings[:host]}"

  if query.start_with? 'open'
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    `open #{j['track_id']}`
    puts "Opening '#{j['now_playing']}' in Spotify."
    next 
  elsif query.start_with? 'copy'
    IO.popen('pbcopy', 'w+') { |f| f << value }
    puts "Copied '#{value}' to your clipboard."
    next
  end

  case value
  when "np", "nowplaying" # Now Playing
    r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
    puts r.body
  when "n", "next" # Next
    Net::HTTP.get_response(URI.parse("#{base_url}/next"))
    r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
    puts r.body
  when "p", "previous" # Previous
    Net::HTTP.get_response(URI.parse("#{base_url}/previous"))
    r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
    puts r.body
  when "s", "playpause" # Play/Pause
    Net::HTTP.get_response(URI.parse("#{base_url}/playpause"))
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    if j['state'].eql? 'playing'
      r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
      puts r.body
    end
  when "play"
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    if !j['state'].eql? 'playing'
      Net::HTTP.get_response(URI.parse("#{base_url}/playpause"))
      r = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying"))
      puts r.body
    end
  when "pause", "stop"
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    if !['paused','stopped'].include? j['state']
      Net::HTTP.get_response(URI.parse("#{base_url}/playpause"))
      if value.eql? 'pause'
        puts "Paused"
      else
        puts "Stopped"
      end
    end
  when "o", "open" # Open in Spotify
    r = Net::HTTP.get_response(URI.parse("#{base_url}/status"))
    j = JSON.parse(r.body)
    `open #{j['track_id']}`
  else
    puts "Unknown command '#{value}'."
  end
end

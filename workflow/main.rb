#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require "bundle/bundler/setup"
require "alfred"

require 'uri'
require 'net/http'

def faux_query(query)
  query.length > 0 ? query : "..."
end  

def show_host_item(fb, query)
  if query.start_with? 'host'
    query = query.partition('host').last.strip
  end
  fb.add_item({
    :uid      => "",
    :title    => "Set the Reign for Spotify Host",
    :subtitle => "Change the hostname or IP address to '#{faux_query(query)}'",
    :arg      => "set_host=#{query}",
    :valid    => "yes",
  })
end

Alfred.with_friendly_error do |alfred|
  fb = alfred.feedback
  settings = alfred.setting.load
  query = ARGV.join(" ").strip

  if !settings.has_key? 'host' or query.start_with? 'host'
    show_host_item(fb, query)
  else
    begin
      base_url = "http://#{settings['host']}"
      np = Net::HTTP.get_response(URI.parse("#{base_url}/nowplaying")).body
      fb.add_item({
        :uid      => "",
        :title    => "Copy '#{np}'",
        :subtitle => "Copy to clipboard.",
        :arg      => "copy=#{np}",
        :valid    => "yes",
      })
      fb.add_item({
        :uid      => "",
        :title    => "Open '#{np}'",
        :subtitle => "Open in Spotify.",
        :arg      => "open=#{np}",
        :valid    => "yes",
      })    
      fb.add_item({
        :uid      => "",
        :title    => "Command Reign",
        :subtitle => "Tell the remote Spotify client to '#{faux_query(query)}'.",
        :arg      => "run_command=#{query}",
        :valid    => "yes",
      })
    rescue
      show_host_item(fb, query)
    end
  end

  puts fb.to_xml    
end




require 'sinatra'

require 'builder'
require 'haml'
require 'twitter'

get '/' do
  haml :index
end

get '/people/:guid/@friends' do |guid|
  content_type 'text/plain'
  @entries = twitter.friends(:id => twitter_username_from_guid(guid))
  builder :'people/friends'
end

get '/people/:guid/@self' do |guid|
  content_type 'text/plain'
  @entry = twitter.user(twitter_username_from_guid(guid))
  builder :'people/self'
end

def link_to(text, url=text)
  %{ <a href="#{url}">#{text}</a> }.strip
end

def opensocial_url(*parts)
  "http://#{request.env["HTTP_HOST"]}/" + parts.join('/')
end

def twitter_username_from_guid(guid)
  guid.gsub('twitter.com:', '')
end

def twitter
  Twitter::Base.new(Twitter::HTTPAuth.new('', ''))
end
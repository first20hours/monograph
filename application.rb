require 'rubygems'
require 'sinatra'
require 'rack-canonical-host'

set :public, Proc.new { File.join(root, "_site") }
# use Rack::CanonicalHost, 'domain.com'

# Added headers for Varnish
before do
  response.headers['Cache-Control'] = 'public, max-age=31556926' # 1 year
end

# Index handler
get '/?' do
  File.read("_site/index.html")
end

# Feed handler
get '/feed/?' do
  File.read("_site/rss.xml")
end

get '/robots.txt' do
  File.read("_site/robots.txt")
end

## Post handler

get '/*/?' do
	File.read("_site/#{params[:splat]}/index.html")
end

## Error handler

not_found do
  File.read("_site/error/index.html")
end

error do
  File.read("_site/error/index.html")
end
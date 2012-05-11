require ::File.expand_path('./../application', __FILE__)
use Rack::Deflater
run Sinatra::Application


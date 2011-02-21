require 'rubygems'
require 'rack'
require 'digest/sha1'

app = lambda { |env| [200, {'Content-Type' => 'text/plain'}, "Hello, World! "+Digest::SHA1.hexdigest(Time.now.to_s+ rand(10000).to_s) ] }


#Rack::Handler::Thin.run(app, {:Host => "0.0.0.0", :Port => 8001})
run app
require 'digest/sha1'
class HelloController < ApplicationController
  def index
  render :text=>"Hello, World! "+Digest::SHA1.hexdigest(Time.now.to_s+ rand(10000).to_s) 
  end

end

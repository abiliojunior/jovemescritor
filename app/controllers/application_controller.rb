class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
      render html: "VK é uma gatinha com mel"
  end
    
end

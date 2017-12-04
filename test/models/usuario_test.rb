require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  
  def setup
    @usuario = Usuario.new(nome: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
 
  
  # test "the truth" do
  #   assert true
  # end
  
 
end

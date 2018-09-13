class User < ApplicationRecord
  #attr_accessor :login

  has_one :cart

end

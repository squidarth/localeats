class Bank < ActiveRecord::Base
  belongs_to :user
  attr_accessor :password, :username

end
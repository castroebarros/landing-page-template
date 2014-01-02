class Lead < ActiveRecord::Base
  attr_accessible :email, :nome
  validates_presence_of :email
end

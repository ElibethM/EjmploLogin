class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessor :password
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true
  validates_length_of :password, :in => 3..20, :on => :create
  validates :nombre, :presence => true
  validates :apellidos, :presence => true
  validates :direccion, :presence => true
  validates :telefono, :presence => true
end

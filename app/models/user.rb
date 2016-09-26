class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :pins
         validates  :name, presence: true
           #Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet,1 Number and 1 Special Character
        #  validates :password, :presence => true,
        #                       :on => create,
         #
        #                       :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A=Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/}
    #  validates_presence_of :email
      # validates_uniqueness_of :email
      # validates_format_of :email, :with => /.+@.\..+/i
end

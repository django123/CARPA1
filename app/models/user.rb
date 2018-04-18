class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #enumerize :skin,in: [:President, :CST, :ET1, :ET2, :EJ1, :EJ2,:Assistant_PR,:Assistant_CST ]

  has_many :entry_couriers
  has_many :release_couriers
end

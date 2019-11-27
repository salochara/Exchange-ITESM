class User < ApplicationRecord
  require 'csv'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :teacher
  has_many :grades
  has_many :courses, through: :grades

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      #raise
      Grade.create!(row.to_hash)
    end
  end
end

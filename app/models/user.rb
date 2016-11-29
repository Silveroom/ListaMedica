class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         enum role: [ 'Administrador', 'Usuario' ]

  validates :nombre, presence: true
  validates :apellido_paterno, presence: true
  validates :apellido_materno, presence: true
  validates :role, presence: true

  has_many :lists
  has_many :patients, through: :lists, dependent: :destroy

  def nombre_usuario
    "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end
end

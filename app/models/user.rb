class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :phone, uniqueness: true,presence: true, length: 
                      { is: 10 ,message:'should be 10 degit'},numericality: { only_integer: true }
                

  def email_required?
   false
  end
#   def email_changed?
#  false
# end
#   def will_save_change_to_email?
#     false
#   end

end

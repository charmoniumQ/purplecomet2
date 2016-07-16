class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :registerable, :recoverable

  # Design choices: Certainly this should not be registerable
  # Secondly, this should not be recoverable. Instead I should manually reset
  # the password from console should that be necessary. This prevents a
  # malicious entity from targeting the admin's emails
  # Finally, this should be trackable so that in case security is breeched, we
  # can do digital forensics
 
  devise :database_authenticatable, :trackable, :validatable, :rememberable
end

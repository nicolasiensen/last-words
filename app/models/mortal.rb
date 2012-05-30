class Mortal < ActiveRecord::Base
  attr_accessible :email, :first_name, :image, :last_name, :token, :uid

  def name
    "#{first_name} #{last_name}"
  end

  def self.find_or_create_from_auth_hash auth_hash
    mortal_hash = {
      :email => auth_hash[:info][:email], 
      :first_name => auth_hash[:info][:first_name], 
      :image => auth_hash[:info][:image],
      :last_name => auth_hash[:info][:last_name],
      :token => auth_hash[:credentials][:token],
      :uid => auth_hash[:uid]
    }
    Mortal.find_by_uid(mortal_hash[:uid]) || Mortal.create(mortal_hash)
  end
end

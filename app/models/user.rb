class User < CouchRest::Model::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  use_database @@CouchDB.default_database
  
  timestamps!

  view_by :name
  view_by :email

end

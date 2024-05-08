# frozen_string_literal: true

class User < ApplicationRecord
  # Associations
  has_many :properties, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

#------------------------------------------------------------------------------
# User
#
# Name                   SQL Type             Null    Primary Default
# ---------------------- -------------------- ------- ------- ----------
# id                     bigint               false   true              
# email                  character varying    false   false             
# encrypted_password     character varying    false   false             
# reset_password_token   character varying    true    false             
# reset_password_sent_at timestamp without time zone true    false             
# remember_created_at    timestamp without time zone true    false             
# created_at             timestamp without time zone false   false             
# updated_at             timestamp without time zone false   false             
#
#------------------------------------------------------------------------------

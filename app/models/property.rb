# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :user
end

#------------------------------------------------------------------------------
# Property
#
# Name        SQL Type             Null    Primary Default
# ----------- -------------------- ------- ------- ----------
# id          bigint               false   true
# cover_image character varying    true    false
# name        character varying    true    false
# amount      numeric              true    false
# user_id     bigint               true    false
# created_at  timestamp without time zone false   false
# updated_at  timestamp without time zone false   false
#
#------------------------------------------------------------------------------

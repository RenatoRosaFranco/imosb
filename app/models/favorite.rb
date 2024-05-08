# frozen_string_literal: true

class Favorite < ApplicationRecord
  belongs_to :user
end

#------------------------------------------------------------------------------
# Favorite
#
# Name             SQL Type             Null    Primary Default
# ---------------- -------------------- ------- ------- ----------
# id               bigint               false   true
# favoritable_id   integer              true    false
# favoritable_type character varying    true    false
# user_id          bigint               true    false
# created_at       timestamp without time zone false   false
# updated_at       timestamp without time zone false   false
#
#------------------------------------------------------------------------------

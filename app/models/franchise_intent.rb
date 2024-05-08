# frozen_string_literal: true

class FranchiseIntent < ApplicationRecord
  # Validations
  validates :first_name, :last_name, :email, :phone,
            :investor_profile, :investment_value, presence: true
end

#------------------------------------------------------------------------------
# FranchiseIntent
#
# Name             SQL Type             Null    Primary Default
# ---------------- -------------------- ------- ------- ----------
# id               bigint               false   true
# first_name       character varying    true    false
# last_name        character varying    true    false
# email            character varying    true    false
# phone            character varying    true    false
# investor_profile integer              true    false
# investment_value integer              true    false
# created_at       timestamp without time zone false   false
# updated_at       timestamp without time zone false   false
#
#------------------------------------------------------------------------------

# frozen_string_literal: true

class Contact
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :phone, :email, :message

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

  validates :name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :message, presence: true
end

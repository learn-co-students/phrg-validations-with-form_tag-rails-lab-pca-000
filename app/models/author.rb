# frozen_string_literal: true

class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, length: { is: 10 }
  validates :name, uniqueness: true
  validates :email, uniqueness: { message: "need unique email." }
end

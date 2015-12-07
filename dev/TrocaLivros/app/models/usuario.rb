require 'hashifiable'

class Usuario < ActiveRecord::Base
  extend Hashifiable
  hashify :nome, :email, :senha

  before_save { self.email = email.downcase }

  validates :termos_de_servico, acceptance: true
  validates :nome, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A[^@]+ @ (?:[^@\.]+ \.)+ [^@\.]+\z/ix }

  has_secure_password
end

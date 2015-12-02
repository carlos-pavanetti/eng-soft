require 'hashifiable'

class Usuario < ActiveRecord::Base
  extend Hashifiable
  hashify :nome, :email, :senha

  validates :nome, presence: true
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A[^@]+ @ (?:[^@\.]+ \.)+ [^@\.]+\z/ix }
  validates :senha, presence: true
end

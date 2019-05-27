class Abyence < ApplicationRecord
  belongs_to :Client
  belongs_to :insurer
  belongs_to :underwriter
end

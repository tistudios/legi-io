class ClientPolicy < ApplicationRecord
  belongs_to :client_name
  belongs_to :coverage_type
  belongs_to :insurer
  belongs_to :underwriter
end

class Human < ApplicationRecord
  # humenを見に行ってしまうので
  self.table_name = 'humans'
  include Char
end

class ToDoItem < ApplicationRecord

  belongs_to :destination, optional: true

end
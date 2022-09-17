module ApplicationHelper
  include Pagy::Frontend

  def button_classes
    "inline-flex my-2 items-center px-2.5 py-1.5 border border-transparent font-medium rounded shadow-sm hover:bg-primary hover:ring-2 hover:ring-offset-2 hover:ring-primary active:bg-primary active:ring-2 active:ring-offset-2 active:ring-primary"
  end
end

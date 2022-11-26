class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.all.order("name ASC")
  end

  def missing_email
    @customers = Customer.where(email: [nil, ""])
  end
end

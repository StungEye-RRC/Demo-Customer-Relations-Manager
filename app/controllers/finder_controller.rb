class FinderController < ApplicationController
  def index
    @page_title = 'All Customers'
    @customers = Customer.all
  end
  # The @customers variable will now be assessible from
  # the automatically loaded view: app/views/finder/index.html.erb
  
  def alphabetized
    @page_title = 'Alphabetized Customers'
    @customers = Customer.order(:full_name)
    render :index
  end
  
  def missing_email
    @page_title = 'Customers Missing Email Addresses'
    @customers = Customer.where(email_address: '')
    render :index
  end
end

class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  # The @customers variable will now be assessible from
  # the automatically loaded view: app/views/finder/index.html.erb
end

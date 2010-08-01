class Illustration2Controller < ApplicationController
  respond_to :html
  
  def illustrate2_default
    render :text => "John thinks we won't see this. I know otherwise."
  end
end

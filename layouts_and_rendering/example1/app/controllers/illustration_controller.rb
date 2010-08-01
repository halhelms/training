class IllustrationController < ApplicationController
  respond_to :html, :json, :xml
  
  def illustrate_render
    render :nothing => true
  end
  
  def illustrate_redirect_another_action
    redirect_to :action => "illustrate_default"
  end
  
  def illustrate_redirect_another_controller_another_action
    redirect_to :controller => "illustration2", :action => "illustrate2_default"
  end
  
  def illustrate_render_view_from_other_controller
    respond_to do |format|
      format.html{ render "/illustration2/illustrate2_default" }
      format.json{  render "/illustration2/illustrate2_default" }
    end
  end 
  
  def illustrate_render_pure_text
    render :text => "Why are we rendering pure text?"
  end
  
  def illustrate_render_file
    render :file => "sample_file.erb"
  end
  
  def illustrate_render_json
    render :json => request.parameters
  end
  
  def illustrate_render_xml
    render :xml => request.parameters
  end
  
  def illustratehtmljsonxml
    respond_to do |format|
      format.html{ render :action => "illustrate_default" }
      format.json{ render :json => request.parameters }
      format.xml { render :xml => request.parameters }
    end
  end
  
  def illustrate_default
    
  end
end

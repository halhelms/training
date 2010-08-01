class ExampleController < ApplicationController
  respond_to :html
  
  def display_request
    @request = {}
    @request['domain'] = request.domain
    @request['query_string'] = request.query_string
    @request['format'] = request.format
    @request['request_method'] = request.request_method
    @request['xhr?'] = request.xhr?
  end
  
  def simple_instance_variable
    @first_name = "Hal"
    @last_name = "Helms"
  end
  
  def array_instance_variable
    @favorites = []
    @favorites << "Porsche"
    @favorites << "Ferrari"
    @favorites << "Lamborghini"
  end

end

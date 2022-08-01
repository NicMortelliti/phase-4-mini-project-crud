class SpicesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# Private methods
private 

def render_not_found_response
  renders json: { error: 'Spice not found' }, status: :not_found
end

end

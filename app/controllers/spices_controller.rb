class SpicesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

# GET /spices
def index
  spices = Spice.all
  render json: spices
end

# POST /spices


# PATCH /spices/:id


# DELETE /spices/:id

# Private methods
private 

def render_not_found_response
  renders json: { error: 'Spice not found' }, status: :not_found
end

end

class WorldGameController < ApplicationController

  def game
    @start_time = Time.now
  end

  def score
    @start_time = params[:start_time]
    @end_time = Time.now
    @elapsed = @end_time - Time.parse(@start_time)
  end

end


# form_tag '/some_action' do
#     text_field_tag 'start_amount'
#     text_field_tag 'end_amount'
# end
# In your controller:

# def create
#     model = Model.new
#     model.pickupamount = params[:end_amount].to_i - params[:start_amount].to_i
#     model.save!
# end

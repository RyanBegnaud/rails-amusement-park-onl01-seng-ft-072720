class RidesController < ApplicationController 
    def create  
        ride = Ride.create(ride_params)
        note = ride.take_ride 
        redirect_to user_path(ride.user), flash: {note: note}
    end



    private 
    
    def ride_params
        params.require(:ride).permit(
        :user_id,
        :attraction_id
        )
    end
end
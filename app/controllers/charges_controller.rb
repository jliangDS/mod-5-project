require 'stripe'

class ChargesController < ApplicationController

    def create

        Stripe.api_key = 'sk_test_RpZ98JKJWMCKmQk2DniXQgM300vA67J48Y'

        begin
            Stripe::Charge.create({
                :amount => params[:amount],
                :currency => 'usd',
                :source => params[:payload][:token][:id]
            })
        rescue Stripe::CardError => e
            render json: { message: 'error'}
        end

    end
end

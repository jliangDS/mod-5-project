require 'stripe'

class ChargesController < ApplicationController

    def create

        Stripe.api_key = 'your_sk_test_key'

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

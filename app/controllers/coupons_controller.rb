class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def create
        
        @coupon = Coupon.new(coupon_code: params[:coupon_code],
            store: params[:store])
        @coupon.save
    end
end

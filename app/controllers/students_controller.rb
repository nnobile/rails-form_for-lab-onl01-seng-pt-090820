class StudentsController < ApplicationController

   def index
    @students = Coupon.all
  end

  def show
    @students = Coupon.find(params[:id])
  end

  def new
  end

  def create
      @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
      redirect_to coupon_path(@coupon)
  end

end

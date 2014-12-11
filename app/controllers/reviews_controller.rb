class ReviewsController < ApplicationController
  before_filter :load_provider
  
  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @provider.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to providers_path, notice: 'Review created succesfully'
    else
      render 'providers/show'
    end
  end

  def edit
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  
  def review_params
    params.require(:review).permit(:comment, :provider_id)
  end

  def load_provider
    @provider = Provider.find(params[:provider_id])
  end
end

class PasswordController < ApplicationController
  before_action :set_user_validate_only_rail, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @user_validate_only_rail.update(user_validate_only_rail_params)
        format.html { redirect_to @user_validate_only_rail, notice: 'User validate only rail was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_validate_only_rail }
      else
        format.html { render :edit }
        format.json { render json: @user_validate_only_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_validate_only_rail
      @user_validate_only_rail = UserValidateOnlyRail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_validate_only_rail_params
      params.require(:user_validate_only_rail).permit(:password)
    end
end

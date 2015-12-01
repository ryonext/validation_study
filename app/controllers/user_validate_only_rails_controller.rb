class UserValidateOnlyRailsController < ApplicationController
  before_action :set_user_validate_only_rail, only: [:show, :edit, :update, :destroy]

  # GET /user_validate_only_rails
  # GET /user_validate_only_rails.json
  def index
    @user_validate_only_rails = UserValidateOnlyRail.all
  end

  # GET /user_validate_only_rails/1
  # GET /user_validate_only_rails/1.json
  def show
  end

  # GET /user_validate_only_rails/new
  def new
    @user_validate_only_rail = UserValidateOnlyRail.new
  end

  # GET /user_validate_only_rails/1/edit
  def edit
  end

  # POST /user_validate_only_rails
  # POST /user_validate_only_rails.json
  def create
    @user_validate_only_rail = UserValidateOnlyRail.new(user_validate_only_rail_params)

    respond_to do |format|
      if @user_validate_only_rail.save
        format.html { redirect_to @user_validate_only_rail, notice: 'User validate only rail was successfully created.' }
        format.json { render :show, status: :created, location: @user_validate_only_rail }
      else
        format.html { render :new }
        format.json { render json: @user_validate_only_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_validate_only_rails/1
  # PATCH/PUT /user_validate_only_rails/1.json
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

  # DELETE /user_validate_only_rails/1
  # DELETE /user_validate_only_rails/1.json
  def destroy
    @user_validate_only_rail.destroy
    respond_to do |format|
      format.html { redirect_to user_validate_only_rails_url, notice: 'User validate only rail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_validate_only_rail
      @user_validate_only_rail = UserValidateOnlyRail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_validate_only_rail_params
      params.require(:user_validate_only_rail).permit(:name, :password)
    end
end

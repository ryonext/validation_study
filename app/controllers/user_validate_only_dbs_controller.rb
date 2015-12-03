class UserValidateOnlyDbsController < ApplicationController
  before_action :set_user_validate_only_db, only: [:show, :edit, :update, :destroy]

  # GET /user_validate_only_dbs
  # GET /user_validate_only_dbs.json
  def index
    @user_validate_only_dbs = UserValidateOnlyDb.all
  end

  # GET /user_validate_only_dbs/1
  # GET /user_validate_only_dbs/1.json
  def show
  end

  # GET /user_validate_only_dbs/new
  def new
    @user_validate_only_db = UserValidateOnlyDb.new
  end

  # GET /user_validate_only_dbs/1/edit
  def edit
  end

  # POST /user_validate_only_dbs
  # POST /user_validate_only_dbs.json
  def create
    @user_validate_only_db = UserValidateOnlyDb.new(user_validate_only_db_params)

    respond_to do |format|
      if @user_validate_only_db.save
        format.html { redirect_to @user_validate_only_db, notice: 'User validate only db was successfully created.' }
        format.json { render :show, status: :created, location: @user_validate_only_db }
      else
        format.html { render :new }
        format.json { render json: @user_validate_only_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_validate_only_dbs/1
  # PATCH/PUT /user_validate_only_dbs/1.json
  def update
    respond_to do |format|
      if @user_validate_only_db.update(user_validate_only_db_params)
        format.html { redirect_to @user_validate_only_db, notice: 'User validate only db was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_validate_only_db }
      else
        format.html { render :edit }
        format.json { render json: @user_validate_only_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_validate_only_dbs/1
  # DELETE /user_validate_only_dbs/1.json
  def destroy
    @user_validate_only_db.destroy
    respond_to do |format|
      format.html { redirect_to user_validate_only_dbs_url, notice: 'User validate only db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_validate_only_db
      @user_validate_only_db = UserValidateOnlyDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_validate_only_db_params
      params.require(:user_validate_only_db).permit(:name, :password)
    end
end

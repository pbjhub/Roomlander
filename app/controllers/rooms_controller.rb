class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, :only => [:create]


  # GET /rooms
  # GET /rooms.json
  def index
    if params[:landing]

      if params[:filter].blank?
      @rooms = Room.all.order(id: :desc)
      else
      @rooms = Room.where("location like ?", "%#{params[:filter]}%").order(id: :desc)
      end
  else
    @rooms= current_user.rooms
    end
    @pot = true
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
    @address = Geocoder.address([params[:latitude], params[:longitude]])
    #render json: @address
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
        format.js
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:price, :description, :home, :dep, :garage, :girls, :boys, :animals, :nanimals, :smoke, :nsmoke, :urgent, :quick, :bathroom, :servinc, :location, {images: []},:latitude, :longitude, :water, :light, :gas)
    end
end

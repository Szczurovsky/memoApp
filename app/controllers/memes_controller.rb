class MemesController < ApplicationController
  before_action :set_meme, only: %i[ show edit update destroy]
  before_action :authenticate_user!, only:[:new, :create]

  # GET /memes or /memes.json
  def index
    @memes = Meme.all
    @memeColl = Meme.first(5)
  end

  # GET /memes/1 or /memes/1.json
  def show
  end

  # GET /memes/new
  def new
    @meme = Meme.new
  end

  # GET /memes/1/edit
  def edit
  end

  def random
    # @randitem = @items[rand(items.count)]
     @randmeme = Meme.random_meme
     @testowo = false;
     gon.mem = @randmeme
     gon.testowo = true
     session[:sesja] = true
     gon.sesja = session[:sesja]
     session[:test] = gon.sesja


    @ratunku = cookies[:var]
  end

  def learn
    gon.memes = Meme.all
  end

  def learn_faster
    @number = rand.to_s[2..11]
    @slices = @number.scan(/.{2}/)
    @memes = Meme.where(title: @slices).group_by(&:title)
  end

  # POST /memes or /memes.json
  def create
    @meme = Meme.new(meme_params)

    respond_to do |format|
      if @meme.save
        format.html { redirect_to @meme, notice: "Meme was successfully created." }
        format.json { render :show, status: :created, location: @meme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memes/1 or /memes/1.json
  def update
    respond_to do |format|
      if @meme.update(meme_params)
        format.html { redirect_to @meme, notice: "Meme was successfully updated." }
        format.json { render :show, status: :ok, location: @meme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memes/1 or /memes/1.json
  def destroy
    @meme.destroy
    respond_to do |format|
      format.html { redirect_to memes_url, notice: "Meme was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meme
      @meme = Meme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meme_params
      params.require(:meme).permit(:title, :picture)
    end
    uploader = PictureUploader.new
end

class SavedQuotesController < ApplicationController
  before_action :set_saved_quote, only: [:show, :edit, :update, :destroy]

  # GET /saved_quotes
  # GET /saved_quotes.json
  def index
    @saved_quotes = SavedQuote.all
  end

  # GET /saved_quotes/1
  # GET /saved_quotes/1.json
  def show
  end

  # GET /saved_quotes/new
  def new
    @saved_quote = SavedQuote.new
  end

  # GET /saved_quotes/1/edit
  def edit
  end

  # POST /saved_quotes
  # POST /saved_quotes.json
  def create
    @saved_quote = SavedQuote.new(saved_quote_params)

    respond_to do |format|
      if @saved_quote.save
        format.html { redirect_to @saved_quote, notice: 'Saved quote was successfully created.' }
        format.json { render :show, status: :created, location: @saved_quote }
      else
        format.html { render :new }
        format.json { render json: @saved_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_quotes/1
  # PATCH/PUT /saved_quotes/1.json
  def update
    respond_to do |format|
      if @saved_quote.update(saved_quote_params)
        format.html { redirect_to @saved_quote, notice: 'Saved quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_quote }
      else
        format.html { render :edit }
        format.json { render json: @saved_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_quotes/1
  # DELETE /saved_quotes/1.json
  def destroy
    @saved_quote.destroy
    respond_to do |format|
      format.html { redirect_to saved_quotes_url, notice: 'Saved quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_quote
      @saved_quote = SavedQuote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_quote_params
      params.require(:saved_quote).permit(:user_id, :quote_id)
    end
end

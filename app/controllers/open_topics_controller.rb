class OpenTopicsController < ApplicationController
  before_action :set_open_topic, only: [:show, :edit, :update, :destroy]
  before_action :open_topic_number_new, only: [:new]

  # GET /open_topics
  # GET /open_topics.json
  def index
    @open_topics = OpenTopic.all
  end

  # GET /open_topics/1
  # GET /open_topics/1.json
  def show
  end

  # GET /open_topics/new
  def new
    @open_topic # hier keine Zuordnung mit "= OpenTopic.new" -> wird mit der before_action erledigt ;-)
  end

  # GET /open_topics/1/edit
  def edit
  end

  # POST /open_topics
  # POST /open_topics.json
  def create
    @open_topic = OpenTopic.new(open_topic_params)

    respond_to do |format|
      if @open_topic.save
        format.html { redirect_to @open_topic, notice: 'Open topic was successfully created.' }
        format.json { render :show, status: :created, location: @open_topic }
      else
        format.html { render :new }
        format.json { render json: @open_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_topics/1
  # PATCH/PUT /open_topics/1.json
  def update
    respond_to do |format|
      if @open_topic.update(open_topic_params)
        format.html { redirect_to @open_topic, notice: 'Open topic was successfully updated.' }
        format.json { respond_with_bip(@open_topic) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@open_topic) }
      end
    end
  end

  # DELETE /open_topics/1
  # DELETE /open_topics/1.json
  def destroy
    @open_topic.destroy
    respond_to do |format|
      format.html { redirect_to open_topics_url, notice: 'Open topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_topic
      @open_topic = OpenTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_topic_params
      params.require(:open_topic).permit(:shortlist, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint)
    end
    
    def open_topic_number_new
      @open_topic = OpenTopic.last
      if @open_topic == nil
        @open_topic = OpenTopic.new
        @open_topic.number = 1
      else
        @open_topic = OpenTopic.new
        @open_topic.number = OpenTopic.last[:number] += 1
      end
    end
end

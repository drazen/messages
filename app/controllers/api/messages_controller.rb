# NOTE: This scaffolding file was creaeted using rails_api generators invoked in a skeleton rails app created with --api only (rails_api gem)
module Api

  class MessagesController < ActionController::API
    include ActionController::Serialization

    before_action :set_message, only: [:show, :update, :destroy]

    # GET /messages
    def index
      # @messages = Message.all
      @messages = Message.paginate(page: params[:page], per_page: 10).most_recent

      render json: @messages
    end

    # GET /messages/1
    def show
      render json: @message
    end

    # POST /messages
    def create
      @message = Message.new(message_params)

      if @message.save
        render json: @message, status: :created, location: message_path(@message.id)
      else
        render json: @message.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /messages/1
    def update
      if @message.update(message_params)
        render json: @message
      else
        render json: @message.errors, status: :unprocessable_entity
      end
    end

    # DELETE /messages/1
    def destroy
      @message.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_message
        @message = Message.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def message_params
        params.permit(:body)
      end
  end

end

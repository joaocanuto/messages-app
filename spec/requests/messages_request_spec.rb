require 'rails_helper'

RSpec.describe "Messages", type: :request do
  message = Message.create(title: 'teste', body: 'teste')
  describe "GET /messages" do
    it "show mensages" do
      get messages_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /messages/:id" do
    it "show mensage" do
      get message_path(message)
      expect(response).to have_http_status(200)
    end
  end

end

require 'rails_helper'

RSpec.describe "ListControllers", type: :request do
  describe "get lists_path" do
    it "renders the index view" do
      FactoryBot.create_list(:list, 10)
      get lists_path
      expect(response.status).to eq(200)
    end
  end

  describe "get list_path" do
    it "renders the :show template" do
      list = FactoryBot.create(:list)
      get list_path(id: list.id)
      expect(response.status).to eq(200)
    end
    it "redirects to the index path if the customer id is invalid" do
      get list_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to lists_path
    end
  end

  describe "put list_path with valid data" do
    it "updates an entry and redirects to the show path for the list" do
      list = FactoryBot.create(:list)

      params = {
        list: {
          status: "Found"
        }
      }
      expect { put list_path(list.id), params: params }.to_not change(List, :count)
      list.reload
      expect(list.status).to eq("Found")
      expect(response).to redirect_to list_path(list.id)
    end
  end

  describe "delete a list record" do
    it "deletes a list record" do
      list = FactoryBot.create(:list)
      expect { delete list_path(list.id) }.to change(List, :count)
      expect(List.count).to eq(0)
    end
  end

  describe "put list_path with invalid data" do
    it "does not update the list record or redirect" do
      list = FactoryBot.create(:list)
      put list_path(id: list.id), params: {list: { status: 123}}
      list.reload
      expect(list.status).to_not eq(123)
      expect(response.status).to eq(302)
    end
  end
  
end

require 'rails_helper'

RSpec.describe "DogsControllers", type: :request do
  describe "get dogs_path" do
    it "renders the index view" do
      FactoryBot.create_list(:dog, 10)
      get dogs_path
      expect(response.status).to eq(200)
    end
  end

  describe "get dog_path" do
    it "renders the :show template" do
      dog = FactoryBot.create(:dog)
      get dog_path(id: dog.id)
      expect(response.status).to eq(200)
    end
    it "redirects to the index path if the customer id is invalid" do
      get dog_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to dogs_path
    end
  end

  describe "put customer_path with valid data" do
    it "updates an entry and redirects to the show path for the customer" do
      dog = FactoryBot.create(:dog)

      params = {
        dog: {
          first_name: "Cindy",
          last_name: "Mendes",
          phone: "1234567890",
          email: "test@example.com"
        }
      }
      expect { put dog_path(dog.id), params: params }.to_not change(Dog, :count)
      dog.reload
      expect(dog.first_name).to eq("Cindy")
      expect(response).to redirect_to dog_path(dog.id)
    end
  end

  describe "delete a dog record" do
    it "deletes a dog record" do
      dog = FactoryBot.create(:dog)
      expect { delete dog_path(dog.id) }.to change(Dog, :count)
      expect(Dog.count).to eq(0)
    end
  end

  describe "put dog_path with invalid data" do
    it "does not update the dog record or redirect" do
      dog = FactoryBot.create(:dog)
      put dog_path(id: dog.id), params: {dog: { phone: "123"}}
      dog.reload
      expect(dog.phone).to_not eq("123")
      expect(response.status).to eq(200)
    end
  end

end

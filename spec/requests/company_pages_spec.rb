require 'spec_helper'

describe "CompanyPages" do
  describe "GET /company_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get company_pages_index_path
      response.status.should be(200)
    end
  end
end

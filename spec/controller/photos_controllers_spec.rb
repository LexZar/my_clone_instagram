require "rails_helper"

RSpec.describe PhotosController, type: :controller do
  describe '#new' do
    subject {get :new}
    it {is_expected.to render_template(:new)}

    it "#new photo" do
      subject
      expect(assigns(:photo)).to be_a_new Photo
    end  
  end
end
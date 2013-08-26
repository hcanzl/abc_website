require "spec_helper"

describe UserMailer do
  before do
    @user = User.new(name: 'Foo Bar', email: 'foo@example.com',
          password: 'foobar', password_confirmation: 'foobar')
  end

  describe "signup_confirmation" do
    let(:mail) { UserMailer.signup_confirmation(@user) }

    it "renders the headers" do
      mail.subject.should eq("Sign Up Confirmation")
      mail.to.should eq([@user.email])
      mail.from.should eq(["sendtestproj@gmail.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("#{@user.name},\r\n\r\nThank you for signing up.\r\n")
    end
  end

end

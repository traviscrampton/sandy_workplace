require "rails_helper"

RSpec.describe SaleNotifier, type: :mailer do
  describe "sale" do
    let(:mail) { SaleNotifier.sale }

    it "renders the headers" do
      expect(mail.subject).to eq("Sale")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end

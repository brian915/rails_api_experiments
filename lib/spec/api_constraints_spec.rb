require 'spec_helper'

describe ApiConstraints do
  let(:api_constraints_v1) { ApiConstraints.new(version: 1) }
  let(:api_constraints_v2) { ApiConstraints.new(version: 2, default: true) }

  describe "matches?" do
    it "returns true when the version matches the 'Accept' header" do
      request = double(host: 'api.tutorial.dev',
                       headers: {"Accept" => "application/vnd.marketplace.v1"})
      api_constraints_v1.matches?(request).should_be_true
    end
    it "returns true when the default version is requested" do
      request = double(host: 'api.tutorial.dev')
      api_constraints_v2.matches?(request).should_be_true
    end
  end
end

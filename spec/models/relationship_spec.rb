require 'spec_helper'

describe Relationship do
  
  let(:follower) { create_user }
  let(:followed) { create_user email: 'followed@example.com' }
  let(:relationship) { follower.relationships.build(followed_id: followed.id) }

  subject { relationship }

  it { should be_valid }

  describe "follower methods" do
    it { should respond_to(:follower) }
    it { should respond_to(:followed) }
    its(:follower) { should eq follower }
    its(:followed) { should eq followed }
  end
end

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'publish' do
    it 'method which changes published to true' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      post.publish
      expect(post.published).to be true
    end
  end

  describe 'unpublish' do
    it 'method which changes published to false' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: true)
      post.unpublish
      expect(post.published).to be false
    end
  end
end

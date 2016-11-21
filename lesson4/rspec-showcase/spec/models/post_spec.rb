require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'publish' do
    it 'test method publish' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      post.publish
      expect(post.published).to be true
    end
  end

  describe 'unpublish' do
    it 'test method unpublish' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      post.publish
      post.unpublish
      expect(post.published).to be false
    end
  end
end

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #publish' do
    it 'changes published to true' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      put :publish, id: post.id
      post.publish
      expect(post.published).to be true
    end
  end

  describe 'GET #unpublish' do
    it 'changes published to false' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: true)
      put :unpublish, id: post.id
      post.unpublish
      expect(post.published).to be false
    end
  end
end

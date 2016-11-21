require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #publish' do
    it 'test action publish' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      get :publish, id: post.id
      post.publish
      expect(post.published).to be true
    end
  end

  describe 'GET #unpublish' do
    it 'test action unpublish' do
      post = Post.create!(id: 1, body: 'blabla', title: 'test', user_id: 1, published: false)
      get :publish, id: post.id
      post.publish
      get :unpublish, id: post.id
      post.unpublish
      expect(post.published).to be false
    end
  end
end

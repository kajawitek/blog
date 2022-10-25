# frozen_string_literal: true

require 'rails_helper'

describe PostPolicy do
  permissions :edit?, :update?, :destroy? do
    it "denies access if currently logged author isn't author of this post" do
      author1 = create(:author)
      author2 = create(:author)

      post = create(:post, author: author1)
      expect(described_class).not_to permit(author2, post)
    end

    it 'grants access if currently logged author is author of this post' do
      author = create(:author)
      post = create(:post, author: author)
      expect(described_class).to permit(author, post)
    end
  end
end

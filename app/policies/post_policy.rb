class PostPolicy < ApplicationPolicy
  attr_reader :author, :post

  def initialize(author, post)
    super
    @author = author
    @post = post
  end

  def update?
    author == post.author
  end

  def destroy?
    update?
  end
end

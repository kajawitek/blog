# frozen_string_literal: true

require 'rails_helper'

describe 'crud posts' do
  it 'allows author to create post' do
    author = create(:author)
    post = build(:post)

    login_as author
    visit root_path

    click_link 'New post'
    fill_in 'post[title]', with: post.title
    fill_in 'post[content]', with: post.content
    click_button 'Create Post'
    expect(page).to have_content 'Post was successfully created.'
    expect(page).to have_content post.title
    expect(page).to have_content post.content
  end

  it 'allows author to edit or destroy his post' do
    author = create(:author)
    post = create(:post, author: author)

    login_as author
    visit root_path

    click_link 'Edit'
    expect(page).to have_content post.title
    fill_in 'post[title]', with: 'New title'
    fill_in 'post[content]', with: 'New Content'
    click_button 'Update Post'
    expect(page).to have_content 'Post was successfully updated.'
    expect(page).to have_content 'New title'
    expect(page).to have_content 'New Content'

    page.accept_alert 'Are you sure?' do
      click_link 'Destroy'
    end
    expect(page).to have_content 'Post was successfully destroyed.'
  end

  it "doesn't allow author to to edit or destroy another author's post" do
    author1 = create(:author)
    author2 = create(:author)
    post = create(:post, author: author1)

    login_as author2
    visit root_path

    expect(page).to have_no_link 'Edit'
    expect(page).to have_no_link 'Destroy'

    click_link post.title
    expect(page).to have_no_link 'Edit'
    expect(page).to have_no_link 'Destroy'
  end
end

require 'spec_helper'

feature 'index' do
  before do
    visit '/'
  end

  scenario 'has the correct title header' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content /Apply to Makers Academy/i
    end
  end

  scenario 'has a paragraph in there too' do
    expect(page).to have_selector 'p#instructions'
  end
end

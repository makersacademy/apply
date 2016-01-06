require 'spec_helper'

feature 'index', js: true do
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

  scenario 'can complete the challenge' do
    save_and_open_page
    page.execute_script "Opal.compile('puts nil')"
    #page.execute_script "editor.setValue('name = \"Ben\"')"
    click_on '#run_code'
    expect(page).to have_content 'Hello Ben'
  end
end

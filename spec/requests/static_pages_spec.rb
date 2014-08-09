require 'spec_helper'


describe "StaticPages" do
	let (:base_title) { "Ruby on Rails Tutorial Sample App" }
	
	# let 'it' be 'page'
	subject { page }

	shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

	describe "Home page" do
		before { visit root_path }

		let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

		# it { should have_selector('h1', text: 'Sample App') }
    #it { should have_selector 'title', text: full_title('') }
		it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
	end

	describe "Help page" do
		before {visit help_path}

		let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

		it_should_behave_like "all static pages"

		# it { should have_selector('h1', text: 'Help') }
  
		# it "should have the content 'Help'" do
    #  visit help_path
    #  page.should have_selector('h1', :text => 'Help')
    # end
		
		# it { should have_selector('title', text: full_title('Help')) }
	end

	describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

		it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end

	describe "Contact page" do
		it "should have a heading 'Contact Us'" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact Us')
		end

		it "should have the title 'Contact Us'" do
			visit contact_path
			page.should have_selector('title', :text => "#{base_title} | Contact Us")
		end
	end
	
	# check whether the links in footer, header and on homepage
	# actually redirect user to the correct  page
	it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'title', text: full_title('')
  end
end

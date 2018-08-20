
Given(/^I add (.*) to my favorite on the (.*) section$/) do |video, section|
  @homepage.go_to_section(section)

  if video.eql? 'first_video'
    $first_video = @homepage.add_recommended_first_video_to_favorites
  elsif video.eql? 'second_video'
    $second_video = @homepage.add_recommended_second_video_to_favorites
  else
    raise 'Please check your video selection.'
  end
end

When(/^I go to my-video page$/) do
  @browser.goto(ENV['URI'] + '/my-videos')
  page_title = @browser.element(css: '.myVideosLayout__title')
  page_title.wait_until_present
  expect(page_title.text).to eql('My Videos')
end

Then(/^I should see (\w+) on my favorite list$/) do |video|
  @myvideopages.got_to_favorite_show_section

  if video.eql? 'first_videp'
    @myvideopages.validate_favorite_first_video
  elsif video.eql? 'second_video'
    @myvideopages.validate_favorite_second_video
  end


end

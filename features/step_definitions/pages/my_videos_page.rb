
class MyVideos
  def initialize(browser)
    @browser = browser
  end

  def got_to_favorite_show_section
    sub_title = @browser.element(css: '.localStorageCarousel__heading')
    sub_title.wait_until_present
    expect(sub_title.text).to eql('FAVORITE SHOWS')
    sub_title.wd.location_once_scrolled_into_view and @browser.send_keys :space
  end

  def validate_favorite_first_video
    @browser.element(xpath: '//*[@id="react-root"]/div/div[2]/div/div[2]/div/main/div/div[1]/section[4]/div/div/div/div[2]/div/div[2]/section/div[1]').hover
    show_name = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/div/main/div/div[1]/section[4]/div/div/div/div[2]/div/div[2]/section/div[3]/a/div/h3/div/span')
    expect(show_name.text).to eql($first_video)
  end

  def validate_favorite_second_video
    @browser.element(xpath: '//*[@id="react-root"]/div/div[2]/div/div[2]/div/main/div/div[1]/section[4]/div/div/div/div[2]/div/div[1]/section/div[1]').hover
    show_name = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/div/main/div/div[1]/section[4]/div/div/div/div[2]/div/div[1]/section/div[3]/a/div/h3/div/span')
    expect(show_name.text).to eql($second_video)
  end


  end

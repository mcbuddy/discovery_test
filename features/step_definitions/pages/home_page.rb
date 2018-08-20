
class HomePage
  def initialize(browser)
    @browser = browser
  end

  def go_to_section(section_name)
    @browser.elements(css: '.layout-section > h2').each do |elm|
      if section_name.include? elm.div.text
        elm.wd.location_once_scrolled_into_view
        @browser.send_keys :space
      end
    end
  end

  def add_recommended_first_video_to_favorites
    @browser.element(xpath: '//*[@id="react-root"]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[1]/section/div[1]').hover
    add_to_favorites = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[1]/section/div[3]/a/div/div[2]/span')
    add_to_favorites.wait_until_present
    expect(add_to_favorites.text).to eql('Add to Favorites')

    show_name = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[1]/section/div[3]/a/div/h3/div/span/span[1]').text

    plus_button = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[1]/section/div[3]/a/div/div[2]/div/span')
    plus_button.click

    return show_name
  end

  def add_recommended_second_video_to_favorites
    @browser.element(xpath: '//*[@id="react-root"]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[2]/section/div[1]').hover
    add_to_favorites = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[2]/section/div[3]/a/div/div[2]/span')
    add_to_favorites.wait_until_present
    expect(add_to_favorites.text).to eql('Add to Favorites')

    show_name = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[2]/section/div[3]/a/div/h3/div/span/span[1]').text

    plus_button = @browser.element(xpath: '/html/body/div[2]/div/div[2]/div/div[2]/main/section[4]/div/div/div[2]/div[1]/div[2]/section/div[3]/a/div/div[2]/div/span')
    plus_button.click

    return show_name
  end
end

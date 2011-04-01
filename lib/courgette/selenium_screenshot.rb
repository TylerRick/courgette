module Capybara
  class Session
    DSL_METHODS_EXTRA = [:take_screenshot]

    def take_screenshot(output)
      driver.take_screenshot(output)
    end
  end

  Session::DSL_METHODS_EXTRA.each do |method|
    class_eval <<-RUBY, __FILE__, __LINE__+1
            def #{method}(*args, &block)
                page.#{method}(*args, &block)
            end
    RUBY
  end
end

class Capybara::Driver::Selenium < Capybara::Driver::Base
  def take_screenshot(output)
    browser.save_screenshot(output)
  end
end

class Capybara::Driver::Base
  def take_screenshot(output)
    raise Capybara::NotSupportedByDriverError
  end
end

After('@selenium_screenshot') do |scenario|
  scenario_title = scenario.to_sexp[3]
  puts "Scenario supports: #{(scenario.to_sexp).inspect}\n"
  take_screenshot(File.join(Rails.root, 'public', 'courgette', 'screenshots', "#{scenario_title}.png"))
end




And /"(.*)" article is published$/ do |article|
  #  steps for creating new article
  steps %Q{
    When I am on the new article page
    And I fill in "article_title" with "#{article}"
    And I fill in "article__body_and_extended_editor" with "#{article} - Lorem Ipsum"
    And I press "Publish"
  }
end

Given /^I merge "(.*?)" article with "(.*?)"$/ do |article1, article2|
  steps %Q{
    When I follow "#{article1}"
    And I fill in "article_id" with "2"
    And press "Merge!"
  }
end

Then /^merged article should contain the text of both articles$/ do
  pending # express the regexp above with the code you wish you had
end


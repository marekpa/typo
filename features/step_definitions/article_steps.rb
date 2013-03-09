

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
	@art1 = Article.where(["title = ?", article1]).first
	@art2 = Article.where(["title = ?", article2]).first
  step %Q{I follow "#{article1}"}  
  steps %Q{ 
  	When I fill in "merge_with" with "#{@art2.id}"
		And I press "Merge!"
	}	
end

Then /^merged article should contain the text of both articles$/ do
#  p @art1
#  p @art2
  steps %Q{ 
	  Then I should see "#{@art1.body}"
  	And I should see "#{@art2.body}"
	}
end


And /"(.*)" category is created$/ do |category|
  #  steps for creating new category
  steps %Q{
    When I am on the new category page
    And I fill in "category_name" with "#{category}"
    And I fill in "category_keywords" with "#{category} - keywords"
    And I fill in "category_description" with "#{category} - description"
    And I press "Save"
  }
end


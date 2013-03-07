

And /"(.*)" article is published$/ do |article|
  #  steps for creating new article
  step %Q{I am on the new article page}
  step %Q{I fill in "article_title" with "#{article}"}
  step %Q{I fill in "article__body_and_extended_editor" with "#{article} - Lorem Ipsum"}
  step %Q{I press "Publish"}
end


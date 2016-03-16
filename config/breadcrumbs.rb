crumb :root do
  link "Blog", root_path
end

crumb :posts do
  link "Posts", posts_path
end

crumb :post do |post|
  link post.title, posts_path(post)
  parent :posts
end

crumb :tags do
  link "Tags", tags_path
end

crumb :tag do |tag|
  link tag.name, tags_path(tag)
  parent :tag
end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
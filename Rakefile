desc 'Running Jekyll with --server --auto option'
task :dev do
  system('jekyll --server --auto')
end

desc 'Rebuild site with Jekyll'
task :generate do
  system('jekyll')
  system('git add -A')
  system('git commit -m "Committing latest jekyll build"')
end

desc 'Deploy to Heroku'
task :deploy do
    system('git push heroku master')
end

desc "Given the arguments, create a new post file in _drafts"
task :draft, [:title] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\&/, '').gsub(/\s/, '-').gsub(/---/, '-').gsub(/--/, '-').downcase}.md"
  path = File.join("_drafts", filename)
  if File.exist? path; raise RuntimeError.new("FILE EXISTS at #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title.sub(/[&]/, 'and')}
permalink: /#{args.title.gsub(/\&/, '').gsub(/\s/, '-').gsub(/---/, '-').gsub(/--/, '-').downcase}/
category: blog
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
published: true
---



Body Text

EOS
    end
    puts "Here's the path to your draft: #{path}"
end
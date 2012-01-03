desc "Given a title as an argument, create a new post file"
task :write, [:title] do |t, args|
  puts args
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '-').downcase}.textile"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
tags:
 - first
 - another tag
---
EOS
    end
    puts "Now open #{path} in an editor."
end

desc "clean output in _site"
task :clean do
  sh "cd _site && rm -r *"
  puts "Site output cleaned"
end

desc "start development"
task :dev do
  sh "jekyll --server --auto"
end

desc "generate the site"
task :default do
  sh "jekyll"
end

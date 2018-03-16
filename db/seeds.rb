require 'random_data'

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

#Create Unique Post
Post.find_or_create_by!(title: 'Unique Title', body: 'Unique Body')

posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Comment with unique body
Comment.find_or_create_by!(body: 'So unique!')

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

script/rails generate cucumber:skeleton

# The command modified config/database.yml, update example
cp config/database.yml{,.example}

git add .
git commit -m 'Add cucumber skeleton'

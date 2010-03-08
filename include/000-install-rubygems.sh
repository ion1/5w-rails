mkdir -p /tmp/src/rubygems
cd /tmp/src/rubygems

# http://rubygems.org/pages/download
wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.6.tgz

tar zxf rubygems-1.3.6.tgz
cd rubygems-1.3.6

export GEM_HOME="$HOME/.gem/ruby/1.9.1"
export PATH="$PATH:$GEM_HOME/bin:$HOME/.gem/rubygems/bin"
export RUBYLIB="$HOME/.gem/rubygems/lib"

ruby1.9.1 setup.rb --prefix="$HOME/.gem/rubygems"

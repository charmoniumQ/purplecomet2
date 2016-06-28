sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger jessie main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git-core bison gcc curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nginx-extras passenger nodejs

sudo ln -s `which nodejs` /bin/node # TODO: is this really necessary

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

rbenv install 2.3.1
rbenv global 2.3.1

gem install bundler --no-ri --no-rdoc

rbenv rehash

echo "Go uncomment a line in /etc/nginx/nginx.conf"
echo "And have a look at /etc/nginx/passenger.conf"
echo "And /etc/nginx/sites-enabled/default"
echo "And press ENTER"
read

ssh-keygen -t rsa -b 4096 -C "sag150430@utdallas.edu" -f "/home/admin/.ssh/bitbucket" -N ""
cat ~/.ssh/bitbucket.pub
touch ~/.ssh/config
printf "Host bitbucket.org\nIdentityFile ~/.ssh/bitbucket\n" >> ~/.ssh/config

echo "Add the ssh key in bitbucket"
echo "And press ENTER"
read

git clone git@bitbucket.org:purple_comet/purple-comet-2.git ~/purple-comet-2
cd ~/purple-comet-2
bundle install --without production test
#sudo systemctl restart nginx
#RAILS_ENV=production SECRET_KEY_BASE=`rake secret` bundle exec rails server

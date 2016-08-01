# README

## How to use Vagrant

Install Vagrant for VirtualBox from official website.

Run Vagrant in project directory:
```
vagrant up
```

Connect to SSH in Vagrant:
```
vagrant ssh
```

Switch to actual Ruby version with RVM (version specified in `ansible-vagrant/playbook.yml`):
```
rvm use 2.2.3
```

Change dir to /vagrant:
```
chdir /vagrant
```

Install required gems:
```
bundle install
```

Prepare database:
```
bundle exec db:create
bundle exec db:migrate
bundle exec db:seed
```

Run Rails server:
```
bundle exec rails s --binding=0.0.0.0
```

Open your browser and navigate to `http://192.168.40.12:3000` to use application. Enjoy! :-)


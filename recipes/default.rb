#
# Cookbook:: mongodb_V4_ubuntu18
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

bash 'install_mongod' do
  user 'root'
  code <<-EOH
  wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
  echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
  sudo apt-get update
  sudo apt-get install -y mongodb-org=4.2.2 mongodb-org-server=4.2.2 mongodb-org-shell=4.2.2 mongodb-org-mongos=4.2.2 mongodb-org-tools=4.2.2
  sudo systemctl restart mongod
  sudo systemctl enable mongod.service
  EOH
end

class Chef::Recipe
    # mix in recipe helpers
    include Chef::RubyBuild::RecipeHelpers
end

app_dir = node['rails-lastmile']['app_dir']

rbenv_ruby "1.9.3-p194" do
  user 'vagrant'
end

rbenv_global "1.9.3-p194" do
  user 'vagrant'
end

['bundler',
 'rack',
 'pg',
 'sinatra',
 'heroku',
 'vacuum',
 'jquery-rails',
 'thin',
 'foreman',
 'sqlite3',
 'mongoid',
 'devise',
 'carrierwave',
 'redis'].each do |gem|
  rbenv_gem gem do
     user 'vagrant'
  end
end

['rails', '3.2.6',
 'sass-rails', '3.2.3',
 'coffee-rails', '3.2.1',
 'uglifier', '1.0.3'
].each_slice(2) do |gem, version_number|
  rbenv_gem gem do
    user 'vagrant'
    version version_number
  end
end

rbenv_rehash "Rehashing rbenv" do
  user  "vagrant"
end

directory "/home/#{node['user']['name']}/.vim" do
  owner node['user']['name']
  group node['user']['name']
end

directory "/home/#{node['user']['name']}/.vim/colors" do
  owner node['user']['name']
  group node['user']['name']
end

template "/home/#{node['user']['name']}/.vim/colors/vividchalk.vim" do
  source "vividchalk.vim"
  owner node['user']['name']
  group node['user']['name']
end

template "/home/#{node['user']['name']}/.vimrc" do
  source ".vimrc"
  owner node['user']['name']
  group node['user']['name']
end

template "/home/#{node['user']['name']}/.gemrc" do
  source ".gemrc"
  owner node['user']['name']
  group node['user']['name']
end

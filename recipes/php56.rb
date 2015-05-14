include_recipe "remi::base"

# add remi-php56 repository
yum_repository 'remi-php56' do
  description 'Les RPM de Remi PHP56 - Repository'

  if platform_family?('rhel') && node['platform_version'].to_i == 7 then
    mirrorlist 'http://rpms.famillecollet.com/enterprise/7/php56/mirror'
  elsif platform_family?('rhel') && node['platform_version'].to_i == 6 then
    mirrorlist 'http://rpms.famillecollet.com/enterprise/6/php56/mirror'
  end


  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  fastestmirror_enabled true
  enabled false
  action :create
end

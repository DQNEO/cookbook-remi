include_recipe "remi::base"

# add remi-php56 repository
yum_repository 'remi-php56' do
  description 'Les RPM de Remi PHP56 - Repository'
  mirrorlist 'http://rpms.famillecollet.com/enterprise/6/php56/mirror'
  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  fastestmirror_enabled true
  enabled false
  action :create
end

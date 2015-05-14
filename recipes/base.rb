# add remi repository
include_recipe "yum-epel"

yum_repository 'remi' do
  description 'Les RPM de Remi - Repository'

  if platform_family?('rhel') && node['platform_version'].to_i == 7 then
    mirrorlist 'http://rpms.famillecollet.com/enterprise/7/remi/mirror'
  elsif platform_family?('rhel') && node['platform_version'].to_i == 6 then
    mirrorlist 'http://rpms.famillecollet.com/enterprise/6/remi/mirror'
  end

  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  fastestmirror_enabled true
  enabled false
  action :create
end

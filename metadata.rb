name 'yum_mesosphere'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'apache2'
description 'Installs/Configures yum_mesosphere'
long_description 'Installs/Configures yum_mesosphere'
version '0.1.0'

depends 'yum', '~> 3.0'

%w(redhat centos scientific).each do |platform|
  supports platform, '~> 6.0'
end

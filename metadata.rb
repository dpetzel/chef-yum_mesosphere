name 'yum_mesosphere'
maintainer 'David Petzel'
maintainer_email 'davidpetzel@gmail.com'
license 'apache2'
description 'Installs/Configures yum_mesosphere'
long_description 'Installs/Configures yum_mesosphere'
version '1.0.0'

depends 'yum', '~> 3.0'

%w(redhat centos scientific).each do |platform|
  supports platform, '~> 6.0'
end

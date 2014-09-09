name             'ninefold_docker'
maintainer       'Ninefold Pty Limited'
maintainer_email 'warren@ninefold.com'
license          'All rights reserved'
description      'Installs/Configures ninefold_docker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.5'

depends 'apt', '2.2.0'
depends 'docker-registry'
depends 'docker'

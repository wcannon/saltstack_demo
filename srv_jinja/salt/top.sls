base:
  '*':
    - users

  'os:ubuntu':
    - match: grain
    - webserver_ubuntu

  'os:centos':
    - match: grain
    - webserver_centos

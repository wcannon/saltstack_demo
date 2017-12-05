base:
  '*':
    - users

  'os:ubuntu':
    - match: grain
    - webserver

  'os:centos':
    - match: grain
    - webserver

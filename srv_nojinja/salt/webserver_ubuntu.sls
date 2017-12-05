apache:
  pkg.installed:
    - name: apache2
  group.present:
    - name: www-data
    - system: True
  user.present:
    - name: www-data
    - gid: www-data
    - system: True

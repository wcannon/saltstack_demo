# grain
{% set os = grains.get('os', '') %}
{% if os == 'Ubuntu': %}
    {% set pkg_name = 'apache2' %}
    {% set username = 'www-data' %}
    {% set groupname = 'www-data' %}
{% elif os == 'CentOS': %}
    {% set pkg_name = 'httpd' %}
    {% set username = 'apache' %}
    {% set groupname = 'apache' %}
{% else: %}
    {% set pkg_name = 'oops' %}
    {% set username = 'oops' %}
    {% set groupname = 'oops' %}
{% endif %}

apache:
  pkg.installed:
    - name: {{pkg_name}}
  group.present:
    - name: {{groupname}}
    - system: True
  user.present:
    - name: {{username}}
    - gid:  {{username}}
    - system: True

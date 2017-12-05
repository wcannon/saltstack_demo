# grain
{% set os = grains.get('os', '') %}
{% if os == 'ubuntu': %}
    {% set pkg_name = 'apache2' %}
    {% set username = 'www-data' %}
    {% set groupname = 'www-data' %}
{% elif os == 'centos': %}
    {% set pkg_name = 'httpd' %}
    {% set username = 'web' %}
    {% set groupname = 'web' %}
{% else: %}
    {% set pkg_name = 'oops' %}
    {% set username = 'oops' %}
    {% set groupname = 'oops' %}

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

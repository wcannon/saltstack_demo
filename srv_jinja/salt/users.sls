{% set users = pillar.get('users', []) %}

{% for username in users %}
user-{{username}}:
 user.present:
   - name: {{username}}
   - shell: /bin/bash
   - home:   /home/{{username}}
{% endfor %}

apache_web_server:
 pkg:
   - name: apache2
   - installed
 service.running:
   - name: apache2
   - enabled: True

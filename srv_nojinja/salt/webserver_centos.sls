httpd_web_server:
 pkg:
   - name: httpd
   - installed
 service.running:
   - name: httpd
   - enabled: True

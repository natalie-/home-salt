dhcpd:
  pkg.installed:
    - name: isc-dhcp-server
  service.running:
    - name: dhcpcd
    - enable: True
    - reload: True
    - watch:
      - file: /etc/dhcp/dhcpd.conf
      - file: /etc/default/isc-dhcp-server
      - pkg: isc-dhcp-server
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://dhcp/dhcpd.conf
    - mode: 644
    - user: root
    - group: root

dhcp-server:
  file.managed:
    - name: /etc/default/isc-dhcp-server
    - source: salt://dhcp/isc-dhcp-server
    - mode: 644
    - user: root
    - group: root

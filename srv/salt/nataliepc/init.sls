qemu:
  file.managed:
    - name: /etc/libvirt/qemu.conf
    - source: salt://nataliepc/qemu.conf
    - mode: 644
    - user: root
    - group: root

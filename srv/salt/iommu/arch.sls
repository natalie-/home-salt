grub:
  file.managed:
    - name: /etc/default/grub
    - source: salt://iommu/grub
    - mode: 644
    - user: root
    - group: root
    - onchanges:
      - cmd.run: grub-mkconfig -o /boot/grub/grub.cfg

vfio-pci-override:
  file.managed:
    - name: /sbin/vfio-pci-override.sh
    - source: salt://iommu/vfio-pci-override.sh
    - mode: 755
    - user: root
    - group: root

mkinitcpio:
  file.managed:
    - name: /etc/mkinitcpio.conf
    - source: salt://iommu/mkinitcpio.conf
    - mode: 644
    - user: root
    - group: root
    - onchanges:
      - cmd.run: mkinitcpio -p linux-vfio

modprobe-d:
  file.recurse:
    - name: /etc/modprobe.d
    - source: salt://iommu/modprobe.d/
    - dir_mode: '0755'
    - file_mode: 644
    - user: root
    - group: root

pulseaudio:
  file.managed:
    - name: /etc/pulse/default.pa
    - source: salt://iommu/pulse/default.pa
    - mode: 644
    - user: root
    - group: root

iommu-group:
  file.managed:
    - name: /sbin/iommu-group
    - source: salt://iommu/iommu-group.sh
    - mode: 755
    - user: root
    - group: root

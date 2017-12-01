root:
  user.present:
    - shell: /bin/bash
    - home: /root
    - password: {{ pillar['passwd']['root'] }}
    - enforce_password: True

root-bashrc:
  file.managed:
    - name: /root/.bashrc
    - source: salt://users/root/.bashrc
    - mode: 644
    - user: root
    - group: root

root-bash_profile:
  file.managed:
    - name: /root/.bash_profile
    - source: salt://users/root/.bash_profile
    - mode: 644
    - user: root
    - group: root

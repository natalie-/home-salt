natalie:
  user.present:
    - fullname: Natalie Somersall
    - shell: /bin/bash
    - home: /home/natalie
    - optional_groups:
      - wheel
      - wireshark
      - docker
      - libvirt
      - kvm
      - sudo
    - password: {{ pillar['passwd']['natalie'] }}
    - enforce_password: True

natalie-bashrc:
  file.managed:
    - name: /home/natalie/.bashrc
    - source: salt://users/natalie/.bashrc
    - mode: 644
    - user: natalie
    - group: natalie

natalie-bash_profile:
  file.managed:
    - name: /home/natalie/.bash_profile
    - source: salt://users/natalie/.bash_profile
    - mode: 644
    - user: natalie
    - group: natalie

natalie-conkyrc:
  file.managed:
    - name: /home/natalie/.conkyrc
    - source: salt://users/natalie/.conkyrc
    - mode: 644
    - user: natalie
    - group: natalie

natalie-gitconfig:
  file.managed:
    - name: /home/natalie/.gitconfig
    - source: salt://users/natalie/.gitconfig
    - mode: 644
    - user: natalie
    - group: natalie

natalie-gitignore:
  file.managed:
    - name: /home/natalie/.gitignore_global
    - source: salt://users/natalie/.gitignore_global
    - mode: 644
    - user: natalie
    - group: natalie

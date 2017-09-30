Ansible Role: SonarQube ([lrk.sonarqube](https://galaxy.ansible.com/lrk/sonarqube/))
=========
[![Build Status](https://travis-ci.org/lrk/ansible-role-sonarqube.svg?branch=master)](https://travis-ci.org/lrk/ansible-role-sonarqube)

An Ansible Role that install [SonarQube](https://www.sonarqube.org).

Supported OSes
--------------
- Centos 7

Requirements
------------

[SonarQube requirements](https://docs.sonarqube.org/display/SONAR/Requirements) are:
- Oracle JRE 8 onwards or OpenJDK 8 onwards installed on your machine.


Role Variables
--------------

Available variables along with default values are listed below (see `defaults/main.yml`)

```yml
---
  #See defaults/main.yml content
```

Dependencies
------------

- [geerlingguy.java](https://galaxy.ansible.com/geerlingguy/java/)


Example Playbook
----------------

    - hosts: servers
      roles:
         - lrk.sonarqube

License
-------

Apache License Version 2.0

References
----------

- [SonarQube Documentation](https://docs.sonarqube.org/display/SONAR/Documentation)

Author Information
------------------

This role was created by [Lrk](https://github.com/lrk).

redmine_force_issues_private
============================

Quick and dirty plugin to mark issues private by default in certain projects

Configuration is done by simply adding a private_by_default_projects entry in
your config/configuration.yml

default:
  ....
  private_by_default_projects:
  - project1
  - project2
  - project3


TODO:
------

- move from the config/configuration.yml to something that can be changed via
  the webui

License
--------

MIT - see license file

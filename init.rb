# vim: set sw=2 sts=2 et tw=80 :
require 'redmine'
require 'redmine_force_issues_private'

Redmine::Plugin.register :redmine_force_issues_private do
  name 'Redmine Force issues to be private'
  author 'Marcus Rueckert'
  description 'Redmine Force issues to be privat by default'
  version '0.0.1'
  url ''
  author_url ''

  requires_redmine :version_or_higher => '2.3.1'
end

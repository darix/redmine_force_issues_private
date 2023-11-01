# vim: set sw=2 sts=2 et tw=80 :

require_dependency 'issue'

module RedmineForceIssuesPrivate
  module Hooks
    class ModelIssueHook < Redmine::Hook::ViewListener
      def controller_issues_new_before_save(context={})
        if context[:params] and context[:params][:project_id] and Redmine::Configuration['private_by_default_projects'] and Redmine::Configuration['private_by_default_projects'].include? context[:params][:project_id]
          Rails.logger.info "Project for issue matches the private_by_default_projects list, marking issue as private #{context[:params][:project_id]}"
          context[:issue].is_private = true
        end
      end
    end
  end
end

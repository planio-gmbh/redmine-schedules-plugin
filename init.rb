require 'redmine'
require 'holidays'
$holiday_locale = 'de'   # Set this to the same region (or subregion if appropriate)

require_dependency 'schedule_compatibility'

Redmine::Plugin.register :redmine_schedules do
    name 'Redmine Schedules plugin'
    author 'Brad Beattie'
    description 'Allocate users to projects and track allocation over time.'
    url 'https://github.com/bradbeattie/redmine-schedules-plugin'
    version '0.6.0'
    requires_redmine :version_or_higher => '3.1.0'

    project_module :schedule_module do
        permission :view_schedules,  {:schedules => [:index]}, :require => :member
        permission :edit_own_schedules, {:schedules => [:edit, :user, :project]}, :require => :member
        permission :edit_all_schedules, {}, :require => :member
    end

    menu :top_menu, :schedules, { :controller => 'schedules', :action => 'my_index', :project_id => nil, :user_id => nil }, :after => :my_page, :caption => :label_schedules_my_index, :if => Proc.new { SchedulesController.visible_projects.size > 0 }
    menu :top_menu, :all_schedules, { :controller => 'schedules', :action => 'index', :project_id => nil, :user_id => nil }, :after => :projects, :caption => :label_global_schedule, :if => Proc.new { SchedulesController.edit_all_projects.size > 0 }
    menu :project_menu, :schedules, { :controller => 'schedules', :action => 'index' }, :caption => :label_schedules_index, :after => :activity, :param => :project_id
end

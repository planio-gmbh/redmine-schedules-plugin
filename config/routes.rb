ActionController::Routing::Routes.draw do |map|
  map.with_options(:controller => 'schedules') do |map|
    map.connect 'projects/:project_id/schedules', :action => 'index' 
    map.connect 'projects/:project_id/schedules/edit', :action => 'edit' 
    map.connect 'projects/:project_id/schedules/report', :action => 'report' 
    map.connect 'projects/:project_id/schedules/details', :action => 'details'
    map.connect 'projects/:project_id/schedules/fill', :action => 'fill' 

    map.connect 'schedules', :action => 'index' 
    map.connect 'schedules/report', :action => 'report' 
    map.connect 'schedules/users', :action => 'users' 
    map.connect 'schedules/projects', :action => 'projects' 
    map.connect 'schedules/details', :action => 'details'

    map.connect 'account/schedule/:user_id', :action => 'index'
    map.connect 'account/schedule/:user_id/edit', :action => 'edit'
    map.connect 'account/schedule/:user_id/default', :action => 'default'

    map.connect 'my/schedule', :action => 'my_index'
  end
end

RedmineApp::Application.routes.draw do
  match 'schedules' 					,:to => 'schedules#index',		 	via: [:get, :post]
  match 'schedules/users'				,:to => 'schedules#users', 		 	via: [:get, :post]
  match 'schedules/projects' 				,:to => 'schedules#projects', 			via: [:get, :post]
  match 'my/schedule' 					,:to => 'schedules#my_index', 			via: [:get, :post]
  match 'account/schedule/:user_id'	 		,:to => 'schedules#index',		 	via: [:get, :post]
  match 'account/schedule/:user_id/default'	 	,:to => 'schedules#default', 		 	via: [:get, :post]
  match 'account/schedule/:user_id/edit' 		,:to => 'schedules#edit', 		 	via: [:get, :post]
  match 'projects/:project_id/schedules' 		,:to => 'schedules#index', 			via: [:get, :post]
  match 'projects/:project_id/schedules/details'	,:to => 'schedules#details',			via: [:get, :post]
  match 'projects/:project_id/schedules/edit' 		,:to => 'schedules#edit', 			via: [:get, :post]
  match 'projects/:project_id/schedules/fill' 		,:to => 'schedules#fill', 			via: [:get, :post]
end

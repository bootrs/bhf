require 'haml'
require 'kaminari'

module Bhf
  class Engine < Rails::Engine

    # Config defaults
    config.page_title = nil
    config.mount_at = 'bhf'
    config.on_login_fail = :root_url
    config.logout_path = :logout_path
    config.session_auth_name = :is_admin
    config.session_account_id = :admin_account_id
    config.account_model = 'User'
    config.account_model_find_method = 'find'
    config.css = []
    
    config.routes = lambda {}

    
    config.remove_default_routes = false
    
    # config.bhf_logic = YAML::load(IO.read('config/bhf.yml'))

  end
end

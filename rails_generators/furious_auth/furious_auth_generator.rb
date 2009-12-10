class FuriousAuthGenerator < Rails::Generator::Base
  def intialize
  end

  def manifest
    record do |m|
      # directories
      m.directory("app/controllers")
      m.directory("app/models")
      m.directory("app/views")
      m.directory("app/views/user_sessions")
      m.directory("app/views/users")
      m.directory("db/migrate")

      # controllers
      m.file "users_controller.rb", "app/controllers/users_controller.rb"
      m.file "user_sessions_controller.rb", "app/controllers/user_sessions_controller.rb"
      m.file "application_controller.rb", "app/controllers/application_controller.rb"

      # models
      m.file "user.rb", "app/models/user.rb"
      m.file "user_session.rb", "app/models/user_session.rb"

      # views
      m.file "views/user_sessions/new.rb", "app/views/user_sessions/new.html.haml"
      ['_form', 'new', 'edit', 'show'].each do |fname|
        m.file "views/users/#{fname}.rb", "app/views/users/#{fname}.html.haml"
      end

      # database migrations
      m.migration_template "create_users.rb", "db/migrate", { :migration_file_name => "create_authlogic_users" }

      # routes
      m.route_resources "users"
      m.route_resource  "user_session"
      m.route :name => "register", :controller => "users", :action => "new"
      m.route :name => "logout", :controller => "user_sessions", :action => "destroy"
      m.route :name => "login", :controller => "user_sessions", :action => "new"
      m.route :name => "settings", :controller => "settings", :action => "index"
      m.route :name => "account", :controller => "users", :action => 'show'

      # required gems
      m.gem :name => 'authlogic'
    end
  end

end

module Rails
  module Generator
    module Commands
      class Base
        def resource_route_code(*resources)
          resource_list = resources.map { |r|}.join(', ')
          code = "map.resource #{resource_list}"
        end

        def route_code(route_options)
          code = "map.#{route_options[:name]} '#{route_options[:name]}', :controller => '#{route_options[:controller]}'"
          code += ", :action => '#{route_options[:action]}'" unless route_options[:action].nil?

          code
        end

        def gem_code(gem_options)
          code = "config.gem '#{gem_options[:name]}'"
          code += ", :lib => '#{gem_options[:lib]}'" unless gem_options[:lib].nil?
          code += ", :version => '#{gem_options[:version]}'" unless gem_options[:version].nil?
          code
        end

      end

      class Create
        def route(route_options)
          sentinel = 'ActionController::Routing::Routes.draw do |map|'
          logger.route route_code(route_options)
          gsub_file 'config/routes.rb', /(#{Regexp.escape(sentinel)})/mi do |m|
            "#{m}\n  #{route_code(route_options)}\n"
          end
        end

        def gem(gem_options)
          # Rails::Initializer.run do |config|
          sentinel = 'Rails::Initializer.run do |config|'
          logger.gem gem_code(gem_options)
          gsub_file 'config/environment.rb', /(#{Regexp.escape(sentinel)})/mi do |m|
            "#{m}\n  #{gem_code(gem_options)}\n"
          end
        end

        def route_resource(*resources)
          sentinel = 'ActionController::Routing::Routes.draw do |map|'

          logger.route "#{resource_route_code(resources)}"
          unless options[:pretend]
            gsub_file 'config/routes.rb', /(#{Regexp.escape(sentinel)})/mi do |match|
              "#{match}\n #{resource_route_code(resources)}\n"
            end
          end
        end
      end

      class Destroy
        def route(route_options)
          logger.remove_route route_code(route_options)
          to_remove = "\n  #{route_code(route_options)}"
          gsub_file 'config/routes.rb', /(#{to_remove})/mi, ''
        end

        def gem(gem_options)
          logger.remove_gem gem_code(gem_options)
          to_remove = "\n  #{gem_code(gem_options)}"
          gsub_file 'config/environment.rb', /(#{to_remove})/mi, ''
        end

        def route_resource(*resources)
          logger.remove_route resource_route_code(resources)
          to_remove = "\n  #{resource_route_code(resources)}"
          gsub_file 'config/routes.rb', /(#{to_remove})/mi, ''
        end

      end


    end
  end
end

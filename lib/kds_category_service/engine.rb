module KdsCategoryService
  class Engine < ::Rails::Engine
    isolate_namespace KdsCategoryService
    config.autoload_paths << "#{config.root}/app/interactors"
  end
end

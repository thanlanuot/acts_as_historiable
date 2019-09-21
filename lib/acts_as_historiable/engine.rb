module ActsAsHistoriable
  class Engine < ::Rails::Engine
    isolate_namespace ActsAsHistoriable

    config.generators do |generators|
      generators.test_framework :rspec
      generators.fixture_replacement :factory_bot
      generators.factory_bot dir: 'spec/factories'
    end
  end
end

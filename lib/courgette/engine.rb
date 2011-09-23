module Courgette
  class Engine < Rails::Engine
    initializer 'courgette.symlink_assets' do |app|
      command = "ln -s #{config.root}/public/courgette #{Rails.root}/public/courgette"
      #puts command
      system command unless File.exist? "#{Rails.root}/public/courgette"
    end
  end
end

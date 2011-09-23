module Courgette
  class Engine < Rails::Engine
    initializer 'courgette.symlink_assets' do |app|
      command = "ln -s --no-target-directory #{config.root}/public/courgette #{Rails.root}/public/courgette 2>/dev/null"
      #puts command
      system command #unless File.exist? "#{Rails.root}/public/courgette"
    end
  end
end

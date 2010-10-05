unless File.exists?( File.join(RAILS_ROOT, 'public', 'courgette') )
  raise "cant not find courgette public assets, pls read the plugin README.rdoc to learn how to add symlink manually"
end
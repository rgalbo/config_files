function bconf -d "backup configuration files to github"
  set current_dir $PWD
  set backup_dir ~/config_files/
  cp ~/.config/nvim/init.vim $backup_dir
  cp ~/.tmux.conf $backup_dir
  cp ~/.config/joplin/keymap.json $backup_dir
  cp ~/.config/fish/config.fish $backup_dir  
  cp ~/.config/fish/functions/*.fish $backup_dir/functions 
  cd $backup_dir
  git add --all
  git status
  git commit -m "bconf backup"
  git push -u origin master
  cd $current_dir
end


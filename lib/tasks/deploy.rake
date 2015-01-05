namespace :deploy do
  task :update_code do
    p "git checkout ."
    `git checkout .`

    p "git fetch"
    `git fetch`

    p "git pull --rebase origin master"
    p `git pull --rebase origin master`
  end

  task :compile_assets do
    `RAILS_ENV=production bundle exec rake assets:precompile`
  end

  task :stop do
    p `server.sh stop_#{current_project}`
  end

  task :start do
    p `server.sh start_#{current_project}`
  end

  def current_project
    current_dir = `pwd`
    current_dir.match(/tao_1s/) ? "1s" : "gold"
  end

  task :go => [:update_code, :stop, :compile_assets, :start]
end

node['ninefold_docker']['delete_files'].each do |file_name|
  file "remove #{file_name}" do
    path file_name
    action :delete
    ignore_failure true
  end
end

node['ninefold_docker']['delete_dirs'].each do |dir_name|
  directory "remove #{dir_name}" do
    path dir_name
    recursive true
    action :delete
  end
end
# Set the working application directory
# working_directory "/path/to/your/app"
project_path = "/home/vagrant/projects/why"
working_directory project_path

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "#{project_path}/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "#{project_path}/log/unicorn.log"
stdout_path "#{project_path}/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.why.sock"
# listen "/tmp/unicorn.myapp.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30

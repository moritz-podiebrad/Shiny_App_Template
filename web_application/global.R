# global script

gl_v_wd <<- getwd()
print(paste("Working Directory:", gl_v_wd))

# Initialize Environment
base::source(base::file.path(gl_v_wd, "init.R"))

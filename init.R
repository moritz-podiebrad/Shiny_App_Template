# init file for this project to set standardized variables


# Load Dependencies -------------------------------------------------------

library(tidyverse)


# Set Names ---------------------------------------------------------------

gl_v_project_name <<- base::system("git config --get remote.origin.url", intern = TRUE) |> 
  stringr::str_split("/") |> 
  base::unlist() |> 
  utils::tail(1) |> 
  stringr::str_remove(".git")

print(paste("######", gl_v_project_name, "######"))

# Branch-Check ------------------------------------------------------------

gl_v_branch <<- base::system("git rev-parse --abbrev-ref HEAD", intern = TRUE)

# check for dev-mode
gl_v_dev_mode = (gl_v_branch %in% c("master", "main", "test")) == FALSE

print(paste("Dev-mode is checked as:", gl_v_dev_mode))

# Set functions path ------------------------------------------------------

gl_v_functions_path <<- base::file.path(base::getwd(), "functions")

l_all_functions <- base::list.files(gl_v_functions_path, full.names = TRUE)

# source all functions
print("Functions are loaded from:")
print(l_all_functions)

base::invisible(
  base::lapply(
    X = l_all_functions,
    FUN = base::source
  )
)
print("Functions sucessfully loaded.")

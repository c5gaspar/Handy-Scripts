packageCheckLoad <- function(packages = NULL) {
  # Package check and load is a convenience function which checks if the current 
  # machine has all the required packages installed, loads them via `library()`,
  # and alerts the user to any packages that are missing (rather than install them).
  #
  # Arguments:
  # 
  # `packages`: character vector of case-sensitive package names. Default is NULL
  #
  # Returns:
  # 
  # Console text identifying: a) missing packages or b) confirmation of success.
  ###############################-FUNCTION BEGIN-###############################
  # Error checking
  if(is.null(packages) | !length(packages)){
    stop("The \'packages\' parameter has not been supplied anything to check")
  } else if(!(class(packages) %in% "character")) {
    stop("Please supply the \'packages\' parameter with an argument of type character")
  }
  
  # Actual operation
  missingPacks <- packages[!(packages %in% installed.packages()[, "Package"])]
  if(length(missingPacks)) {  # Throwing an error if packages are missing
    stop("Please install the following package(s) before proceeding: \n>>     ",
         paste(missingPacks, collapse = ", "))
  } else {                    # Otherwise, loading all packages
    invisible(lapply(packages, library, ch = T))
    cat("All packages have successfully been loaded (unless noted otherwise).")
  }
}

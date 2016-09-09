get.group = function(grps = seq(1,5)){
  set.seed(NULL) # reset seed in case it is stored in an environment image
  dgrp = sample(grps, size = 1) # Ziehe Gruppe
  cat(paste("Drawn group:" , dgrp),"\n")
  grps = grps[-which(grps == dgrp)] # Lösche gezogene Gruppe
  #assign("rgrps", grps, envir = .GlobalEnv)
  cat("Remaining groups: ")
  cat(grps,"\n")
}
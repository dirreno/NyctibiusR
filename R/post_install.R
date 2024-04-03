library(reticulate)

install_miniconda(path = miniconda_path(), update = TRUE, force = FALSE)

py_install("nyctibius", pip = TRUE)
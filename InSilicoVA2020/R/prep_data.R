##' Prepare data collected with WHO VA 2016 instrument
##'
##' This function takes data collected using the WHO VA 2016 instrument, and
##' converts it to the format that is consistent with the WHO VA 2020 instrument.
##' The conversion consists of setting the values for the missing indicators/columns
##' to missing
##' 
##' @param data Input data collected using the WHO VA 2016 instrument.
##' @return Data frame with the format expected by InSilicoVA2020.
prep_data_2016 <- function(data) {

    data(RandomVA2020)
    vnames2020 <- names(RandomVA2020)
    vnames_data <- names(data)
    col_set_na <- !(vnames_data %in% vnames2020)

    new_data <- data
    new_data[, col_set_na] <- "."

    return(new_data)
}

##' Prepare data collected with the WHO VA 2020 instrument
##'
##' This function takes data collected using the WHO VA 2020 instrument, and
##' converts it to the format expected by InSilicoVA. The conversion consists
##' of adding new indicators/columns (with missing values).
##' 
##' @param data Input data collected with the WHO VA 2020 insturment.
##' @return Data frame with the format expected by InSilicoVA2020.
prep_data_2020 <- function(data) {

    data(RandomVA5)
    vnames2016 <- names(RandomVA5)
    vnames_data <- names(data)

    new_data <- data.frame(data["ID"])
    for (i in 2:length(vnames2016)) {
        if (!vnames2016[i] %in% vnames_data) {
            new_data[vnames2016[i]] <- "."
        } else {
            new_data[vnames2016[i]] <- data[vnames2016[i]]
        }
    }

    return(new_data)
}

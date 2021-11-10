
#' Probabilistic Verbal Autopsy Coding with 'InSilicoVA' Algorithm and the WHO 2020 VA Instrument
#' 
#' Computes individual causes of death and population cause-specific mortality
#' fractions using the 'InSilicoVA' algorithm from McCormick et al. (2016)
#' <DOI:10.1080/01621459.2016.1152191>. It uses data derived from the WHO 2020
#' VA instrument. This package provides general model fitting and customization
#' for 'InSilicoVA' algorithm and basic graphical visualization of the output.
#'
#' @name InSilicoVA2020-package
#' @docType package
#' @author Zehang Li, Tyler McCormick, Peter Chio, Jason Thomas, Yue Chu, Sam Clark
#'
#' Maintainer: Jason Thomas <jarathomas@@gmail.com>
#' @references http://openva.net
#' @keywords InSilico
#'
NULL


#' Conditional probability of InterVA5
#'
#' This is the table of conditional probabilities of symptoms given CODs, along with
#' prior probabilities in the first row. The values are from InterVA2020 and correspond
#' to the WHO VA 2020 instrument.
#'
#'
#' @name probbaseV2020
#' @docType data
#' @format A data frame with 294 observations on 87 variables. The first row contains
#' observations corresponding to prior probabilities; while the subsequent observations
#' (rows 2 - 354) are the conditional probabilities.
#' @keywords datasets
#' @examples
#' 
#' data(probbaseV2020)
#'
NULL


#' Conditional probability of InterVA5
#'
#' This is the table of conditional probabilities of symptoms given CODs, along with
#' prior probabilities in the first row. The values are from InterVA2020 and correspond
#' to the WHO VA 2016 instrument, but modified to the WHO VA 2020 instrument format.
#'
#'
#' @name probbaseV5_2020
#' @docType data
#' @format A data frame with 354 observations on 87 variables. The first row contains
#' observations corresponding to prior probabilities; while the subsequent observations
#' (rows 2 - 354) are the conditional probabilities.
#' @keywords datasets
#' @examples
#' 
#' data(probbaseV5_2020)
#'
NULL


#' 200 records of Sample Input
#'
#' This is a dataset consisting of 200 arbitrary sample input deaths in the
#' acceptable format of InterVA5. Any dataset that needs to be analyzed by this
#' package should be in the same format. The order of the input fields must
#' not be changed.
#'
#'
#' @name RandomVA5
#' @docType data
#' @format 200 arbitrary input records.
#' @keywords datasets
#' @examples
#'
#' data(RandomVA5)
#'
NULL



#' 200 records of Sample Input
#'
#' This is a dataset consisting of 200 arbitrary sample input deaths in the
#' acceptable format of InterVA2020. Any dataset that needs to be analyzed by this
#' package should be in the same format. The order of the input fields must
#' not be changed.
#'
#'
#' @name RandomVA2020
#' @docType data
#' @format 200 arbitrary input records.
#' @keywords datasets
#' @examples
#'
#' data(RandomVA2020)
#'
NULL

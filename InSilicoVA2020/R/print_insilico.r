#' Print method for summarizing InSilicoVA Model Fits
#' 
#' This function is the print method for class \code{insilico}.
#' 
#' 
#' @param x \code{insilico} object.
#' @param ... not used
#' 
#' @author Zehang Li, Tyler McCormick, Sam Clark
#' 
#' Maintainer: Zehang Li <lizehang@@uw.edu>
#' @seealso \code{\link{summary.insilico}} 
#' @references 
#' Tyler H. McCormick, Zehang R. Li, Clara Calvert, Amelia C. Crampin,
#' Kathleen Kahn and Samuel J. Clark Probabilistic cause-of-death assignment
#' using verbal autopsies, \emph{Journal of the American Statistical
#' Association} (2016), 111(515):1036-1049.
#' @export 

print.insilico <- function(x,...){
	cat("InSilicoVA fitted object:\n")
	cat(paste(length(x$id), "death processed\n"))
	cat(paste(x$Nsim, "iterations performed, with first", 
			  x$burnin, "iterations discarded\n",
			  trunc((x$Nsim - x$burnin)/x$thin), "iterations saved after thinning\n"))
		if(!x$updateCondProb){
			cat("Fitted with fixed conditional probability matrix\n")
		}else if(x$keepProbbase.level){
			cat("Fitted with re-estimated InterVA4 conditional probability level table\n")	
		}else{
			cat("Fitted with re-estimating InterVA4 conditional probability matrix\n")	
		}    
}

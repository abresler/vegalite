#' Create a sort definition object
#'
#' You can sort by aggregated value of another “sort” field by creating a
#' sort field definition object. All three properties must be non-\code{NULL}.
#'
#' @param field the field name to aggregate over.
#' @param op a valid \href{http://vega.github.io/vega-lite/docs/sort.html#aggregate}{aggregation operator}.
#' @param order either \code{ascending} or \code{descending}
#' @encoding UTF-8
#' @export
sort_def <- function(field, op, order=c("ascending", "descending")) {
  if (is.null(field) | is.null(op) | is.null(order)) {
    message(paste0("One or more sort definition components is NULL. ",
                   "Reverting to 'ascending' basic sort", sep="", collapse=""))
    return("ascending")
  } else {
    return(list(field=field, op=op, order=order[1]))
  }
}



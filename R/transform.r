#' Filter 'null' values
#'
#' Whether to filter null values from the data.
#'
#' @param vl Vega-Lite object created by \code{\link{vegalite}}
#' @param setting if \code{NULL} only quantitative and temporal fields are
#'        filtered. If \code{TRUE}, all data items with 'null' values are
#'        filtered. If \code{FALSE}, all data items are included.
#' @export
filter_null <- function(vl, setting=NULL) {
  if (!is.null(setting)) { vl$x$transform$filterNull <- setting }
  vl
}

#' Derive new fields
#'
#' @param vl Vega-Lite object created by \code{\link{vegalite}}
#' @param field the field name in which to store the computed value.
#' @param expr a string containing an expression for the formula. Use the variable
#'        \code{"datum"} to refer to the current data object.
#' @export
calculate <- function(vl, field, expr) {

  tmp <- data.frame(field=field, expr=expr, stringsAsFactors=FALSE)

  if (length(vl$x$transform$calculate) == 0) {
    vl$x$transform$calculate <- tmp
  } else {
     vl$x$transform$calculate <- rbind.data.frame(vl$x$transform$calculate, tmp)
  }

  vl

}

#' Add a filter
#'
#' @param vl Vega-Lite object created by \code{\link{vegalite}}
#' @param expr Vega Expression for filtering data items (or rows). Each datum
#'   object can be referred using bound variable datum. For example, setting
#'   \code{expr} to \code{"datum.datum.b2 > 60"} would make the output data includes only
#'   items that have values in the field \code{b2} over 60.
#' @export
add_filter <- function(vl, expr) {
  vl$x$transform$filter <- expr
  vl
}
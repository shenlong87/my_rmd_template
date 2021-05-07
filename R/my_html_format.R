#' Custom HTML template Shenlong87
#'
#' Loads additional style and template file
#'
#' @param toc should a table of contents be displayed?
#' @param ... additional arguments provided to \@code{html_document}
#' @export
#'
my_html_format = function(toc = TRUE, toc_float = TRUE, theme = "cosmo", css = "./resources/styles.css", footer = "./resources/footer.html", ...) {

  # locations of resource files in the package
  pkg_resource = function(...) {
    system.file(..., package = "MyRmdTemplate")
  }

  css = css
  footer = footer

  # css    = pkg_resource("rmarkdown/resources/styles.css")
  # footer = pkg_resource("rmarkdown/resources/footer.html")

  # call the base html_document function
  rmarkdown::html_document(
    toc = toc,
    toc_float = toc_float,
    fig_width = 15,
    theme = theme,
    # code_folding = "hide",
    css = css,
    number_sections = FALSE,
    includes = rmarkdown::includes(after_body = footer),
    ...
  )
}

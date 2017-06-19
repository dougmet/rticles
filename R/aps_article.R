#' American Physical Society (APS) Journal format.
#'
#' Format for creating an American Physical Society (APS) Journal articles.
#' Adapted from
#' \href{https://journals.aps.org/revtex/}{https://journals.aps.org/revtex/}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "aps_article", package = "rticles")
#' }
#'
#' @export
aps_article <- function(...,
                        keep_tex = TRUE,
                        md_extensions = c("-autolink_bare_uris"),
                        fig_caption = TRUE){
  pdf_document_format(...,
                      keep_tex = keep_tex,
                      md_extensions = md_extensions,
                      format = "aps_article",
                      template = "template.tex",
                      csl = "american-physical-society.csl",
                      fig_caption = fig_caption)
}

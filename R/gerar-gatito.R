
#' Gerar gatito aleatório
#'
#' @return Não retorna nada. Apenas plota o gatito.
#' @export
#'
gerar_gatito <- function() {
  tmp <- tempfile(fileext = ".jpeg")
  utils::download.file(
    "https://cataas.com/cat",
    tmp,
    quiet = TRUE
  )
  tmp %>%
    jpeg::readJPEG() %>%
    grDevices::as.raster() %>%
    graphics::plot()
}

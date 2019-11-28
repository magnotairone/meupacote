# le varios csv, empilha e devolve um dataframe
#'
#' Esta funcao importa varios arquivos csv de
#' uma pasta
#'
#' @param pasta uma string referente a pasta onde os csvs serao procurados
#'
#' @return Uma tibble
#'
#' @export
#'
#' @examples
#'  \dontrun{
#'  ler_varios_csv("caminho_ate_pasta")
#'  }
ler_varios_csv <- function(pasta){
  arquivos <- list.files(pasta,
                         full.names = TRUE, # para cada arquivo dá todo o caminho absoluto no disco
                         pattern = ".csv") # busca somente por arquivos que possuem .csv no seu nome (é uma regex)
  base <- purrr::map_dfr(arquivos, readr::read_csv)
  usethis::ui_code("Arquivos lidos com sucesso!") # ver demais opcoes do ui_...
  return(base)
}

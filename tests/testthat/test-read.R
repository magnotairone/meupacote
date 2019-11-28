# a ideia é fazer testes simples e dentro das chaves de test_that, colocar alguma
# instrucao que retorna um valor logico
test_that("testar se le csv", {
  pasta_tmp <- tempdir()
  readr::write_csv(
    mtcars,
    path = paste0(pasta_tmp, "/mtcars.csv"))
  base <- ler_varios_csv(pasta_tmp)
  expect_equal(base, mtcars) # se for igual, entao minha funcao leu o csv
})

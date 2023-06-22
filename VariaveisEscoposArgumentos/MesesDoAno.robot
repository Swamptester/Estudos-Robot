*** Variables ***
@{meses_do_ano}    Janeiro    Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Imprimir meses do ano
    Log    ${meses_do_ano}[0]
    Log    ${meses_do_ano}[1]
    Log    ${meses_do_ano}[2]
    Log    ${meses_do_ano}[3]
    Log    ${meses_do_ano}[4]
    Log    ${meses_do_ano}[5]
    Log    ${meses_do_ano}[6]
    Log    ${meses_do_ano}[7]
    Log    ${meses_do_ano}[8]
    Log    ${meses_do_ano}[9]
    Log    ${meses_do_ano}[10]
    Log    ${meses_do_ano}[11]
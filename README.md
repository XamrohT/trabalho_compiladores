# trabalho_compiladores
 trabalho realizado para a disciplina de compiladores
 
# Linguagem e Ferramentas utilizadas
 A linguagem escolhida foi a linguagem C, por motivos
 de ser mais enxuta e possuir diversas ferramentas 
 para a produção de um análisador léxico, a ferramenta
 escolhida em questão foi o Flex, devido a sua facilidade
 de manuseio para a criação do análisador léxico.
# Executando o automato
  Para a execução desse automato será possível de duas maneiras, a primeira é a mais fácil,
  será apenas executar o arquivo a.exe que estará dentro da pasta "codigo_fonte".
  
  A segunda maneira será um pouco mais complicada, pois deverá ser instalado 2 programas, primeiramente o flex, e o compilador gcc, pois infelizmente no windows o gcc não vem nativo assim como no MAC. 
  
## Primeira etapa:
  Primeiro faça o download de ambos deixarei o link abaixo:
  1.Link:https://sourceforge.net/projects/mingw/
  2.Link:http://gnuwin32.sourceforge.net/packages/flex.htm
## Segunda etapa:
 1. ```será necessário adicionar ambos programas as variáveis de ambiente do windows, e deverão estar na mesma ordem da imagem, pois se não elas não serão reconhecidas pelo windows.```
 2.img:![b5a0a7da57f3ddd3c47c92c4c35a4053](https://user-images.githubusercontent.com/44319115/94371040-d6f8fb00-00c9-11eb-971e-215c91175017.png)
## Terceira etapa:
  Voce deverá ir até a pasta codigo_fonte por via de comandos do CMD, como por exemplo no meu caso "cd   C:\Users\Vinicius_2\OneDrive\Área de Trabalho\lex\trabalho_compiladores" ao adentrar a pasta, voce deverá primeiramente digitar
"flex lexCompiler.l" após esse comando ser executado com sucesso, você deverá após isso digitar "gcc lex.yy.c"

## Quarta etapa:
  Esta etapa está relacionada ao uso do análisador
  ### alfabeto:
 1. ```Números Suportados: 0 | 1 | 2 | 3 | 4 | 5 | 6 |7 | 8 |9```
 2. ```Caracteres suportados: a | b | c | d | e | f | g | h | i | j | k | l | m | n | o | p | q | r | s | t | u | v | w | x | y | z```
 3. ```Símbolos suportados: ';' |'+'|'-'|' * '|'/'|'{'|'}'|'['| ']'|'('|')'|'='|'!'|'!='|'>'|'<'|'>='|'<='|'║'|'&&'|'=='```
  
  ### tabela de símbolos reconhecidas pelo automato:
  |Palavra | Token |
  |--------|-------|
  | Begin  | TOKEN_INICIA| 
  | End    | TOKEN_TERMINA|
  | If     | TOKEN_SE|
  | Then   | TOKEN_ENTAO|
  | Else   | TOKEN_SENAO|
  | Do     | TOKEN_FAZER|
  | Return | TOKEN_RETORNA|
  | Break  | TOKEN_QUEBRA|
  | Int    | TOKEN_INTEIRO|
  | Float  | TOKEN_REAL_32BITS|
  | Double | TOKEN_REAL_64BITS|
  | String | TOKEN_MATRIZ_CARACTERE|
  | ;      | TOKEN_FECHA_LINHA|
  | +      | TOKEN_SOMA|
  | -      | TOKEN_SUBTRACAO|
  | /      | TOKEN_DIVISAO|
  | {      | TOKEN_ABRE_CONDICAO|
  | }      | TOKEN_FECHA_CONDICAO|
  | [      | TOKEN_ABRE_MATRIZ|
  | ]      | TOKEN_FECHA_MATRIZ|
  | (      | TOKEN_ABRE_PARENTESES|
  | )      | TOKEN_FECHA_PARENTESES|
  | =      | TOKEN_ATRIBUI_VALOR|
  | !      | TOKEN_NEGACAO|
  | !=     | TOKEN_DIFERENTE|
  | >      | TOKEN_MAIOR|
  | <      | TOKEN_MENOR|
  | >=     | TOKEN_MAIOR_IGUAL|
  | <=     | TOKEN_MENOR_IGUAL|
  | ║    | TOKEN_OU         |
  | &&     | TOKEN_E |
  | ==     | TOKEN_IGUAL|
 
 # Alunos:
 Esse trabalho foi realizado pelos alunos, Vinícius Queiroz Timóteo, RA:2573, Turma:ECOM6S, e seu companheiro de dupla foi o aluno: Bruno Navarro Chillante, RA:2589, Turma:ECOM6S
  

  

  

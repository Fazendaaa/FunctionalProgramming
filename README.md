Nome: Lucas de Almeida Carotta

#USP: 8598732

# Paradigma Funcional
Durante o decorrer deste trabalho, os exemplos utilizados para demonstrar o paradigma funcional foram feitos em [Haskell](https://www.haskell.org/), que podem ser escritos em arquviso `.hs` e rodados com o [Glasgow Haskell Compiler (GHC)](https://www.haskell.org/downloads/) no computador, há uma alternativa online para rodar tais exemplos, o [repl.it](https://repl.it/languages/haskell). Tal linguagem fora escolhida devido a facilidade e conhecimento prévio dela.

## Noções Básicas
Assim como os outros paradigmas de computação como: Orientado a Objetos, Lógico, Imperativo e etc; Funcional se trata de um conjunto de regras nas quais as linguagens que se propoem a implementar eles devem seguir. Muitas vezes essas mesmas linguagens implementam multiplos paradigmas como, por exemplo, [JavaScript](https://www.javascript.com/) e outras, que implementam só um, são chamadas de "puras", assim como Haskell. Então é importante saber diferenciar se uma linguagem segue à risca um paradigma à risca antes de criticar ele ou a própria linguagem.

Como o nome pode indicar, o paradgima funcional tem como "unidade mínima" a função. Dito isso, funções à parte, quais são as regras que o paradgima propõe?

### Imutabilidade
Imutabilidade funciona como uma regra que diz que uma função pura não deve ser rodada para chamadas subsequentes uma vez que já foi chamada com os mesmo parâmetros anteriormente. Dada a a função `addTwo`:
```haskell
addTwo :: Integral a => a -> a -> a
addTwo a b = (+) a b
```

Se seu equivalente fosse implementado em uma linguagem não funcional ou até mesmo que seja multiparadgima -- sendo ela "não pura" -- como JavaScript, seria algo do tipo:
```javascript
const addTwo = (a, b) => a + b;
```
Na prática as duas realizarão a mesma conta se passado os valores 1 e 2 como paramêtros, todavia, em chamadas subsequentes da mesma função com os mesmos valores, a implementação em JavaScript irá recalcular o valor, fazendo novamente a operção `1 + 2`, diferentemente da implementação feita em Haskell que simplesmente irá retornar `3` direto.

Cenários asssim que representam a vantagem da imutabilidade. Tendo isto em mente, há casos que realmente o valor de retorno pode varia dado há uma conexão de internet, banco de dados ou até mesmo leitura de arquivos, casos assim são conhecidos por gerarem [efeitos colaterais](#efeitos-colaterais).

#### Efeitos colaterais
Efeito colateral é o nome dado há toda chamada de um programa para serviços que se encontram fora do seu escopo -- "fora da memória" -- como, por exemplo, um serviço de autenticação de usuários. Digamos que um código de login feito em Haskell tenha que fazer uma requisição através da internet, uma função chamada `auth` recebe dois parametros, usário e senha. Digamos que em uma sessão que dure 15min o usário tenha que se reconectar, só que coincidentemente a senha dele expirou, mesmo que ele digite o mesmo usuário e a mesma senha do primeiro login, não será reconectado; isso tudo porque é uma chamada há um seviço do qual o programa não possui controle.

Outro exemplo seria uma função que utiliza um número randomico, no qual para cada chamada dela, mesmo que seja uma função [pura](#pureza), como um dos seus argumentos não é dependente de um comportamento fora do programa -- normalmente uma chamada ao horário e dada do sistema no qual o número randomico é calculado em cima --, isso quebrará a [imutabilidade](#imutabilidade), gerando o efeito colateral.

Em suma, efeitos colaterais são comportamentos não esperados por uma aplicação. Isso pode ficar mais claro uma vez que [lambda cáculo](#lambda-c%C3%A1culo) for apresentado.

### Pureza
A ideia de pureza muitas vezes é dada como sinônimo para [imutabilidade](#imutabilidade),só que ela é mais simples e pode ser implementada mesmo em linguagens não funcionais. Basicamente a pureza representa funções que, para funcionar, dependem apenas de seus argumentos e parametros passados para elas; ou seja, nada de variáveis globais -- seja para lê-las ou alterá-las -- e, além disso, a função não deverá alterar os valores de seus parametros.

Ou seja, a seguinte função, em JavaScript, é considerada pura pois apenas depende de seus parametros:
```javascript
const powerOf = (a, b) => a ** b;
```

Como funções puras podem sim causar [efeitos colaterais](#efeitos-colaterais), uma não excluí a outra. Além disso, não existem funções `void` ou seja, uma função deverá **SEMPRE** retornar algo.

Todas essas aparentes "restrições" que pureza impõe acabam tornando na verdade o código mais simples de se entender.

### Estilo Pointfree
É uma maneira de compor funções sem expecificar seus argumentos.

### Funções de Alta Ordem
* Pode receber funções como parametros
* Pode retornar funções

#### Funções Anonimas

### Composição de Funções

### Recursividade


### Estruturas de controle
#### Pattern Matching

#### Guards

#### If Then Else

### Closures

### Currying
Currying é a técnica de aplicar-se parcialmente uma função, aplicando-se mais de duas funções sendo que cada uma aceita um parametro e retorna um resultado, permitindo a iluzão de uma função de multiplos parametros.

## Predicados

## Arrays

## Lista de prioridades

## Linguagem LISP

### Funções primitivas

## Lambda cáculo
Antes de se explicar mais sobre [Haskell](#haskell), um tópico importante a se expor é que a linguagem foi feita baseando-se muito na lógica por trás do lambda cáculo.

### Equivalência Alpha

### Redução Beta

### Variáveis livres

### Argumentos múltiplos

### Divergencia

## Haskell
Haskell é famosa por:
* Enfatizar segurança
* Ser utilizada na indústria em na comunidade Open Source
  
Seu nome é dada em homengem à Haskell Curry, um matemático americano famoso pelo seu trabalho em lógica combinatória; tanto que o nome originalmente pensado a ser dado à linguagem era para ser Curry, mas após os desenvolvedores perceberem que já havia uma linguagem com esse nome decidiram mudar para Haskell.

Sua tipagem é do tipo forte -- do ponto de vista acadêmico, a força de uma linguagem é "o quão permissiva" sua tipagem pode ser --, além de ser estática e pode ser inferida. Tudo isso permite que erros de tipos são verificados durante a compilação e não a execução; ou seja, você ainda poderá ter um erro ao dividir um número por zero mas não terá um erro de dividir um número por uma string.

### Funções
Diferemente de muitas linguagens, mesmo as funcionais, Haskell não possui o famoso `return` ao final de suas funções, isso porque uma função é o resultado de um valor e não uma sequência se expressões.

### Polimorfismo
Polimorfismo significa "feito de várias formas". E, em Haskell, há dois tipos deles:
* Parametrico: se refere há um tipo de variável/parametro the são completamente polimórificos;
* Restrito -- também conhecido como 'ad-hoc' --: coloca um limit de tipo na variável, sendo que a medida que o número de tipos diminuí, se aumenta o segurança da operação realizada com eles.

### Typeclasses
Haskell possui tipos assim como outras linguagens e eles podem ser:
* Integers
* Doubles
* Strings
* Chars
* etc

Mas a linguagem também possui typeclasses, que são similares à interfaces em outras linguagens, elas são o meio de se trabalhar com multiplos tipos de dados.

### Verificações não estritas
Como nada será verificado até ser necessário, a linguagem permite iterações sobre valores não definidos, ou seja, se pode percorrer um vetor no qual há apenas o valor inicial e não seu valor final; isso obviamente pode acarretar em problemas assim como uma função recursiva sem condição de parada mas, ao mesmo tempo, permite uma flexibilidade na hora de se escrever o código.

Um exemplo seria percorrer um vetor que começa no número 5 e para apenas quando o primeiro número de três digitos aparecer:
```haskell
isThreeDigits :: Integer -> Bool
isThreeDigits a = (div a 100) /= 0

main :: IO()
main = do
  print $ takeWhile (not . isThreeDigits) [5..]
```

### Tail Call Optimization (TCO)

### Exemplos
Assim como reportado pelo sétimo problema no [Project Euler](https://projecteuler.net/problem=7) propõe: _"Ao listar os seis primeiros números primos: 2, 3, 5, 7, 11 e 13; conseguimos perceber que o sexto é 13. Qual é o número primo na posição 10 001?"_

Uma das maneiras de se implementar esse problema é seria percorrer infinitamente a sequência de todos os números inteiros positivos até se chegar no 10 001 primo. O problema dessa abordagem é que não existe uma fórmula fechada para se calcular números primos, ou seja, para cada número da sequência dve ser verificado se ele é ou não primo e uma das maneiras de se fazer isso é através do [Crivo de Eratóstenes](https://pt.wikipedia.org/wiki/Crivo_de_Erat%C3%B3stenes); só que o crivo em si, implementado na função `isPrime`, pode ser rodado múltiplas vezes em outros cenários para o mesmo número. Digamos que decidimos rodá-la com o número 101239, o resultado para este valor retornará `False` na sua primeira vez ao ser calculado, só que em todas as vezes subsequentes ao invés de ser novamente calculado será apenas retornado.

```haskell
isPrime :: Integral a => a -> Bool
isPrime number
    | 2 <= number = null [ x | x <- [2..multiplesLimit], (==) 0 $ mod number x ]
    | otherwise = False where
        multiplesLimit = (+) 1 $ truncate ((sqrt $ fromIntegral number):: Float)

main :: IO()
main = do
    let nth = 10001
    print $ (last . take ((-) nth 1)) [ number | number <- [2..], isPrime number ]
```

## Referências

### Artigos
* [What is functional programming](https://www.quora.com/What-is-functional-programming)
* [So You Want To Be A Functional Programmer](https://medium.com/@cscalfani/so-you-want-to-be-a-functional-programmer-part-1-1f15e387e536)

### Códigos
* [Project Euler - Implementações](https://github.com/Fazendaaa/project-euler)

### Notas
* [Intro To Haskell](https://github.com/Fazendaaa/introToHaskell/)

### Podcasts
#### Hipsters.Tech
* [Linguagens Funcionais](https://hipsters.tech/linguagens-funcionais-hipsters-91/)
* [Tecnologias no Nubank](https://hipsters.tech/tecnologias-no-nubank-hipsters-01/)

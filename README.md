Nome: Lucas de Almeida Carotta

#USP: 8598732

# Paradigma Funcional

## Noções Básicas
Assim como os outros paradigmas de computação como: Orientado a Objetos, Lógico, Imperativo e etc; Funcional se trata de um conjunto de regras nas quais as linguagens que se propoem a implementar eles devem seguir. Muitas vezes essas mesmas linguagens implementam multiplos paradigmas como, por exemplo, [JavaScript]() e outras, que implementam só um, são chamadas de "puras", assim como [Haskell](). Então é importante saber diferenciar se uma linguagem segue à risca um paradigma à risca antes de criticar ele ou a própria linguagem.

Como o nome pode indicar, o paradgima funcional tem como "unidade mínima" a função. Dito isso, funções à parte, quais são as regras que o paradgima propõe?

### Imutabilidade

#### Efeitos colaterais

### Pureza

### Estilo Pointfree

### Funções de Alta Ordem

### Composição de Funções

### Recursividade

### Estruturas de controle (_Pattern Matching_)

### Closures

### Currying


## Predicados

## Arrays

## Lista de prioridades

## Linguagem LISP

### Funções primitivas

## Linguagem Haskell

### Polimorfismo

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

### Podcasts
* [Hipsters.Tech - Linguagens Funcionais](https://hipsters.tech/linguagens-funcionais-hipsters-91/)

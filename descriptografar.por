programa
{
    inclua biblioteca Util
    inclua biblioteca Texto
    
    caracter alfabeto[27] = {' ','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
    
    funcao inicio()
    {
        para (inteiro i=0; i<27; i++){
            escreva(i, " ")
            descriptografar("THJHYYHV", i)
            escreva("\n")
        }
    }
    
    funcao criptografar(cadeia texto, inteiro chave){
        inteiro numCaracters = Texto.numero_caracteres(texto)
        inteiro posicao = 0

        para(inteiro i=0; i < numCaracters; i++){
            caracter letra = Texto.obter_caracter(texto, i)

            para(inteiro j = 0; j < 27; j++){
                se(letra == alfabeto[j]){
                    posicao = (j + chave) % 27
                }
            }

            escreva(alfabeto[posicao])
        }
    }

    funcao descriptografar(cadeia frase, inteiro chave){
        inteiro numeroLetras = Texto.numero_caracteres(frase)

        para(inteiro i = 0; i < numeroLetras; i++){
            caracter letra = Texto.obter_caracter(frase, i)

            para(inteiro j = 0; j < 27; j++){
                se(letra == alfabeto[j]){
                    inteiro posicaoDescriptografada = j - chave
                    se(posicaoDescriptografada < 0){
                        posicaoDescriptografada = 27 + posicaoDescriptografada
                    }

                    escreva(alfabeto[posicaoDescriptografada])
                }
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
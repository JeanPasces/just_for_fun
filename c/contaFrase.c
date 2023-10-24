#include "stdio.h"
#include "string.h"

int main() {
  // Cria um vetor.
  char texto[100];
  // Faz a leitura de uma frase até 99 caracteres
  // e armazena no vetor.
  // Lê todos os caracteres, inclusive espaços.
  scanf("%[^\n]", texto);
  // Pula duas linhas
  printf("\n\n");
  // Fala quantos caracteres tem no vetor.
  printf("A sua frase possui: %d caracteres.", (int)strlen(texto));
 
  return 0;

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct no{
	int dado;
	struct no *prox;
}tno;

typedef struct fila{
	tno *comeco;
	tno *fim;
}tfila;

void inicializaFila(tfila *pFila){
	pFila->comeco = pFila->fim = NULL;
}

bool enfileirar(tfila *pFila,int valor) {
	tno *novo = malloc(sizeof(tno));
	if(novo == NULL){
		return false;
	}else if(pFila->comeco == NULL) {
		novo->dado = valor;
		novo->prox = NULL;
		pFila->comeco = pFila->fim = novo;
		return true;
	}else {
		novo->dado = valor;
		novo->prox = NULL;
		(pFila->fim)->prox = novo;
		pFila->fim = novo;
		return true;
	}
}

void listarFila(tfila *pFila){
	tno *aux = pFila->comeco;
	while(aux != NULL){
		printf("Dado->[%d] ",aux->dado );
		aux = aux->prox;
	}
}

int main() {
	tfila fila1;
	inicializaFila(&fila1);

	if(enfileirar(&fila1, 1))
			printf("Sucesso!\n");
		else
			printf("Falha ao alocar memoria");


	if(enfileirar(&fila1, 2))
			printf("Sucesso!\n");
		else
			printf("Falha ao alocar memoria");


	if(enfileirar(&fila1, 3))
			printf("Sucesso!\n");
		else
			printf("Falha ao alocar memoria");

		listarFila(&fila1);
	return 0;
}



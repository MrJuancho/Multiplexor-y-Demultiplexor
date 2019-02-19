//
// Created by MrJuancho on 13/02/2019.
//

#ifndef MULTIPLEXOR_Y_DEMULTIPLEXOR_FUNCIONES_H
#define MULTIPLEXOR_Y_DEMULTIPLEXOR_FUNCIONES_H

#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>

typedef struct _Nodo{
    char *id;
    int dato;
    struct _Nodo *sig;
}Nodo;


Nodo* allocateMem(int dato, char *id){
    Nodo* dummy;
    dummy = (Nodo*)malloc(sizeof(Nodo));
    dummy -> id = _strdup(id);
    dummy -> dato = dato;
    dummy -> sig = NULL;
    return dummy;
}

Nodo* alta(int dato, char *id, Nodo* frente){
    Nodo *box,*aux;
    box = allocateMem(dato,id);
    if(frente == NULL){
        return box;
    }else{
        aux = frente;
        while(aux->sig!=NULL){
            aux = aux -> sig;
        }
        aux->sig=box;
    }
    return frente;
}

Nodo* baja(Nodo* frente, int *lugar){
    Nodo* aux = NULL;
    if(frente==NULL){
        return frente;
    }else{
        if(frente->sig!= NULL){
            aux = frente->sig;
            free(frente);
            *(lugar--);
        }else{
            free(frente);
            *(lugar--);
            aux=NULL;
        }
    }
    return aux;
}

void mostrar(Nodo* frente){
    if(frente != NULL){
        while(frente != NULL){

            printf("ID: %s ; Clasificacion : %d\n", frente->id, frente -> dato);
            frente = frente -> sig;
        }
    }else{
        printf("No contiene elementos tu fila\n");
    }
}


Nodo *generar_datos(Nodo *server, char *n_servicio,int *lugar){
    int m;
    do{
        char *nombre = "";
        int dato = 1 + rand()%3;
        sprintf(nombre,"%s%02d",n_servicio,*lugar);
        server = alta(dato, nombre, server);
        (*lugar)++;
        printf("%s\n", nombre);
        printf("Ingresa 0 para salir, caulquier otro numero para continuar: ");
        scanf("%d",&m);
    }while(m != 0);
    puts("Se generaron datos");
    return server;
}

#endif //MULTIPLEXOR_Y_DEMULTIPLEXOR_FUNCIONES_H

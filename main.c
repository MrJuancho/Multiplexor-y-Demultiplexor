#include <stdio.h>
#include "funciones.h"
#include <conio.h>

int servidor();

int i = 0,j = 0, k= 0;

int main() {
    char *s1 = "ISP1-", *s2 = "ISP2-", *s3 = "ISP3-";
    printf("_-Multiplexor y Demultiplexor-_\n");
    Nodo *SP1 = NULL, *SP2 = NULL, *SP3 = NULL;
    Nodo *Mensaje = NULL, *Descargas  = NULL, *Sospechoso = NULL;
    char m;
    do{
        fflush(stdin);
        puts("Elige una opcion:\n"
             "1 >> Alta de datos al servidor.\n"
             "2 >> Baja de datos.\n"
             "3 >> Multiplexeo.\n"
             "0 >> Salir.");
        scanf(" %c",&m);
        fflush(stdin);
        switch (m) {
            case('1'):
                int server;
                server = servidor();
                fflush(stdin);
                switch (server){
                    case (1):
                        SP1 = generar_datos(SP1,s1,&i);
                        break;
                    case (2):
                        SP2 = generar_datos(SP2,s2,&j);
                        break;
                    case (3):
                        SP3 = generar_datos(SP3,s3,&k);
                        break;
                    case (4):
                        puts("La operacion fue cancelada");
                        break;
                    default:
                        break;
                }
                break;
            case ('2'):
                int s;
                s = servidor();
                switch (s){
                    case (1):
                       baja(SP1,&i);
                        break;
                    case (2):
                        baja(SP2,&j);
                        break;
                    case (3):
                        baja(SP3,&k);
                        break;
                    case (4):
                        puts("La operacion fue cancelada");
                        break;
                }
                break;
            case ('3'):
                puts("Tus datos actuales: \n");
                puts("Servidor SP1: ");
                mostrar(SP1);
                system("PAUSE");
                puts("Servidor SP2: ");
                mostrar(SP2);
                system("PAUSE");
                puts("Servidor SP3: ");
                mostrar(SP3);
                system("PAUSE");
                if(SP1 != NULL) {
                    while(SP1 != NULL) {
                        if (SP1->dato == 1) {
                            Mensaje = alta(SP1 -> dato, SP1 -> id, Mensaje);
                        } else if (SP1->dato == 2) {
                            Descargas = alta(SP1 -> dato, SP1 -> id, Descargas);
                        } else if (SP1->dato == 3) {
                            Sospechoso = alta(SP1 -> dato, SP1 -> id, Sospechoso);
                        }
                        SP1 = SP1->sig;
                    }
                }else{
                    puts("El servicio SP1 no contiene Datos");
                }
                if(SP2 != NULL) {
                    while(SP2 != NULL) {
                        if (SP2->dato == 1) {
                            Mensaje = alta(SP2 -> dato, SP2 -> id, Mensaje);
                        } else if (SP2->dato == 2) {
                            Descargas = alta(SP2 -> dato, SP2 -> id, Descargas);
                        } else if (SP2->dato == 3) {
                            Sospechoso = alta(SP2 -> dato, SP2 -> id, Sospechoso);
                        }
                        SP2 = SP2->sig;
                    }
                }else{
                    puts("El servicio SP2 no contiene Datos");
                }
                if(SP3 != NULL) {
                    while(SP3 != NULL) {
                        if (SP3->dato == 1) {
                            Mensaje = alta(SP3 -> dato, SP3 -> id, Mensaje);
                        } else if (SP3->dato == 2) {
                            Descargas = alta(SP3 -> dato, SP3 -> id, Descargas);
                        } else if (SP3->dato == 3) {
                            Sospechoso = alta(SP3 -> dato, SP3 -> id, Sospechoso);
                        }
                        SP3 = SP3->sig;
                    }
                }else{
                    puts("El servicio SP3 no contiene Datos");
                }
                puts("Los datos han sido ordenados, el resultado es el siguiente :\n");
                puts("Mensajes");
                mostrar(Mensaje);
                system("PAUSE");
                puts("Descargas");
                mostrar(Descargas);
                system("PAUSE");
                puts("Sospechosos");
                mostrar(Sospechoso);
                system("PAUSE");
                SP1 = NULL;
                SP2 = NULL;
                SP3 = NULL;
                break;
            case ('0'):
                puts("Hasta luego gracias.");
                system("PAUSE");
                break;
            default:
                puts("Ingresa una opcion viable");
                break;
        }
        fflush(stdin);
    }while(m != '0');
    return 0;
}

int servidor(){
    int n;
    puts("Antes que nada, ingresa el servidor a utilizar:\n"
         "1 >> ISP1\n"
         "2 >> ISP2\n"
         "3 >> ISP3\n"
         "4 >> Cancelar Operacion");
    scanf("%d",&n);
    return n;
}
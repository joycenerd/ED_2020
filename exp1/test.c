#include <stdio.h>
#include <string.h>
#include <stdlib.h>


int main() {
    char input[100];
    fgets(input,100,stdin);
    fputs (input,stdout);
    fputs("Tokens: ",stdout);
    char *token;
    char token_arr[100][100];
    int cnt;
    token=strtok(input," \n\0");
    while(token!=NULL) {
        strncpy(token_arr[cnt],token,strlen(token));
        cnt++;
        token=strtok(NULL," \n\0");
    }
    int i;
    fputs(token_arr[0],stdout);
    for(i=1;i<cnt;i++) {
        fputs(", ",stdout);
        fputs(token_arr[i],stdout);
    }
    fputs("\n",stdout);
    return 0;
}
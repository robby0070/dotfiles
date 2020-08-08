#include <stdio.h> 
#include <string.h>
int main(int argc,  char** argv) {

    if (argc < 3) return 0; 
    
    char *def = argv[1];
    int found = 0;
    int i=2; 

    while (i < argc && strcmp(argv[i], def) != 0) {
        ++i;
    }

    if (i == argc - 1) 
        printf ("%s", argv[2]);
    else 
        printf ("%s", argv[i+1]); 


}
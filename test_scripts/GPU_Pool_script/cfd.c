#include <stdio.h>

main(int agrc, char* argv[])
{
float value;
FILE* fp = fopen(argv[1], "r");
FILE* fp2 = fopen(argv[2], "w");
int i;
for (i=1; i<=1000; i++)
{
  int count=0;
  while(fscanf(fp, "%f", &value) != EOF)
  {
	//printf("%f\n", value);
     if(value <= (float)i)
         count++;
  }
  printf("%d\n", i);
  fprintf(fp2, "%d, %d\n", i, count);
  rewind(fp);
}

fclose(fp);
fclose(fp2);
}

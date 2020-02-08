#include<stdio.h>
#include<stdlib.h>
void main()
{
	int t;
	printf("enter the number of test cases T\n");
	scanf("%d",&t);
	int i,a[100];
	int x;
	int sum;
	for(i=0;i<t;i++)
	{
		scanf("%d",&a[i]);
	}
	for(i=0;i<t;i++)
	{
		sum=0;
		x=a[i]/100;
		a[i]=a[i]-(100*x);
		sum=sum+x;
		x=a[i]/50;
		a[i]=a[i]-(50*x);
		sum=sum+x;
		x=a[i]/10;
		a[i]=a[i]-(10*x);
		sum=sum+x;
		x=a[i]/5;
		a[i]=a[i]-(5*x);
		sum=sum+x;
		x=a[i]/2;
		a[i]=a[i]-(2*x);
		sum=sum+x;
		x=a[i]/1;
		a[i]=a[i]-(1*x);
		sum=sum+x;
		printf("%d\n",sum);
	}
}

#include<stdio.h>
int min_plates_of_momos(int m, int arr[], int n)
{
    int sum=0;
    int count=0;
    for(int i=n-1; i>=0; i--)
    {
        sum=sum+arr[i];
        count++;
        if(sum>=m)
            return count;

    }
    return -1;
}
void main()
{
	int t;
	int temp;
	scanf("%d",&t);
    while(t--)
    {
        int n,m;
        int i;
        int j;
        scanf("%d %d",&n,&m);
        int arr[n];
        for( i=0; i<n; i++)
            scanf("%d",&arr[i]);
        for(i=0;i<n;i++)
        {
        	for(j=0;j<n-i-1;j++)
        	{
        		if(arr[j]>arr[j+1])
        		{
        			temp=arr[j];
        			arr[j]=arr[j+1];
        			arr[j+1]=temp;
        		}
        	}
        }
        printf("%d\n",min_plates_of_momos(m,arr,n));
    }
}

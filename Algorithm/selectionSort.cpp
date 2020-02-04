#include<iostream>
using namespace std;

int selectSort(int n,int arr[])
{
    int i,j,x,temp;
    for(i=1;i<n;i++)
    {
        j=i+1;
        while(j<=n)
        {
            if(arr[i]>arr[j])
            {
                temp=arr[j];
                arr[j]=arr[i];
                arr[i]=temp;
            }
            j++;
        }
    }
}


int main()
{
    int n;
    cout<<"Please, enter the elements number: ";
    cin>>n;

    int arr[n];
    cout<<"Please, enter the elements: ";

    for(int i=1;i<=n;i++)
        cin>>arr[i];

    selectSort(n,arr);

    for(int i=1;i<=n;i++)
        cout<<arr[i]<<" ";

    return 0;
}
#include<bits/stdc++.h>
using namespace std;

int main()
{

    int t;
    cin>>t;
    string s;
    cin.ignore();
    while(getline(cin,s))
    {
        for(int i=0; i<s.size(); i++)
        {
            if(s[i]=='0')
                cout<<'O';
            else if(s[i]=='1')
                cout<<'I';
            else if(s[i]=='2')
                cout<<'Z';
            else if(s[i]=='3')
                cout<<'E';
            else if(s[i]=='4')
                cout<<'A';
            else if(s[i]=='5')
                cout<<'S';
            else if(s[i]=='6')
                cout<<'G';
            else if(s[i]=='7')
                cout<<'T';
            else if(s[i]=='8')
                cout<<'B';
            else if(s[i]=='9')
                cout<<'P';
            else
                cout<<s[i];

        }
        cout<<endl;
    }



    return 0;
}

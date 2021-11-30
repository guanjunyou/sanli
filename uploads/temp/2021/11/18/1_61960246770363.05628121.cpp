#include<iostream>
#include<algorithm>
#include<cstring>
using namespace std;
int a[]={0,0,0,0,0,0,0,1,1,1,1,1};//1������ѡ�е�
int g[3][4];
int ans=0;
int dir[4][2]={{1,0},{-1,0},{0,1},{0,-1}};
void dfs(int x,int y)//����ͨ�� ��������һ��1��ʼ���ӿ������Ѹ���������1������ ��ֱ��������0 
{
	g[x][y]=0;//��1���0 
	for(int k=0;k<4;k++)
	{
		int ux=x+dir[k][0];int uy=y+dir[k][1];
		if(ux>=0&&ux<3&&uy>=0||uy<4&&g[ux][uy]==1)
		{
			dfs(ux,uy);	
		}	
	} 
} 
void f()
{
	memset(g,0,sizeof(g));
	for(int i=0;i<12;i++)
	{
		if(a[i]==1)
		g[i/4][i%4]=1;//һάת��ά 
	}
	bool flag=false;
	for(int i=0;i<3;i++){
		for(int j=0;j<4;j++)
		{
			if(g[i][j]==1)
			{
				if(!flag)
				{
					dfs(i,j);
					flag=true;	//������һ����ͨ��ͱ�� 
				} 
				else//������еڶ���1��˵��1û���γ���ͨ����ʱ���� 
				return;
			}
	    }
	}
	ans++;//��ͨ�����1 
}
int main()
{
	do
	{//ö��ȫ���� 
		f();
	}
	while(next_permutation(a,a+12));
	cout<<ans;
	return 0;
}
 

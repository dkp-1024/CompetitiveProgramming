cp $1 backup.cpp
# sed -i.bak '/de()/d' ./$1
# sed -i.bak1  -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' $1
sed -i '/de()/d' ./$1
sed -i '/OO/d' ./$1
sed -i '/cerr/d' ./$1
sed -i '/local.h/d' ./$1
sed -i '/freopen.h/d' ./$1
sed -i  -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' $1
sed -i '/^\s*$/d' $1
sed -e '/freopen/ s/^#*/\/\//' -i $1
ed -s $1 << 'EOF'
0a
#include "bits/stdc++.h"
using namespace std;
#define boost	ios_base::sync_with_stdio(0);cin.tie(NULL);cout<<setprecision(10);cout<<fixed;
#define foreach(it,a)		for(__typeof((a).begin()) it=(a).begin();it!=(a).end();it++)
#define forn(i,n) 			for(int (i)=0;(i)<(int)(n);++(i))
#define rep(i,a,b)			for(int i=(a),_ed=(b);i<=_ed;i++)
#define repr(i,a,b)			for(int i=(a),_ed=(b);i>=_ed;i--)
#define V(T)				vector<T>
#define P(T1, T2)			pair<T1, T2>
#define M(T1, T2)			map<T1, T2>
#define ll					long long int
#define sz(a)				(int) a.size()
#define pb					push_back
#define all(a)				a.begin(), a.end()
static const int inf = 0x3f3f3f3f, mod = (int)1e9+7;const double eps = 1e-10, pi = acos(-1.0);
//.......................//.......................(_dkp_).......................//.......................//
.
$a
//.......................//.......................(_dkp_).......................//.......................//
.
w
EOF
#used sudo ln -s /full/path/to/your/file /usr/local/bin/name_of_new_command to call it from anywhere.
# readlinf -f file_name
# /home/dkp/Desktop/ccc/codebook/hacks/submitting.sh
# sudo ln -sfn /home/dkp/Desktop/ccc/one/hacks/submitting.sh /usr/local/bin/finalize

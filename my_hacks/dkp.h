#include "bits/stdc++.h"
#include "prettyprint.hpp"
using namespace std;
#define sim template < class c
#define ris return * this
#define dor > de & operator <<
#define eni(x) sim > typename \
	enable_if<sizeof dud<c>(0) x 1, de&>::type operator<<(c i) {
sim > struct rge {c b, e; };
sim > rge<c> range(c i, c j) { return rge<c>{i, j}; }
sim > auto dud(c* x) -> decltype(cerr << fixed << *x, 0);
sim > char dud(...);
struct de {
#ifdef KP
~de() { cerr << fixed << endl; }
eni(!=) cerr << fixed << boolalpha << i; ris; }
eni(==) ris << range(begin(i), end(i)); }
sim, class b dor(pair < b, c > d) {
  ris << "(" << d.first << ", " << d.second << ")";
}
sim dor(rge<c> d) {
  *this << "[";
  for (auto it = d.b; it != d.e; ++it)
    *this << ", " + 2 * (it == d.b) << *it;
  ris << "]";
}
#else
sim dor(const c&) { ris; }
#endif
};

// #define oo "running code on line number ", __LINE__, "-------------------"

#define O(...) "[" << #__VA_ARGS__ ": " << (__VA_ARGS__) << "] "
#define TIME()          	clock() * 1.0 / CLOCKS_PER_SEC;  
#define dodo             	"-------" << __LINE__ << "-------";

#define OO(...) __f(#__VA_ARGS__, __VA_ARGS__)
template <typename Arg1>
void __f(const char* name, Arg1&& arg1){
    cerr << name << " : " << arg1 << std::endl;
}
template <typename Arg1, typename... Args>
void __f(const char* names, Arg1&& arg1, Args&&... args){
    const char* comma = strchr(names + 1, ',');cerr.write(names, comma - names) << " : " << arg1<<" | ";__f(comma+1, args...);
}

// sudo cp dkp.h /usr/include/dkp.h

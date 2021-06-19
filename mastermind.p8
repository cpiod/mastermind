pico-8 cartridge // http://www.pico-8.com
version 32
__lua__
poke(0x5f2c,3)k=4p=0c={}l={}s={}::z::cls()t=6+2*k
?k.." COLORS\n"..t.." TRIES",7
for i=0,3do
l[i]=0s[i]=flr(rnd(k))end::_::f=0for i=0,k do
f+=abs(c[i])or 0c[i]=0end
e=0for i=0,3do
if(btnp(i))a=flr(i/2)b=i%2-.5p=(p+2*(1-a)*b)%4l[p]=(l[p]+2*a*b)%k
g=9*i+29circfill(g,50,2,l[i]==8and 7or 8+l[i])pset(g,55,i==p and 6or 0)
if(l[i]==s[i])e+=1else c[l[i]]+=1c[s[i]]-=1end
flip()if btnp(4)then
t-=1
?"\fb"..e.." \f9"..4-e-f/2,9,48
?"",0,128
?e>3and"\asacega4ce"or"\ac"..e+1
if(e>3)k+=1goto z
if(t<1)print("you lose...\asbe4ca3gec",5,55,8)while 1do flip()end
end
goto _

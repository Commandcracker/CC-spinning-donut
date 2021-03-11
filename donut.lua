             local a,b,c,d,e;
         a=0;b=0;c={'.',',','-',
       '~',':',';','=','!','*','#',
     '$','@'}term.clear()d={}e={}while
  1 do os.queueEvent("")os.pullEvent()local
  f,g;g=0;for h=1,1760 do d[h]=0 end;for i=1
 ,1760 do e[i]=' 'end;while g<6.28 do g=g+0.07
 ;f=0;while f<6.28 do f=f+0.02;local j,k,l,m,n
 ,o,p,h,q,r,i,s,t,u       ,v;j=math.sin(f)h=math.
cos(f)k=math.cos(g)         m=math.sin(g)l=math.
sin(a)n=math.cos(a           )o=k+2;p=1/(j*o*l+m*
n+5)q=math.cos(b)r          =math.sin(b)i=j*o*n-m*l;
 s=math.floor(40+30        *p*(h*o*q-i*r))t=math.
 floor(12+15*p*(h*o*r+i*q))u=math.floor(s+80*t)
 v=math.floor(8*((m*l-j*k*n)*q-j*k*l-m*n-h*k*r))
  if 22>t and t>0 and 80>s and s>0 and p>d[u+1]
   then d[u+1]=p;if v>0 then e[u+1]=c[v+1]else
     e[u+1]='.' end end end end;shell.run("cls")
       for h=1,1760  do if h%80~=0 then io.
	     write(tostring(e[h]))else print()end
             end;a=a+0.04;b=b+0.02 end
               -- Too much glaze --

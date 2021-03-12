             local a,b,c,d,
         e,f,g,h;e=math;f=e.floor
     ;g=e.cos;h=e.sin;a=0;b=0;
  c={}d={}term.clear()while 1 do
  os.queueEvent('')os.pullEvent()local
 i,j;j=0;for k=1,1760 do c[k]=0 end;
 for l=1,1760 do d[l]=' 'end;while j<
 6.28 do j=j+0.07;i=0;while i<6.28 do i
=i+0.02;local m,      n,o,p,q,r,s,k,t,
u,l,v,w,x,y;m=h(        i)k=g(i)n=g(j)p=
h(j)o=h(a)q=g(            a)r=n+2;s=1/(m
*r*o+p*q+5)t=g(          b)u=h(b)l=m*r*q
 -p*o;v=f(40+30*        s*(k*r*t-l*u))w
 =f(12+15*s*(k*r*u+l*t))x=f(v+80*w)y=f(
 8*((p*o-m*n*q)*t-m*n*o-p*q-k*n*u))if
  22>w and w>0 and 80>v and v>0 and s>
   c[x+1]then c[x+1]=s;if y>0 then d
     [x+1]=({'.',',','-','~',':',
       ';','=','!','*','#','$','@'
         })[y+1]else d[x+1]='.'
             end end end end

;shell.run("clear")for k=1,1760 do
	if k%80~=0 then io.write(d[k])
else print()end end;a=a+0.04;b=b+0.02 end
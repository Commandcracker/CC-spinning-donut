local a, F, s, z, b
a = 0
F = 0

s = {'.',',','-','~',':',';','=','!','*','#','$','@'}

-- clear screen before starting
term.clear()

z = {}
b = {}


while 1 do
    -- Too long without yielding Fix
    os.queueEvent("")
    os.pullEvent()
    local i,j
    j=0
    -- zeros arrays
    for l=1, 1760 do
        z[l] = 0
    end
    for t=1, 1760 do
        b[t] = ' '
    end
    -- calculate donut
    while j < 6.28 do
        j=j+0.07
        i=0
        while i < 6.28 do
            i=i+0.02

            local c,d,e,f,g,h,D,l,m,n,t,x,y,o,N
            c = math.sin(i)
            l = math.cos(i)
            d = math.cos(j)
            f = math.sin(j)

            e = math.sin(a)
            g = math.cos(a)
            h = d + 2
            D = 1 / (c * h * e + f * g + 5)

            m = math.cos(F)
            n = math.sin(F)
            t = c * h * g - f * e

            x = math.floor(40 + 30 * D * (l * h * m - t * n))
            y = math.floor(12 + 15 * D * (l * h * n + t * m))
            o = math.floor(x + (80 * y))
            N = math.floor(8 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n))

            if 22>y and y>0 and 80>x and x>0 and D>z[o+1] then
                z[o+1] = D
                if N>0 then
                    b[o+1] = s[N+1]
                else
                    b[o+1] = '.'
                end
            end
        end
    end

    -- print
	shell.run("cls")
    for l=1,1760 do
        if l%80 ~= 0 then
            io.write(tostring(b[l]))
        else
            print()
        end
    end
    
    -- increments
    a=a+0.04
    F=F+0.02
end

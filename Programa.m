%Pakeitimas Nr3
%Pavyzdziui
%Dabar programa veiks su 10 ats.sk.
disp('1-iterpimo algoritmas')
disp('2-isrinkimo algoritmas')
disp('3-burbuliuko algoritmas')
evalResponse = input('KOKIU BUDU SPRESIME: ');
SK=[];
%GENERUOJAMAS SKICIU MASYVAS
%n skaiciu nuo 1 iki 1000
n=10;
for i=1:n
   SK=[SK round(1000*rand())]; 
end
disp('Atsitiktine seka:')
SK
%RUSIAVIMAS
if (evalResponse==1) 
    %iterpimo algoritmas
    for i=2:n
        t=SK(i);
        j=i;
        while (j>1) & (t<SK(j-1))
            SK(j)=SK(j-1);
            j=j-1;
        end
        SK(j)= t;
    end
end

if (evalResponse==2) 
    %isrinkimo algoritmas
    for i=1:(n-1)
        min=i;
        for j=(i+1):n
            if SK(j)<SK(min) 
                min=j;
            end   
                t=SK(min);
                SK(min)=SK(i);
                SK(i)=t;
        end
    end
end

if (evalResponse==3) 
    %BURBULIUKAS
    for i=n:-1:1
        for j=2:i
         if  SK(j-1)>SK(j)
             t=SK(j-1);
             SK(j-1)=SK(j);
             SK(j)=t;
         end
        end
    end
end
disp('Surusiuota seka:')
SK
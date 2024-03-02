clear all
a=2;b=5;c=-100;d=4;N1=20;N2=20;
h1=(b-a)/N1;h2=(d-c)/N2;
U=zeros(N1+1,N2+1);
y=d;
U(1,1:11)=17;
for m=1:N2+1
    U(m,1)=y^2+1;
    y=y-1;
end
Y=zeros(N1,1);
X=2;
for x=2+h1:h1:5
    X(end+1)=x;
end
Y=c;
for y=c+h2:h2:d
    Y(end+1)=y;
end
for j=1:N2
    for i=1:N1
        U(i+1,j+1)=(U(i,j)-X(i)*Y(j)-Y(j)*((U(i,j)-U(i,j+1))/h2))*h1/X(i)+U(i,j)
    end
end


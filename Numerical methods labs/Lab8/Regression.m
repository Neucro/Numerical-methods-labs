clc
clear all;
close all;
n=input('Enter number of data points: ')
for i=1:n
    fprintf('enter data set =%d\n',i)
    x(i)=input('x value :');
    y(i)=input('y valur :');
end
sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
for(i=1:n)
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+x(i)*y(i);
    sumxsq=sumxsq+x(i)^2;
end
a1=(n*sumxy-sumx*sumy)/(n*sumxsq-sumx^2)
a0=(sumy/n)-a1*sumx/n
plot(x,y,'o');
hold on;
ym=a0+a1.*x;
plot(x,ym)
legend('Actual data points','Fitted straight line')
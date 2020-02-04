clear all;
clc;
t=-10:.1:10;
parabola=.5*(t.^2);
subplot(2,2,1);
stem(t,parabola);
xlabel(' time n-->');
ylabel('Amplitude-->');
title('Unit Parabola sequence');


for i=1:length(t)
    if t(i)<0
        y(i)=0;
    else if t(i)==0
         y(i) = 1;
        else if t(i)>0
                y(i)=0;
            end
        end
    end
end

subplot(2,2,2);
stem(t,y);
xlabel(' time n-->');
ylabel('Amplitude-->');
title('Unit Impulse sequence');

for i=1:length(y)
    add(i) = parabola(i)+y(i);
end


subplot(2,2,3:4);
stem(t,add);
xlabel(' time n-->');
ylabel('Amplitude-->');
axis([-2 2 0 1]);
title('Addition of unit parabolic and impulse function');
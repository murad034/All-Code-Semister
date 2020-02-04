clear all;
clc;
t=-10:.01:10;
parabola=.5*(t.^2);
subplot(3,2,1);
plot(t,parabola);
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

subplot(3,2,2);
plot(t,y);
xlabel(' time n-->');
ylabel('Amplitude-->');
title('Unit Impulse sequence');

for i=1:length(y)
    add(i) = parabola(i)+y(i);
end


subplot(3,2,3);
plot(t,add);
xlabel(' time n-->');
ylabel('Amplitude-->');
axis([-2 2 0 1]);
title('Addition of unit parabolic and impulse function');

subplot(3,2,4);
plot(2*t,add);
xlabel(' time n-->');
ylabel('Amplitude-->');
axis([-4 4 0 1]);
title('Expanded of unit parabolic and impulse function');

subplot(3,2,5);
plot(t/2,add);
xlabel(' time n-->');
ylabel('Amplitude-->');
axis([-4 4 0 1]);
title(' Compressed of unit parabolic and impulse function');
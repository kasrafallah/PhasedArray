
% Question 1
clc
clear
close all
%% Part a
teta = 0:pi/10000:pi;
landa = 1;
Pattern90 = landa/2;
k0 = 2*pi/landa;
ci = k0*Pattern90.*cos(teta);
AF_1 = (1/4).*(1+exp(1i.*ci)+exp(7i.*ci)+exp(9i.*ci));
output = figure('Name','Normalizaed Array Factor');
plot(180.*(teta./pi), abs(AF_1))
x = 180.*(teta./pi);
y = abs(AF_1);
[ymin imin] = min(y);
secondMin = min(y(y~=ymin));
secondMinIndex = find(y==secondMin);
x2min = x(secondMinIndex);
xmin = x(imin);
hold on
style = 'ro';
markersize = 10; 
plot(x(imin), ymin, style, 'markersize', markersize)
offset = -.05; 
text(x(imin),ymin+diff(ylim)*offset,['(' num2str(x(imin)) ',' num2str(ymin) ')'])
hold on
style = 'ro'; 
markersize = 10; 
plot(x(secondMinIndex), secondMin, style, 'markersize', markersize)
offset = -.05; 
text(x(secondMinIndex),secondMin+diff(ylim)*offset,...
    ['(' num2str(x(secondMinIndex)) ',' num2str(secondMin) ')'])
ylim(ylim+[diff(ylim)*offset*(offset<0) 0])
title("Normalizaed Array Factor")
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
saveas(output,"Normalizaed Array Factor",'png')
%% Part b
landa = 1;
Pattern90 = landa/2;
k0 = 2*pi/landa;
ci = k0*Pattern90.*cos(teta);

AF_2 = sin((10.*ci)/2)./(10.*sin(ci./2));
output1 = figure('Name','Normalizaed Array Factor');
plot(180.*(teta./pi), abs(AF_2))
title('Normalizaed  Uniform Array Factor for N = 10 and d = \lambda/2')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor


landa = 1;
Pattern90 = 2*landa;
k0 = 2*pi/landa;
ci = k0*Pattern90.*cos(teta);

AF_3 = sin((10.*ci)/2)./(10.*sin(ci./2));
output1 = figure('Name','Normalizaed Array Factor');
plot(180.*(teta./pi), abs(AF_3))
title('Normalizaed  Uniform Array Factor for N = 10 and d = 2 \lambda')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
%saveas(output1,"Uniform Array Factor d = lambda/2",'png')


figure;
plot(180.*(teta./pi), abs(AF_1))
hold on;
plot(180.*(teta./pi), abs(AF_2))
hold on;
plot(180.*(teta./pi), abs(AF_3))
hold on;
plot(180.*(teta./pi), (1/sqrt(2))*ones(1, length(teta)),'c-.')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
legend('4 elemnt', '10 element d = \lambda /2', '10 element d = 2 \lambda', 'half band')
%% Part c


teta = 0:pi/10000:pi;
landa = 1;
Pattern90 = landa/2;
k0 = 2*pi/landa;
ci = k0*Pattern90.*cos(teta);
AF_1 = (1/4).*(1+exp(1i.*ci)+exp(4i.*ci)+exp(6i.*ci));
output = figure('Name','Normalizaed Array Factor');
plot(180.*(teta./pi), abs(AF_1))
x = 180.*(teta./pi);
y = abs(AF_1);
[ymin imin] = min(y);
secondMin = min(y(y~=ymin));
secondMinIndex = find(y==secondMin);
x2min = x(secondMinIndex);
xmin = x(imin);
hold on
style = 'ro';
markersize = 10; 
plot(x(imin), ymin, style, 'markersize', markersize)
offset = -.05; 
text(x(imin),ymin+diff(ylim)*offset,['(' num2str(x(imin)) ',' num2str(ymin) ')'])
hold on
style = 'ro'; 
markersize = 10; 
plot(x(secondMinIndex), secondMin, style, 'markersize', markersize)
offset = -.05; 
text(x(secondMinIndex),secondMin+diff(ylim)*offset,...
    ['(' num2str(x(secondMinIndex)) ',' num2str(secondMin) ')'])
ylim(ylim+[diff(ylim)*offset*(offset<0) 0])
landa = 1;
Pattern90 = landa/2;
k0 = 2*pi/landa;
ci = k0*Pattern90.*cos(teta);
hold on;
N = 9
AF_2 = sin((N.*ci)/2)./(N.*sin(ci./2));
plot(180.*(teta./pi), abs(AF_2))
title('Normalizaed  Uniform Array Factor for N = 9 and d = \lambda/2')
legend('4 elemnt', '9 element d = \lambda /2')

xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
%%
%part d
a = csvread('ElementPattern.csv',1,0)
teta = a(:,3);
AF_real = a(:,4);
figure;
plot(teta, AF_real)
hold on, 
plot(teta, (1/sqrt(2))*ones(1, length(teta)),'c-.')

title('Real array pattern')
legend('4 elemnt', '9 element d = \lambda /2')

xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
%%
%parte



%%

%Q2
clc
clear
close all
%% Part a
teta = -180:0.01:180;
phi = 0;
phases = zeros(1, 7);
R1 = (2.5e-3)*...
     [3 0 0; ...
      2 0 0; ...
      1 0 0; ...
      0 0 0; ...
     -1 0 0; ...
     -2 0 0; ...
     -3 0 0];
out = zeros(1, length(teta));
for t = 1:length(teta)
    out(t) = Array_beam_cal(R1,phases,teta(t),phi);
end
figure;
plot(teta, out)
title('Array Factor for R1 ')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor

%% Part b
teta = -180:0.01:180;
phi = 0;
phases = zeros(1, 7);
R2 = (5e-3).*...
    [3 0 0;...
     2 0 0;...
     1 0 0;...
     0 0 0;...
    -1 0 0;...
    -2 0 0;...
    -3 0 0];
out2 = zeros(1, length(teta));
for t = 1:length(teta)
    out2(t) = Array_beam_cal(R2,phases,teta(t),phi);
end
figure
plot(teta, out2)
title('Array Factor for R2')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
%%
% compare

figure()
plot(teta, out)
hold on;
plot(teta, out2)
title('comparing')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
legend(['R1','R2'])
%% Part c
teta = -180:0.01:180;
phi = 0;
phases = zeros(1, 7);
R3 = (5e-3).*...
    ([3 + 0.4 *randn() 0 0; ...
      2 + 0.4 *randn() 0 0; ...
      1 + 0.4 *randn() 0 0; ...
      0 + 0.4 *randn() 0 0; ...
     -1 + 0.4 *randn() 0 0; ...
     -2 + 0.4 *randn() 0 0; ...
     -3 + 0.4 *randn() 0 0]+R_random);
out3 = zeros(1, length(teta));
for t = 1:length(teta)
    out3(t) = Array_beam_cal(R3,phases,teta(t),phi);
end
figure
plot(teta, out3)
title('Array Factor for R3')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor
%% Part d
teta = -180:1:180;
phi = 0;
phases = zeros(1, 7);
figure;
filename = 'Partd.gif';
temp = [];
for n = 1:100
    R3 = (5e-3).*...
        ([3 + 0.4 *randn() 0 0; ...
          2 + 0.4 *randn() 0 0; ...
          1 + 0.4 *randn() 0 0; ...
          0 + 0.4 *randn() 0 0; ...
         -1 + 0.4 *randn() 0 0; ...
         -2 + 0.4 *randn() 0 0; ...
         -3 + 0.4 *randn() 0 0]+R_random);
    temp = [temp, R3]
    out4 = zeros(1, length(teta));
    for t = 1:length(teta)
        out4(t) = Array_beam_cal(R3,phases,teta(t),phi);
    end
    subplot(10,10,n)
    plot(teta, out4)
    title('Array Factor for R3 in term of time')
    xlabel('theta (degree)')
    ylabel('|AF|')
    grid on
    grid minor
    pause(0.5)
    frame = getframe(1);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if n == 1;
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
end


%%
%best choose
teta = -180:0.01:180;
phi = 0;
phases = zeros(1, 7);
R2 = ...
    [0.0135 0 0;...
     0.0117   0 0;...
    0.0058 0 0;...
     -0.0009 0 0;...
    -0.0062  0 0;...
    -0.0169 0 0;...
    -0.0200  0 0];

out2 = zeros(1, length(teta));
for t = 1:length(teta)
    out2(t) = Array_beam_cal(R2,phases,teta(t),phi);
end
figure
plot(teta, out2)
title('Best possible Number 94')
xlabel('theta (degree)')
ylabel('|AF|')
grid on
grid minor

%%
% part e


%%
%Q3
clc
clear
close all
%% Part b
pattern= csvread('Trogon.csv',1,0);
figure;
teta = -180:2:180;
phi = 0:2:360;
AF = reshape(pattern(:, 3), length(phi), length(phi));
surf(teta, phi, AF,'FaceAlpha',1)
hold on
imagesc(teta, phi, AF)
title('3D Pattern')
xlabel('theta (degree)')
ylabel('phi (degree)')
colorbar
s.EdgeColor = 'none';
figure;
imagesc(teta, phi, AF)
title('3D Pattern')
xlabel('theta (degree)')
ylabel('phi (degree)')
%% Part c
figure
[teta, phi] = meshgrid(teta, phi);
contourf(teta, phi, AF,[10,5,3,0,-3,-5,-10,-15,-20,-40]...
    , 'ShowText','on')
title('3D Pattern')
xlabel('theta (degree)')
ylabel('phi (degree)')
%% Part d

figure
plot(teta, AF(1, :))
hold on; 
plot(teta, (max(AF(1, :))-3)*ones(1, length(teta)), '--')
[maxvalue,indexmax] = max(AF(1, :));
hold on;
plot(teta(indexmax), maxvalue,'ro')
hold on;
plot(teta, zeros([1,length(teta)]),'k','LineWidth',2)
hold on;
plot(zeros([1,length(teta)]), linspace(-40,10,length(teta)),'k','LineWidth',2)
title('Antenna Gain for phi=0')
xlabel('theta (degree)')
ylabel('Gain (dB)')
legend('-3dB level')
grid on
grid minor
xlim([-180,180])
ylim([-35,10])
%% Part e
a = (pattern (:,1) == 90)
b= pattern (:,3);
c = pattern (:,2);
Pattern90 = b(a);
teta = c(a);
figure;
plot(teta, Pattern90)
hold on; 
plot(teta, (max(Pattern90)-3)*ones(1, length(teta)), '--')
[maxvalue,indexmax] = max(Pattern90);
hold on;
plot(teta(indexmax), maxvalue,'ro')
hold on;
plot(teta, zeros([1,length(teta)]),'k','LineWidth',2)
hold on;
plot(zeros([1,length(teta)]), linspace(-40,10,length(teta)),'k','LineWidth',2)
title('Antenna Gain for \phi=90')
xlabel('theta (degree)')
ylabel('Gain (dB)')
legend('-3dB level')
grid on
grid minor
xlim([-180,180])
ylim([-17,10])
%%
% Q4
clc
clear
close all
%%
%parta
Trogon_Sparam = csvread('Trogon_Sparam.csv',1,0);
frequency = Trogon_Sparam(:,1) *10 ^9;
max(frequency)
min (frequency)


%% Part b


S11, S12, S21, S22 = Trogon_Sparam(:, 2), Trogon_Sparam(:, 3),...
                Trogon_Sparam(:, 4), Trogon_Sparam(:, 5);

figure;
plot(frequency, S11,'--o')
hold on;
plot(frequency, S12,'.')
hold on;
plot(frequency, S21,'--o')
hold on;
plot(frequency, S22,'.')
ylabel('amplitude (dB)')
xlabel('frequency (Hz)')
legend('S_1_1', 'S_1_2','S_2_1', 'S_2_2')
grid on; grid minor;
%% Part c
figure

plot(frequency, S11,'--')
hold on;
plot(frequency, -10.*ones(1, length(frequency)))
ylabel('AF(dB)')
xlabel('frequency (Hz)')
legend('S_11 or S_22', '-10dB')
grid on;
grid minor;
%%
%Q5
%%
clc
clear
close all
%% Part a
teta = -pi : pi / 1000 : pi;
landa = 1;
d = landa/2;
k0 = 2*pi/landa;
N = 10;
psi = k0*d.*sin(teta);
phi = pi/2;

figure;
AF = sin(N.*( psi + phi) / 2) ./...
    (N .* sin(( psi + phi ) ./2 ));

plot( 180.*(teta./pi), abs(AF))
hold on;
plot(teta *180 / pi,(1/sqrt(2))*max(abs(AF)).*ones(1, length(teta)),'-.' )
title('Araay factor for \Delta\phi=\pi/2')
xlabel('teta')
ylabel('AF')
grid on; grid minor;
ylim([0,1])
xlim([-180,180])

%% Part b
teta = -pi : pi / 1000 : pi;
landa = 1;
d = landa/2;
k0 = 2*pi/landa;
N = 10;
psi = k0*d.*sin(teta);
phi = pi;

figure;
AF = sin(N.*( psi + phi) / 2) ./...
    (N .* sin(( psi + phi ) ./2 ));

plot( 180.*(teta./pi), abs(AF))
hold on;
plot(teta *180 / pi,(1/sqrt(2))*max(abs(AF)).*ones(1, length(teta)),'-.' )
title('Araay factor for \Delta\phi=\pi')
xlabel('teta')
ylabel('AF')
grid on; grid minor;
ylim([0,1])
xlim([-180,180])
%% Part c
teta = pi/2:pi/100:3*pi/2;
f = 50 * 10 ^9: 10 ^8:70 * 10 ^9;
f_0 = 60e9;
c = 3 * 10 ^ 8;
lambda_0 = c/f_0;
landa = c./f;
d = (c/f_0)/2;
k0 = 2*pi./landa;
N = 10;
phi = pi/4;
theta_mainlobe = zeros(1, length(f));
figure;
filename = 'Q5.gif';
for i = 1:length(f)
    AF = sin(N.*( d*k0(i).*sin(teta) + phi)/2)...
        ./(N.*sin((d*k0(i).*sin(teta)+phi)./2));
    plot(180.*(teta./pi), abs(AF))
    grid on ; grid minor;
    hold on;
    title(['frequency is', num2str(f(i))])
    [~, theta_mainlobe(i)] = max(abs(AF));
    pause(0.01)
    frame = getframe(1);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if i == 1;
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
end

figure
plot(f.*1e-9, 180.*(teta(theta_mainlobe)/pi)-180)
title('beam turning Vs. Frequency')
xlabel('frequecny')
ylabel('theta')
grid on; grid minor;
%% Part d
teta = pi/2:pi/1000:3*pi/2;
f = 50e9:0.01e9:70e9;
f_0 = 60e9;
c = 3e8;
lambda_0 = c/f_0;
landa = c./f;
d = lambda_0/2;
k0 = 2*pi./landa;
N = 10;
theta_mainlobe = zeros(1, length(f));
for i = 1:length(f)
    psi = d*k0(i).*sin(teta);
    phi = lambda_0.*k0(i);
    AF = sin(N.*(psi+phi)/2)./(N.*sin((psi+phi)./2));
    plot(180.*(teta./pi), abs(AF))
    [~, theta_mainlobe(i)] = max(abs(AF));
end
figure
plot(f.*1e-9, 180.*(teta(theta_mainlobe)/pi)-180)
title('\theta Scanning by Frequency with \lambda_0 Inter-Element Feed Section')
xlabel('frequecny (GHz)')
ylabel('\theta (degree)')














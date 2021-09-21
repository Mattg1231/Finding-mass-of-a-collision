% Matthew Gjanci
% ECE 202 Exercise M2
% 9/12/2021
% Elastic collision between two cars in 1D
%Discription: In this code, we are solving for an unknown mass between two
%carts colliding in 1d. Energy is being conserved and our cart with unknown
%mass has its final velocity given. From there we solve for the final
%velocity of the other cart with known mass, and we use checks to make sure
%that energy and momentum is conserved

clear

% ------GIVEN VARIABLES------

m2 = 150; % The mass of cart 1 units in grams
v1i = 30; % The initial velocity of cart 1 units in cm/s
v2i = -30; % The initial velocity of cart 2 units in cm/s
v1f = 0; % The final velocity of cart 1 units in cm/s

% -------CALCULATIONS-------
%equations used:

%equation used to find the mass of cart 1 units in grams
m1 = m2*(2*v2i - v1f - v1i) / (v1f-v1i)  

M = m1+m2; % Both masses of carts added up unit in grams
%here we combine mass into M in order to simplify our equation

% equation used to find the final velocity of cart 2
v2f = (2*m1*v1i + (m2-m1)*v2i)/M % cm/s


% ------- checking ------

dvf = v1f - (2*m2*v2i + (m1-m2)*v1i)/M 
% the equation above shows change in the final velocity given compared to 
% the final velocity that is found using the mass previously calculated.
% This should come out to 0 equations above are correct, units in cm/s

%checking answer through conservation of momentum 
pi = m1*v1i + m2*v2i; % these equations give the initial and final
pf = m1*v1f + m2*v2f; % momentum for the system, in g*cm/s

dp = pi - pf    % the change in momentum, which should be 0 if the
                % equations above are correct, units in g*cm/s

%checking answer through conservation of energy
KEi = (1/2)*m1*v1i^2 + (1/2)*m2*v2i^2; % These are the initial and final
KEf = (1/2)*m1*v1f^2 + (1/2)*m2*v2f^2; % Kinetic energy(KE) values of the 
% system, in ergs, which should be 0 as energy is conserved

dKE = KEi - KEf % prints out the change in KE, which should be 0, in ergs

%The design was successful. After calculating m1 and using that value to
%calculate v1f, we can see that it comes out to be 0 proving that the
%design we used works and was successful.
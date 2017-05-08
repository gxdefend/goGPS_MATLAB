function readleap

% read leap seconds data file

% output via global

%  jdateleap = array of utc julian dates
%  leapsec   = array of leap seconds

% Orbital Mechanics with Matlab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global jdateleap leapsec

% I cannot load this external file when the program is deployed
% Set here manually the leap-seconds as julian date
%leapdata = csvread('tai-utc.dat');
leapdata = [2441317.5,  10.0;
 2441499.5,  11.0;
 2441683.5,  12.0;
 2442048.5,  13.0;
 2442413.5,  14.0;
 2442778.5,  15.0;
 2443144.5,  16.0;
 2443509.5,  17.0;
 2443874.5,  18.0;
 2444239.5,  19.0;
 2444786.5,  20.0;
 2445151.5,  21.0;
 2445516.5,  22.0;
 2446247.5,  23.0;
 2447161.5,  24.0;
 2447892.5,  25.0;
 2448257.5,  26.0;
 2448804.5,  27.0;
 2449169.5,  28.0;
 2449534.5,  29.0;
 2450083.5,  30.0;
 2450630.5,  31.0;
 2451179.5,  32.0;
 2453736.5,  33.0;
 2454832.5,  34.0;
 2456109.5,  35.0;
 2457204.5,  36.0;
 2457754.5,  37.0];

% find length of data arrays

ndata = length(leapdata);

% put julian dates and leap seconds into data arrays

for i = 1:1:ndata
    
    jdateleap(i) = leapdata(i, 1);

    leapsec(i) = leapdata(i, 2);
    
end


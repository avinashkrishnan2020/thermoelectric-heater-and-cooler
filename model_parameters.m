%% Top heat sink
m_sink_top = 0.170; % Kg
R_sink_top = 0.5; % degC/W

% Specific heat capacity for 6035-T5 Aluminium
% Ref: https://www.matweb.com/search/DataSheet.aspx?MatGUID=79875d1b30c94af39029470988004fb6&ckck=1
c_sink_top = 0.9e3; % J/Kg.degC 

Cap_sink_top = m_sink_top*c_sink_top; % Thermal capacitance of top heat sink


%% Bottom heat Sink

m_sink_bottom = 0.650; % Kg
R_sink_bottom = 0.16; % degC/W

% Specific heat capacity for 6035-T5 Aluminium
% Ref: https://www.matweb.com/search/DataSheet.aspx?MatGUID=79875d1b30c94af39029470988004fb6&ckck=1
c_sink_bottom = 0.9e3; % J/Kg.degC 

Cap_sink_bottom = m_sink_bottom*c_sink_bottom; % Thermal capacitance of top heat sink

%% Environmental conditions

T_amb = 23; % Ambient Temp degC

%% Enclosure Specifications

V = 0.065*0.135*0.095; % Volume of cube (m-3). 
rho = 1.2983; % Density of air (kg/m-3)
c_air = 1.87e3; % Specific heat capacity of air (J/Kg.degC). Ref: https://www.withouthotair.com/cI/page_334.shtml#:~:text=Heat%20capacities&text=So%20the%20heat%20capacity%20of,%2Fm3%2F%C2%B0C.&text=heat%20capacity%3A%201.87%20kJ%2Fkg%2F%C2%B0C.
w = 10e-3; % wall thickness (m)
A_wall = 0.135*0.095; % Area of wall (m-2). Need to change. This is test value
k_wall = 0.1; % Thermal conductivity of XPS (W/m-degC)

R_wall = (w/(k_wall*A_wall)); % Total thermal resistance of walls
%% TEM Specifications

Sm = 0.546; % Seebeck Coefficient (V/degC)
Rm = 3.05; % TEM resistance (ohm)
Km = 8.48e-3; % TEM Thermal conductance (W/degC)
n = 254; % Number of pellets
A_tem = 0.001^2; % Surface area of each face of TEM module (m-2) 
L = 2e-3; % Height of pellet

%% COntrol surface surrounding hot side

V_control = 0.3^3; %Volume of cube (m-3). Need to change. This is test value


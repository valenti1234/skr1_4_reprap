; Configuration file for SKR v1.4 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.2.1-LPC+17 on Sat Jul 03 2021 15:18:14 GMT+0100 (British Summer Time)

; General preferences
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"My Printer"                             ; set printer name

; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards using default driver timings
M569 P1 S1                                     ; physical drive 1 goes forwards using default driver timings
M569 P2 S1                                     ; physical drive 2 goes forwards using default driver timings
M569 P3 S1                                     ; physical drive 3 goes forwards using default driver timings
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 Z16 E16 I1                        ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z400.00 E420.00              ; set steps per mm
M566 X900.00 Y900.00 Z60.00 E120.00            ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00        ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00            ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30                   ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X230 Y210 Z200 S0                         ; set axis maxima

; Endstops
M574 X1 S1 P"xstop"                            ; configure active-high endstop for low end on X via pin xstop
M574 Y1 S1 P"ystop"                            ; configure active-high endstop for low end on Y via pin ystop

; Z-Probe
M950 S0 C"servo0"                              ; create servo pin 0 for BLTouch
M558 P9 C"^probe" H5 F120 T6000                ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X0 Y0 Z2.5                            ; set Z probe trigger value, offset and trigger height
M557 X15:215 Y15:195 S20                       ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4092 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bed" T0                              ; create bed heater output on bed and map it to sensor 0
M307 H0 B0 S1.00                               ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                        ; map heated bed to heater 0
M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
M308 S1 P"e0temp" Y"thermistor" T100000 B4092  ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S280                                   ; set temperature limit for heater 1 to 280C

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined


Config { 
    font = "xft:Droid Sans Mono:size=9:bold:antialias=true",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Top, --Static { xpos = 0, ypos = 0, width = 3840, height = 32 },
    lowerOnStart = True,
    commands =
	[ Run Memory ["-t","<used>/<total>M (<cache>M)","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10        
        ,Run Battery        [ "--template" , "Batt: <acstatus>"
                             , "--Low"      , "10"        -- units: %
                             , "--High"     , "80"        -- units: %
                             , "--low"      , "darkred"
                             , "--normal"   , "darkorange"
                             , "--high"     , "darkgreen"

                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"	, "<left>% (<timeleft>)"
                                       -- AC "on" status
                                       , "-O"	, "<fc=#dAA520>Charging</fc>"
                                       -- charged status
                                       , "-i"	, "<fc=#006000>Charged</fc>"
                             ] 50
        ,Run Date "%Y.%m.%d %H:%M:%S" "date" 10
        ,Run MultiCpu [ "--template" , "<autototal>"
            , "--Low"      , "50"         -- units: %
            , "--High"     , "85"         -- units: %
            , "--low"      , "gray"
            , "--normal"   , "darkorange"
            , "--high"     , "darkred"
            , "-c"         , " "
            , "-w"         , "3"
        ] 10
        ,Run StdinReader
        ,Run CoreTemp [ "--template" , "<core0> <core1> <core2> <core3> <core4>°C"
            , "--Low"      , "70"        -- units: °C
            , "--High"     , "80"        -- units: °C
            , "--low"      , "darkgreen"
            , "--normal"   , "darkorange"
            , "--high"     , "darkred"
        ] 50
    ],
    sepChar = "%",
    alignSep = "}{",
    template = " %StdinReader% }{ %battery% | %coretemp% | %multicpu% | %memory% | <fc=#FFFFCC>%date%</fc>   "
}

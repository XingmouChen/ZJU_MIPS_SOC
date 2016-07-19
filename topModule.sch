<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="CLK_100MHZ" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="CR" />
        <signal name="XLXN_10(4:0)" />
        <signal name="RDY" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="rst" />
        <signal name="SW_OK(2)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="blink(7:0)" />
        <signal name="Div(31:0)" />
        <signal name="Clk_CPU" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="SEG_CLK" />
        <signal name="SEG_SOUT" />
        <signal name="SEG_PEN" />
        <signal name="SEG_CLRN" />
        <signal name="XLXN_74(31:0)" />
        <signal name="XLXN_76(7:0)" />
        <signal name="XLXN_77(7:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="SW_OK(7:5)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="inst(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="XLXN_137" />
        <signal name="READN" />
        <signal name="N0,N0,PC(31:2)" />
        <signal name="Counter_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="IO_clk" />
        <signal name="CPU2IO(31:0)" />
        <signal name="XLXN_178(1:0)" />
        <signal name="XLXN_180" />
        <signal name="XLXN_181" />
        <signal name="XLXN_183" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="LED_out(15:0)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="GPIOFO" />
        <signal name="XLXN_202" />
        <signal name="V5" />
        <signal name="N0" />
        <signal name="Buzzer" />
        <signal name="XLXN_205" />
        <signal name="XLXN_206" />
        <signal name="XLXN_210" />
        <signal name="State(4:0)" />
        <signal name="XLXN_220(31:0)" />
        <signal name="XLXN_221(9:0)" />
        <signal name="XLXN_222(31:0)" />
        <signal name="XLXN_223(0:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="CLK_100MHZ" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="SEG_CLK" />
        <port polarity="Output" name="SEG_SOUT" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="SEG_CLRN" />
        <port polarity="Output" name="READN" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="Buzzer" />
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2016-2-25T4:28:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-7-10T17:42:55</timestamp>
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
            <rect width="512" x="32" y="32" height="360" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2016-3-8T13:17:45</timestamp>
            <rect width="320" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-876" height="24" />
            <line x2="448" y1="-864" y2="-864" x1="384" />
            <rect width="64" x="384" y="-460" height="24" />
            <line x2="448" y1="-448" y2="-448" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="Multi_CPU">
            <timestamp>2016-6-14T9:9:15</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="XLXI_1">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="READN" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="CLK_100MHZ" name="clk" />
            <blockpin signalname="XLXN_10(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="XLXI_2">
            <blockpin signalname="READN" name="readn" />
            <blockpin name="Ai(31:0)" />
            <blockpin name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_10(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="CLK_100MHZ" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="clk_div" name="XLXI_3">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="CLK_100MHZ" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="SSeg7_Dev" name="XLXI_5">
            <blockpin signalname="XLXN_77(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="SEG_SOUT" name="seg_sout" />
            <blockpin signalname="SEG_CLRN" name="seg_clrn" />
            <blockpin signalname="XLXN_76(7:0)" name="point(7:0)" />
            <blockpin signalname="XLXN_74(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SEG_CLK" name="seg_clk" />
            <blockpin signalname="CLK_100MHZ" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Multi_8CH32" name="XLXI_18">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_202" name="EN" />
            <blockpin signalname="SW_OK(7:5)" name="S(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="blink_in(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="N0,N0,PC(31:2)" name="Data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="Data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="Data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="Data7(31:0)" />
            <blockpin signalname="XLXN_74(31:0)" name="Disp_num(31:0)" />
            <blockpin signalname="XLXN_76(7:0)" name="point_out(7:0)" />
            <blockpin signalname="XLXN_77(7:0)" name="blink_out(7:0)" />
        </block>
        <block symbolname="MIO_BUS" name="XLXI_33">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="CLK_100MHZ" name="clk" />
            <blockpin signalname="XLXN_137" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_220(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_221(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_223(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_222(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_180" name="counter2_out" />
            <blockpin signalname="XLXN_181" name="counter1_out" />
            <blockpin signalname="XLXN_205" name="counter0_out" />
            <blockpin signalname="XLXN_183" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="LED_out(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_202" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOFO" name="GPIOf0000000_we" />
        </block>
        <block symbolname="Counter_x" name="XLXI_34">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_183" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_178(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_205" name="counter0_OUT" />
            <blockpin signalname="XLXN_181" name="counter1_OUT" />
            <blockpin signalname="XLXN_180" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_35">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="SPIO" name="XLXI_36">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOFO" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin signalname="LED_out(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_178(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_14">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="Buzzer" name="P" />
        </block>
        <block symbolname="Multi_CPU" name="XLXI_40">
            <blockpin signalname="XLXN_205" name="INT" />
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="XLXN_206" name="MIO_ready" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="XLXN_137" name="mem_w" />
            <blockpin signalname="XLXN_210" name="CPU_MIO" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="inst(31:0)" name="inst_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="State(4:0)" name="state(4:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_41">
            <blockpin signalname="XLXN_206" name="P" />
        </block>
        <block symbolname="RAM_B" name="XLXI_46">
            <blockpin signalname="XLXN_221(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_222(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_223(0:0)" name="wea(0:0)" />
            <blockpin signalname="CLK_100MHZ" name="clka" />
            <blockpin signalname="XLXN_220(31:0)" name="douta(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1072" y="576" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1968" y="592" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1104" y="896" name="XLXI_3" orien="R0">
        </instance>
        <instance x="3024" y="624" name="XLXI_5" orien="R0">
        </instance>
        <branch name="RSTN">
            <wire x2="1104" y1="352" y2="352" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="352" name="RSTN" orien="R180" />
        <branch name="BTN_y(3:0)">
            <wire x2="1104" y1="416" y2="416" x1="544" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="1104" y1="464" y2="464" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="416" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="544" y="464" name="BTN_x(4:0)" orien="R180" />
        <branch name="SW(15:0)">
            <wire x2="800" y1="640" y2="640" x1="480" />
            <wire x2="800" y1="512" y2="640" x1="800" />
            <wire x2="1104" y1="512" y2="512" x1="800" />
        </branch>
        <iomarker fontsize="28" x="480" y="640" name="SW(15:0)" orien="R180" />
        <branch name="CR">
            <wire x2="1504" y1="352" y2="352" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="352" name="CR" orien="R0" />
        <branch name="XLXN_10(4:0)">
            <wire x2="1968" y1="384" y2="384" x1="1472" />
        </branch>
        <branch name="RDY">
            <wire x2="1760" y1="416" y2="416" x1="1472" />
            <wire x2="1968" y1="416" y2="416" x1="1760" />
            <wire x2="1760" y1="320" y2="416" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="320" name="RDY" orien="R270" />
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1552" y="448" type="branch" />
            <wire x2="1552" y1="448" y2="448" x1="1472" />
            <wire x2="1568" y1="448" y2="448" x1="1552" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="480" type="branch" />
            <wire x2="1600" y1="480" y2="480" x1="1472" />
            <wire x2="1680" y1="480" y2="480" x1="1600" />
        </branch>
        <bustap x2="1776" y1="480" y2="480" x1="1680" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="480" type="branch" />
            <wire x2="1888" y1="480" y2="480" x1="1776" />
            <wire x2="1968" y1="480" y2="480" x1="1888" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="864" type="branch" />
            <wire x2="1056" y1="864" y2="864" x1="1024" />
            <wire x2="1104" y1="864" y2="864" x1="1056" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="528" type="branch" />
            <wire x2="1520" y1="528" y2="528" x1="1472" />
            <wire x2="1584" y1="528" y2="528" x1="1520" />
            <wire x2="1584" y1="528" y2="544" x1="1584" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="560" type="branch" />
            <wire x2="1040" y1="672" y2="816" x1="1040" />
            <wire x2="1104" y1="816" y2="816" x1="1040" />
            <wire x2="1040" y1="816" y2="1440" x1="1040" />
            <wire x2="1616" y1="1440" y2="1440" x1="1040" />
            <wire x2="1616" y1="1440" y2="2304" x1="1616" />
            <wire x2="1968" y1="2304" y2="2304" x1="1616" />
            <wire x2="2192" y1="2304" y2="2304" x1="1968" />
            <wire x2="1968" y1="2304" y2="3568" x1="1968" />
            <wire x2="2160" y1="3568" y2="3568" x1="1968" />
            <wire x2="1040" y1="1440" y2="2640" x1="1040" />
            <wire x2="1216" y1="2640" y2="2640" x1="1040" />
            <wire x2="1552" y1="672" y2="672" x1="1040" />
            <wire x2="2960" y1="672" y2="672" x1="1552" />
            <wire x2="2960" y1="672" y2="1200" x1="2960" />
            <wire x2="3120" y1="1200" y2="1200" x1="2960" />
            <wire x2="3600" y1="1200" y2="1200" x1="3120" />
            <wire x2="1504" y1="560" y2="560" x1="1472" />
            <wire x2="1552" y1="560" y2="560" x1="1504" />
            <wire x2="1552" y1="560" y2="672" x1="1552" />
            <wire x2="3024" y1="320" y2="320" x1="2960" />
            <wire x2="2960" y1="320" y2="672" x1="2960" />
            <wire x2="3120" y1="1184" y2="1184" x1="3056" />
            <wire x2="3120" y1="1184" y2="1200" x1="3120" />
            <wire x2="3056" y1="1184" y2="2400" x1="3056" />
            <wire x2="3120" y1="2400" y2="2400" x1="3056" />
        </branch>
        <bustap x2="1680" y1="544" y2="544" x1="1584" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="544" type="branch" />
            <wire x2="1824" y1="544" y2="544" x1="1680" />
            <wire x2="1824" y1="528" y2="544" x1="1824" />
            <wire x2="1968" y1="528" y2="528" x1="1824" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="528" type="branch" />
            <wire x2="2336" y1="528" y2="528" x1="2288" />
            <wire x2="2384" y1="528" y2="528" x1="2336" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="784" type="branch" />
            <wire x2="1456" y1="784" y2="784" x1="1424" />
            <wire x2="1552" y1="784" y2="784" x1="1456" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="352" type="branch" />
            <wire x2="2944" y1="352" y2="352" x1="2928" />
            <wire x2="3024" y1="352" y2="352" x1="2944" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="400" type="branch" />
            <wire x2="2976" y1="400" y2="400" x1="2928" />
            <wire x2="3024" y1="400" y2="400" x1="2976" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="464" type="branch" />
            <wire x2="2976" y1="464" y2="464" x1="2928" />
            <wire x2="3024" y1="464" y2="464" x1="2976" />
        </branch>
        <branch name="SEG_CLK">
            <wire x2="3472" y1="336" y2="336" x1="3408" />
        </branch>
        <branch name="SEG_SOUT">
            <wire x2="3472" y1="400" y2="400" x1="3408" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="3472" y1="464" y2="464" x1="3408" />
        </branch>
        <branch name="SEG_CLRN">
            <wire x2="3472" y1="528" y2="528" x1="3408" />
        </branch>
        <iomarker fontsize="28" x="3472" y="336" name="SEG_CLK" orien="R0" />
        <iomarker fontsize="28" x="3472" y="400" name="SEG_SOUT" orien="R0" />
        <iomarker fontsize="28" x="3472" y="464" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="3472" y="528" name="SEG_CLRN" orien="R0" />
        <branch name="READN">
            <wire x2="1104" y1="544" y2="544" x1="1024" />
            <wire x2="1024" y1="544" y2="656" x1="1024" />
            <wire x2="2320" y1="656" y2="656" x1="1024" />
            <wire x2="2320" y1="352" y2="352" x1="2288" />
            <wire x2="2368" y1="352" y2="352" x1="2320" />
            <wire x2="2320" y1="352" y2="656" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2368" y="352" name="READN" orien="R0" />
        <branch name="XLXN_74(31:0)">
            <wire x2="3024" y1="512" y2="512" x1="2944" />
            <wire x2="2944" y1="512" y2="624" x1="2944" />
            <wire x2="4112" y1="624" y2="624" x1="2944" />
            <wire x2="4112" y1="624" y2="1136" x1="4112" />
            <wire x2="4112" y1="1136" y2="1136" x1="4048" />
        </branch>
        <branch name="XLXN_76(7:0)">
            <wire x2="3024" y1="544" y2="544" x1="2896" />
            <wire x2="2896" y1="544" y2="640" x1="2896" />
            <wire x2="4160" y1="640" y2="640" x1="2896" />
            <wire x2="4160" y1="640" y2="1552" x1="4160" />
            <wire x2="4160" y1="1552" y2="1552" x1="4048" />
        </branch>
        <branch name="XLXN_77(7:0)">
            <wire x2="3024" y1="576" y2="576" x1="2848" />
            <wire x2="2848" y1="576" y2="688" x1="2848" />
            <wire x2="4208" y1="688" y2="688" x1="2848" />
            <wire x2="4208" y1="688" y2="1968" x1="4208" />
            <wire x2="4208" y1="1968" y2="1968" x1="4048" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3552" y="1392" type="branch" />
            <wire x2="3552" y1="1392" y2="1392" x1="3520" />
            <wire x2="3600" y1="1392" y2="1392" x1="3552" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="3600" y1="1456" y2="1456" x1="3504" />
        </branch>
        <instance x="3600" y="2000" name="XLXI_18" orien="R0">
        </instance>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3440" y="1328" type="branch" />
            <wire x2="3440" y1="1328" y2="1328" x1="3392" />
            <wire x2="3600" y1="1328" y2="1328" x1="3440" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="3024" type="branch" />
            <wire x2="2064" y1="3024" y2="3024" x1="2048" />
            <wire x2="2192" y1="2368" y2="2368" x1="2064" />
            <wire x2="2064" y1="2368" y2="3024" x1="2064" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="3072" type="branch" />
            <wire x2="2080" y1="3072" y2="3072" x1="2064" />
            <wire x2="2192" y1="2416" y2="2416" x1="2080" />
            <wire x2="2080" y1="2416" y2="3072" x1="2080" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="1680" y1="2448" y2="2448" x1="1664" />
            <wire x2="1680" y1="2448" y2="2496" x1="1680" />
            <wire x2="2192" y1="2496" y2="2496" x1="1680" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="2768" type="branch" />
            <wire x2="1872" y1="2768" y2="2768" x1="1664" />
            <wire x2="2192" y1="2768" y2="2768" x1="1872" />
            <wire x2="2192" y1="2560" y2="2624" x1="2192" />
            <wire x2="2192" y1="2624" y2="2688" x1="2192" />
            <wire x2="2192" y1="2688" y2="2768" x1="2192" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2624" type="branch" />
            <wire x2="1184" y1="2336" y2="2832" x1="1184" />
            <wire x2="1216" y1="2832" y2="2832" x1="1184" />
            <wire x2="1760" y1="2336" y2="2336" x1="1184" />
            <wire x2="1760" y1="2336" y2="2624" x1="1760" />
            <wire x2="1888" y1="2624" y2="2624" x1="1760" />
            <wire x2="2192" y1="2624" y2="2624" x1="1888" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2688" type="branch" />
            <wire x2="1680" y1="2704" y2="2704" x1="1664" />
            <wire x2="1680" y1="2688" y2="2704" x1="1680" />
            <wire x2="1888" y1="2688" y2="2688" x1="1680" />
            <wire x2="2192" y1="2688" y2="2688" x1="1888" />
        </branch>
        <branch name="N0,N0,PC(31:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3504" y="1584" type="branch" />
            <wire x2="3504" y1="1584" y2="1584" x1="3472" />
            <wire x2="3600" y1="1584" y2="1584" x1="3504" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3472" y="1648" type="branch" />
            <wire x2="3600" y1="1648" y2="1648" x1="3472" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1712" type="branch" />
            <wire x2="3600" y1="1712" y2="1712" x1="3488" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1776" type="branch" />
            <wire x2="3600" y1="1776" y2="1776" x1="3488" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1840" type="branch" />
            <wire x2="3600" y1="1840" y2="1840" x1="3488" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1904" type="branch" />
            <wire x2="3600" y1="1904" y2="1904" x1="3488" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3488" y="1968" type="branch" />
            <wire x2="3600" y1="1968" y2="1968" x1="3488" />
        </branch>
        <instance x="2160" y="3040" name="XLXI_33" orien="R0">
        </instance>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="864" type="branch" />
            <wire x2="1536" y1="1136" y2="1136" x1="1200" />
            <wire x2="1728" y1="1136" y2="1136" x1="1536" />
            <wire x2="1200" y1="1136" y2="2544" x1="1200" />
            <wire x2="1216" y1="2544" y2="2544" x1="1200" />
            <wire x2="1440" y1="864" y2="864" x1="1424" />
            <wire x2="1536" y1="864" y2="864" x1="1440" />
            <wire x2="1536" y1="864" y2="1136" x1="1536" />
        </branch>
        <instance x="1728" y="1168" name="XLXI_35" orien="R0" />
        <instance x="2160" y="3984" name="XLXI_34" orien="R0">
        </instance>
        <instance x="3088" y="2576" name="XLXI_36" orien="R0">
        </instance>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="2272" type="branch" />
            <wire x2="2160" y1="3888" y2="3888" x1="2080" />
            <wire x2="2080" y1="3888" y2="4048" x1="2080" />
            <wire x2="2768" y1="4048" y2="4048" x1="2080" />
            <wire x2="2736" y1="2272" y2="2272" x1="2688" />
            <wire x2="2768" y1="2272" y2="2272" x1="2736" />
            <wire x2="2768" y1="2272" y2="2544" x1="2768" />
            <wire x2="3120" y1="2544" y2="2544" x1="2768" />
            <wire x2="2768" y1="2544" y2="4048" x1="2768" />
            <wire x2="2768" y1="1520" y2="2272" x1="2768" />
            <wire x2="3600" y1="1520" y2="1520" x1="2768" />
        </branch>
        <branch name="XLXN_178(1:0)">
            <wire x2="2160" y1="3952" y2="3952" x1="2096" />
            <wire x2="2096" y1="3952" y2="4032" x1="2096" />
            <wire x2="3632" y1="4032" y2="4032" x1="2096" />
            <wire x2="3632" y1="2352" y2="2352" x1="3552" />
            <wire x2="3632" y1="2352" y2="4032" x1="3632" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="2848" type="branch" />
            <wire x2="2704" y1="3936" y2="3936" x1="2672" />
            <wire x2="2704" y1="2848" y2="2848" x1="2688" />
            <wire x2="2704" y1="2848" y2="3936" x1="2704" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="2720" y1="3792" y2="3792" x1="2672" />
            <wire x2="2720" y1="2880" y2="2880" x1="2688" />
            <wire x2="2720" y1="2880" y2="3792" x1="2720" />
        </branch>
        <branch name="XLXN_181">
            <wire x2="2736" y1="3648" y2="3648" x1="2672" />
            <wire x2="2736" y1="2912" y2="2912" x1="2688" />
            <wire x2="2736" y1="2912" y2="3648" x1="2736" />
        </branch>
        <branch name="XLXN_183">
            <wire x2="2160" y1="3824" y2="3824" x1="2112" />
            <wire x2="2112" y1="3824" y2="4016" x1="2112" />
            <wire x2="2800" y1="4016" y2="4016" x1="2112" />
            <wire x2="2800" y1="2976" y2="2976" x1="2688" />
            <wire x2="2800" y1="2976" y2="4016" x1="2800" />
        </branch>
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="3632" type="branch" />
            <wire x2="2096" y1="3632" y2="3632" x1="2064" />
            <wire x2="2160" y1="3632" y2="3632" x1="2096" />
        </branch>
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="3696" type="branch" />
            <wire x2="2096" y1="3696" y2="3696" x1="2064" />
            <wire x2="2160" y1="3696" y2="3696" x1="2096" />
        </branch>
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="3760" type="branch" />
            <wire x2="2080" y1="3760" y2="3760" x1="2064" />
            <wire x2="2160" y1="3760" y2="3760" x1="2080" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="2496" type="branch" />
            <wire x2="3120" y1="2496" y2="2496" x1="3008" />
        </branch>
        <branch name="LED_out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="2672" type="branch" />
            <wire x2="2720" y1="2672" y2="2672" x1="2688" />
            <wire x2="3616" y1="2672" y2="2672" x1="2720" />
            <wire x2="3616" y1="2384" y2="2384" x1="3552" />
            <wire x2="3616" y1="2384" y2="2672" x1="3616" />
        </branch>
        <branch name="led_clk">
            <wire x2="3584" y1="2448" y2="2448" x1="3552" />
        </branch>
        <iomarker fontsize="28" x="3584" y="2448" name="led_clk" orien="R0" />
        <branch name="led_sout">
            <wire x2="3584" y1="2480" y2="2480" x1="3552" />
        </branch>
        <iomarker fontsize="28" x="3584" y="2480" name="led_sout" orien="R0" />
        <branch name="LED_PEN">
            <wire x2="3584" y1="2512" y2="2512" x1="3552" />
        </branch>
        <iomarker fontsize="28" x="3584" y="2512" name="LED_PEN" orien="R0" />
        <branch name="led_clrn">
            <wire x2="3584" y1="2544" y2="2544" x1="3552" />
        </branch>
        <iomarker fontsize="28" x="3584" y="2544" name="led_clrn" orien="R0" />
        <branch name="GPIOFO">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="2368" type="branch" />
            <wire x2="2704" y1="2368" y2="2368" x1="2688" />
            <wire x2="2896" y1="2368" y2="2368" x1="2704" />
            <wire x2="2896" y1="2368" y2="2448" x1="2896" />
            <wire x2="3120" y1="2448" y2="2448" x1="2896" />
        </branch>
        <branch name="XLXN_202">
            <wire x2="3104" y1="2320" y2="2320" x1="2688" />
            <wire x2="3104" y1="1264" y2="2320" x1="3104" />
            <wire x2="3600" y1="1264" y2="1264" x1="3104" />
        </branch>
        <instance x="4352" y="192" name="XLXI_13" orien="R0" />
        <instance x="4352" y="400" name="XLXI_14" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4384" y="192" type="branch" />
            <wire x2="4384" y1="192" y2="192" x1="4352" />
            <wire x2="4416" y1="192" y2="192" x1="4384" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="272" type="branch" />
            <wire x2="4368" y1="272" y2="272" x1="4352" />
            <wire x2="4416" y1="272" y2="272" x1="4368" />
        </branch>
        <instance x="4256" y="528" name="XLXI_17" orien="R0" />
        <branch name="Buzzer">
            <wire x2="4448" y1="528" y2="528" x1="4320" />
        </branch>
        <iomarker fontsize="28" x="4448" y="528" name="Buzzer" orien="R0" />
        <branch name="CLK_100MHZ">
            <wire x2="592" y1="560" y2="560" x1="480" />
            <wire x2="784" y1="560" y2="560" x1="592" />
            <wire x2="784" y1="560" y2="784" x1="784" />
            <wire x2="1104" y1="784" y2="784" x1="784" />
            <wire x2="592" y1="560" y2="1408" x1="592" />
            <wire x2="832" y1="1408" y2="1408" x1="592" />
            <wire x2="832" y1="1408" y2="3552" x1="832" />
            <wire x2="864" y1="3552" y2="3552" x1="832" />
            <wire x2="1392" y1="1408" y2="1408" x1="592" />
            <wire x2="1392" y1="1408" y2="2240" x1="1392" />
            <wire x2="2192" y1="2240" y2="2240" x1="1392" />
            <wire x2="1664" y1="304" y2="304" x1="784" />
            <wire x2="1664" y1="304" y2="352" x1="1664" />
            <wire x2="1968" y1="352" y2="352" x1="1664" />
            <wire x2="784" y1="304" y2="384" x1="784" />
            <wire x2="1104" y1="384" y2="384" x1="784" />
            <wire x2="784" y1="384" y2="560" x1="784" />
            <wire x2="1856" y1="176" y2="176" x1="1664" />
            <wire x2="1856" y1="176" y2="288" x1="1856" />
            <wire x2="3024" y1="288" y2="288" x1="1856" />
            <wire x2="1664" y1="176" y2="304" x1="1664" />
        </branch>
        <instance x="1216" y="2864" name="XLXI_40" orien="R0">
        </instance>
        <branch name="XLXN_205">
            <wire x2="1216" y1="2448" y2="2448" x1="1152" />
            <wire x2="1152" y1="2448" y2="2992" x1="1152" />
            <wire x2="1280" y1="2992" y2="2992" x1="1152" />
            <wire x2="1280" y1="2992" y2="3200" x1="1280" />
            <wire x2="2752" y1="3200" y2="3200" x1="1280" />
            <wire x2="2752" y1="3200" y2="3504" x1="2752" />
            <wire x2="2752" y1="3504" y2="3504" x1="2672" />
            <wire x2="2752" y1="2944" y2="2944" x1="2688" />
            <wire x2="2752" y1="2944" y2="3200" x1="2752" />
        </branch>
        <branch name="XLXN_206">
            <wire x2="1216" y1="2736" y2="2736" x1="1120" />
        </branch>
        <instance x="1056" y="2736" name="XLXI_41" orien="R0" />
        <branch name="XLXN_210">
            <wire x2="1712" y1="2512" y2="2512" x1="1664" />
        </branch>
        <branch name="State(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="2832" type="branch" />
            <wire x2="1680" y1="2832" y2="2832" x1="1664" />
            <wire x2="1712" y1="2832" y2="2832" x1="1680" />
        </branch>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1136" type="branch" />
            <wire x2="2112" y1="1136" y2="1136" x1="1952" />
            <wire x2="3120" y1="1136" y2="1136" x1="2112" />
            <wire x2="3600" y1="1136" y2="1136" x1="3120" />
            <wire x2="2160" y1="3504" y2="3504" x1="2144" />
            <wire x2="2144" y1="3504" y2="4000" x1="2144" />
            <wire x2="3040" y1="4000" y2="4000" x1="2144" />
            <wire x2="3040" y1="1120" y2="2352" x1="3040" />
            <wire x2="3120" y1="2352" y2="2352" x1="3040" />
            <wire x2="3040" y1="2352" y2="4000" x1="3040" />
            <wire x2="3120" y1="1120" y2="1120" x1="3040" />
            <wire x2="3120" y1="1120" y2="1136" x1="3120" />
        </branch>
        <branch name="PC(31:0)">
            <wire x2="1808" y1="2576" y2="2576" x1="1664" />
        </branch>
        <branch name="inst(31:0)">
            <wire x2="1728" y1="2640" y2="2640" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="480" y="560" name="CLK_100MHZ" orien="R180" />
        <instance x="864" y="3280" name="XLXI_46" orien="R0">
        </instance>
        <branch name="XLXN_220(31:0)">
            <wire x2="1808" y1="3360" y2="3360" x1="1440" />
            <wire x2="1808" y1="2976" y2="3360" x1="1808" />
            <wire x2="2192" y1="2976" y2="2976" x1="1808" />
        </branch>
        <branch name="XLXN_221(9:0)">
            <wire x2="800" y1="2928" y2="3360" x1="800" />
            <wire x2="864" y1="3360" y2="3360" x1="800" />
            <wire x2="2192" y1="2928" y2="2928" x1="800" />
        </branch>
        <branch name="XLXN_222(31:0)">
            <wire x2="864" y1="3392" y2="3392" x1="800" />
            <wire x2="800" y1="3392" y2="3744" x1="800" />
            <wire x2="1760" y1="3744" y2="3744" x1="800" />
            <wire x2="1760" y1="2832" y2="3744" x1="1760" />
            <wire x2="2192" y1="2832" y2="2832" x1="1760" />
        </branch>
        <branch name="XLXN_223(0:0)">
            <wire x2="848" y1="2880" y2="3488" x1="848" />
            <wire x2="864" y1="3488" y2="3488" x1="848" />
            <wire x2="2192" y1="2880" y2="2880" x1="848" />
        </branch>
    </sheet>
</drawing>
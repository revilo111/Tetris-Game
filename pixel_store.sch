<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Y(2:0)" />
        <signal name="Colour(2:0)" />
        <signal name="XLXN_4" />
        <signal name="LockOut" />
        <signal name="S(2:0)" />
        <signal name="Lock" />
        <signal name="Clr" />
        <signal name="Y(0)" />
        <signal name="Y(1)" />
        <signal name="Y(2)" />
        <signal name="Stored" />
        <signal name="A(2:0)" />
        <signal name="Right(2:0)" />
        <signal name="Down(2:0)" />
        <signal name="Left(2:0)" />
        <port polarity="Output" name="Colour(2:0)" />
        <port polarity="Output" name="LockOut" />
        <port polarity="Input" name="S(2:0)" />
        <port polarity="Input" name="Lock" />
        <port polarity="Input" name="Clr" />
        <port polarity="Output" name="Stored" />
        <port polarity="Input" name="A(2:0)" />
        <port polarity="Output" name="Right(2:0)" />
        <port polarity="Output" name="Down(2:0)" />
        <port polarity="Output" name="Left(2:0)" />
        <blockdef name="pixel_mem">
            <timestamp>2025-8-19T14:18:7</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="demux_4">
            <timestamp>2025-8-19T16:25:46</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and_3_bit">
            <timestamp>2025-8-19T15:57:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <blockdef name="d_latch">
            <timestamp>2025-8-21T19:22:18</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="pixel_mem" name="XLXI_1">
            <blockpin signalname="A(2:0)" name="A(2:0)" />
            <blockpin signalname="Clr" name="Clr" />
            <blockpin signalname="Y(2:0)" name="Y(2:0)" />
        </block>
        <block symbolname="demux_4" name="XLXI_3">
            <blockpin signalname="Colour(2:0)" name="S(2:0)" />
            <blockpin signalname="Y(2:0)" name="A(2:0)" />
            <blockpin signalname="Right(2:0)" name="Right(2:0)" />
            <blockpin signalname="Down(2:0)" name="Down(2:0)" />
            <blockpin signalname="Left(2:0)" name="Left(2:0)" />
        </block>
        <block symbolname="and_3_bit" name="XLXI_4">
            <blockpin signalname="S(2:0)" name="A(2:0)" />
            <blockpin signalname="XLXN_4" name="B" />
            <blockpin signalname="Colour(2:0)" name="Y(2:0)" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="LockOut" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="d_latch" name="XLXI_6">
            <blockpin signalname="Clr" name="Clr" />
            <blockpin signalname="Lock" name="A" />
            <blockpin signalname="LockOut" name="Y" />
        </block>
        <block symbolname="or3" name="XLXI_7">
            <blockpin signalname="Y(2)" name="I0" />
            <blockpin signalname="Y(1)" name="I1" />
            <blockpin signalname="Y(0)" name="I2" />
            <blockpin signalname="Stored" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2080" y="992" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Y(2:0)">
            <wire x2="2000" y1="960" y2="960" x1="1904" />
            <wire x2="2080" y1="960" y2="960" x1="2000" />
            <wire x2="2000" y1="960" y2="1120" x1="2000" />
            <wire x2="2000" y1="1120" y2="1184" x1="2000" />
            <wire x2="2000" y1="1184" y2="1248" x1="2000" />
            <wire x2="2000" y1="1248" y2="1280" x1="2000" />
        </branch>
        <branch name="Colour(2:0)">
            <wire x2="2000" y1="720" y2="720" x1="1904" />
            <wire x2="2000" y1="720" y2="768" x1="2000" />
            <wire x2="2080" y1="768" y2="768" x1="2000" />
            <wire x2="2000" y1="640" y2="720" x1="2000" />
            <wire x2="2560" y1="640" y2="640" x1="2000" />
        </branch>
        <instance x="1520" y="816" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1264" y="816" name="XLXI_5" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1520" y1="784" y2="784" x1="1488" />
        </branch>
        <branch name="LockOut">
            <wire x2="1248" y1="784" y2="784" x1="1232" />
            <wire x2="1264" y1="784" y2="784" x1="1248" />
            <wire x2="1248" y1="784" y2="912" x1="1248" />
            <wire x2="1248" y1="912" y2="1088" x1="1248" />
            <wire x2="2560" y1="1088" y2="1088" x1="1248" />
        </branch>
        <instance x="848" y="880" name="XLXI_6" orien="R0">
        </instance>
        <branch name="S(2:0)">
            <wire x2="1520" y1="720" y2="720" x1="720" />
        </branch>
        <branch name="Lock">
            <wire x2="848" y1="848" y2="848" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="720" name="S(2:0)" orien="R180" />
        <iomarker fontsize="28" x="720" y="848" name="Lock" orien="R180" />
        <branch name="Clr">
            <wire x2="800" y1="784" y2="784" x1="720" />
            <wire x2="848" y1="784" y2="784" x1="800" />
            <wire x2="800" y1="784" y2="1024" x1="800" />
            <wire x2="1520" y1="1024" y2="1024" x1="800" />
        </branch>
        <iomarker fontsize="28" x="720" y="784" name="Clr" orien="R180" />
        <bustap x2="2096" y1="1120" y2="1120" x1="2000" />
        <instance x="2160" y="1312" name="XLXI_7" orien="R0" />
        <bustap x2="2096" y1="1184" y2="1184" x1="2000" />
        <bustap x2="2096" y1="1248" y2="1248" x1="2000" />
        <branch name="Y(0)">
            <wire x2="2160" y1="1120" y2="1120" x1="2096" />
        </branch>
        <branch name="Y(1)">
            <wire x2="2160" y1="1184" y2="1184" x1="2096" />
        </branch>
        <branch name="Y(2)">
            <wire x2="2160" y1="1248" y2="1248" x1="2096" />
        </branch>
        <branch name="Stored">
            <wire x2="2560" y1="1184" y2="1184" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1184" name="Stored" orien="R0" />
        <branch name="A(2:0)">
            <wire x2="1520" y1="960" y2="960" x1="720" />
        </branch>
        <iomarker fontsize="28" x="720" y="960" name="A(2:0)" orien="R180" />
        <branch name="Right(2:0)">
            <wire x2="2560" y1="832" y2="832" x1="2464" />
        </branch>
        <branch name="Down(2:0)">
            <wire x2="2560" y1="896" y2="896" x1="2464" />
        </branch>
        <branch name="Left(2:0)">
            <wire x2="2560" y1="960" y2="960" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2560" y="832" name="Right(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="896" name="Down(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="960" name="Left(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="640" name="Colour(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="1088" name="LockOut" orien="R0" />
    </sheet>
</drawing>
local t=string.byte;local i=string.char;local d=string.sub;local L=table.concat;local s=math.ldexp;local N=getfenv or function()return _ENV end;local X=setmetatable;local h=select;local f=unpack;local r=tonumber;local function P(f)local e,o,n="","",{}local a=256;local c={}for l=0,a-1 do c[l]=i(l)end;local l=1;local function t()local e=r(d(f,l,l),36)l=l+1;local o=r(d(f,l,l+e-1),36)l=l+e;return o end;e=i(t())n[1]=e;while l<#f do local l=t()if c[l]then o=c[l]else o=e..d(e,1,1)end;c[a]=e..d(o,1,1)n[#n+1],e,a=o,o,a+1 end;return table.concat(n)end;local c=P('22B22927522B1G2752291V21K21E21G2352111Z21423521Q21R23521H21021O1X21K21R21I23521E27K1Y21121C21R2111Y23521R21Q21Q21F23H27F21L21K28221G21C1Y27I21221C28G27K23A21123521221Q1Z21M23521L21G28T22B22C2791X21E21C21P21P28X27524K22H24H24U1O22H29521T2981T21T27524G22929821927924L21T23522921F29G22924L29B22921429V22922827923E27922B22D27921I21C21O21G22B22E2791121P28I21G1Z1Y22B22I2791T21Q29021P2AE2AG1Z22B22N2791N27R21H2AX2AI2111I28A21P21H22B21S2791I22O21422R21K22Q21P22T21K22S21122V21K22U21E22X2AJ29Y1O21R27X27Z27D22B22A27921R21G21222B22G2791J28521P172912102AA2A52751V2A82AA22J27921P21Q21C21H27X1Z27R21I2AB2791P2112111X1M21G21122B23427921L2CV1X1Y22Z23I23I1X28E21121G21F27R23J27V21O23I1Z21C21223I22X1N22O22V21C21G22O1G2CS2751Y2AH21327C2AA2AL2751721K1Z211210291142DZ2AT2C427528B2BS1521C21F21P2AA22L2B91Z28D2DD162AY21Q2C22CD2292DD2152D029Y1521G2EM1X28P2D02942292DB2E72AJ2EF2291628P21M1Y2DB2BW2EX1V111I122AK2792CY2B22B421H2EQ21R2BX2792FN1I2C32791G21H21H1J2102CV27K2FZ2751O1Y2DW2F91S21Q21H2F422B29S2291P27O27Z21Q21K21H132852111121C2E822B29Y2GP21O2GR2GT2792H724H2322H12G42G921Q21J2GZ21O2G32752G521H1521Q21I21I2EM2FR2HJ2HD23G21C2CV21C21E21M2HR2292HK1L1Z21Q1X21H2EV2FY2F91421121K21P2AJ2GN1G21E2IC21327E29121P27U2GJ21G2AJ2AC2752122EU21222S2DX2291I2EQ21H21K2812HB2HJ2G61T2EK2GL22K2B92142ID2J327C2822GP21F22B21V2FS2852HP27E2B32I42A923622V22R22T22R2GM2792GV2EL21Q2152352GY27R23622Q22U22R22W2JY2IT2IM27I21J28P23521021K23521P21K2JJ2B82752HM2HO2EM23521I2KJ23521M21G21422Z2K425Q2792962981629V24L22929P21R29M22922P2292LC27524H2291H2LG27924O23D29821R23D2LI2212LB22127524I26921X2LG26922D25T24N26X24L24U23I26X2M324G22P29E2LF29J22H1X22921J29V24S1H2LQ2LL22924P2BZ27924H2LU2LG2LW29J1P112LG1P27524S112LQ2N022924O29724U21R29V24P2212692MW27524W21D2LQ21D27525929V2NC27524P29P2LG2NT24T2LA2LM27524T22H2LB29V2N92LQ2ND22123L2NH22924W1X2LQ2MI2MQ2MV21R2MX25029J24U29L27525021529822T21527525129G22821R29S25922929G2LH2292592612352OW2612OT2OG2MX24W25L2LQ25L2752582NA2NQ2P322P1H2OW2MF25922P112PN2NN22P21D2PS2P329S2OX27524X2LK2NY22924N1P2LQ2N225T23X1P25D22922Y2N222923Y22P1X22821A2LF2M42LP2M82LS2Q923525T22821N2NT2452QB2QD2QF2422NX23027525T2L927521129M2QF2112QF23X23529G142NT23P2C52792Q12LB27924N25L24U2M82RP21A2Q12752362792582PD24U2132PF2292542PI29V25522X2PM21R22X2752S72PV2SA2SC2PY2OY2Q22P224N24P2LQ2MR25T23T1125D2QU2N724023L2981O2O822923T2MV21F2MX23U23T2752322T62M42SW2M82O82SP112LL21N2SU23T2SX2T62T02T22T42NG2292322NG2M426X2982M92292TE2TG2SU24X2SX2RU2T129P2T327523U2P82TQ2P82M425T2TV25T2TX23S2NA1T29V23T1929P23D192752UL2LL21R2UP2292412SR2LG2N72U42O923U112P12N02M42Q62M82Q823S2OP24U1T2OS2292452LS22923F2VH2UW2QC22Y2UZ2TN2U72RE2291D29P2M42212TV2LW2SP2VH22U2VH2UL23L22821C2UU2452UX2VN2Q0192412291K2UU2OZ2RM27524N25524V2M82WL21A25923D2W422Y2VH2552OV22M29S2O82P127923L26124X2P72SC2PA2752RI2752P223L22X24H2OW2SB22923S22924G2NB29Z2292462O122923029B2R52MP2112MP2R62EY2X12352U52NT23X22X21T22B21N2XG2VG2752VJ27524221T29G23029G2R52MF2112MF2RD29G23E2Y22MS2UQ2UU2UT2752452XD2XF27524C24H2LQ2LJ22924A2212NM2302VY24L2N72GX27524L2UU2112UU2XX2R82ZC2RA2QF24L2MX2112MX24L2YJ2MF2452VR1I2QW2OV2PZ22924D2P02Q324D2P522B21R2U92452X72UV21D2QT21R2NM2292482212XK2OH2A026E2VR2302VU2ZH2792412VR22S2NT2412ZX29S24931012P22492611131052U92413109240235310I2P62293118311A2A024121L21D310521L27524822X310I22X311F2212P12MX311D2NB311B311G311I21R311K310F1H310I2PM2UV311R2O9311U27L311F311H311J311L1P310I1P311Q311S2753128311W312B311Z311L11310I2PR3125312I311C3119311V312A311Y312024819310I19312H2O92Z22Q329U27529X27922F2792A02762F92FB2AI2EO2N32UI2ND27923F27924T21T2LL29R2WJ2352TV2VU25A31261N2VY24N29D2M82YH25529V1R2S629S1W29S2SL2RQ23I24P24U21A2NW2WI2Q4241314E314M21A313829W29V2742792IS2292HI2IZ21L2GZ2HX2DD2AT2GN2H32H52GU2GW2GY2H029Y1G21R21E21L28P21G21H22822822B313C2751I1N2DL2A922B2CI2752CK21Q21M1721G2II28P2H72H71H2JL2ZC27921H2LD2X03166314K2ZM2US2ZP2YQ29T310Z2LD314K24H2NP29V316L2O22LI22H2N02PJ2O02XA29V313Q2LB29S313Q316S316Z21T2NM2ZY313Q2MI2ZY316O2LG2L823D2P12VH314Q2PJ3162315T314W2EX28H2J32A42A62CG315S2FS2CZ122E02E22B72JZ21G1X2KM2902DD21H1221128P21C21I2AA314V1321G21O21Q2DD2AJ315M2IZ2KM21G28022B2JB2752AR2142AH1I27K27G21Q21P317Q2752B021G317T1Z2IK2AT318H318S21O21F2HV28W2792FJ2DM21R2202LD2752FE31361227924I26P2T7319N2M42RZ23I2PF2UD279319K2LX2U92322UB24N2UD2M82UF25T24G313L316Q29G22I29V24G3143317822H2LF2PJ24O313V311V2LT2LV316Q316S316N22H317431AP317731AP2UF31AH2V721R2QF2MU312T24G2N52NB2N724U24P2262XQ314G314P29V22V316N2YE22914314C19314E31BJ31BB313929V315J2792FE314X2B331502II2AH22B21W2AW2AY2B027X2B32ID21H1U21J1I2AF1Y2AJ2EX2HM318V2AU31BZ21R2AZ2FC2FU31C422B313J2FF28D2F631AY27Z21H2HQ2E4229318B318D2DD1K2IK318L317I318Z31913193318X2291228O1Z21H31C827C21M31622LI2322VH316H27522O316931372NX2P224S2VW2NB2ZP310924M2XM2LC2282M42SM2M82SO2XX319W316H29G29Y2L9314K31DR2LQ31DU31AM316H2US27924S2QO2LR2ZC31DV2TP21R2TS2M52TV26X2TX31E431DN1E316J2Q331EB31DT31EL31EE2L9316S2LD31EG2N32MD2NB2MF2ZM31EE24M2YS2UP2M431B323I2V531EU316629G21B31EX31DQ31DS2OH31F12O931F331DO31742LD317731EH2MN2NB2MP24O31AX2ZL2VR27L2ZC29V313A31DG2H7314T31DK2292FE314Q31GA313E27521Y2A32FE31BT2DL31BV31532CT2GQ2842GT2GV318E31592D03195315P317P2F9319C2122FY317K21C317M313G31H82AI314X31DA2FI2FK2E3317R31CK2B52FX315L319B27G2CQ317N27521J2AY31HQ27A317P2AV318Y31C031CJ31C32B52J52GO31GT2GS2B6318H1P28D21P211312031GB31I3315C315E315G315I315K317I315V315X315Z31851Z22925N25K31IT31IT24G2322A031HM2751X1X22O22R22Q22T31D71L28B27V21R2C02II31GB24X2322OE31GE319I319V319L25T27423231JM2M421524J2M821522B2UD29S1229S316L29G21M31AP316P2MG31AG31AP316V29H31AJ31G722931B631B823031BA2ZM27522V2MX24H31BF31BH31K929E2NT24U31012R331ET2NT22V2NT31KL2RF31JZ31JK2LX23T31JN31L32TA31JS23I23L31JV24G2QO1T2VH31K022921D31AB31F821R2MF24S2XD2NB2XG313Q31AV31722XA31L031F62Q425L310I25L31DZ2OZ27531E525A2612A0319Z31DZ31A12XK23I2QT25T2582V71T2QF2PP319N1X2MF25523D2NG31EK22923P2VH31MP259310925A312R21R2PR2V631MA312G25T2WQ2WD21N2VH23O21L2SX312031MU2U52MX25A23D31M631NG2M4312V23I2P631N32WR2QD2VH2PP2Q122Y2MF24A22H21C27A22H31M82XJ2M829Z31MD31LC31NQ22H29G1S29V2592SH2PT2P12PO22P2WD31LK27523O31AD2OY31MV2VE21R2OS2M42OC2M82MI31N331JX2OY22P29G23431OF2LB2PO25T21T2OW2UF2PX31LT31OD2LG31P131PB2SC23D2LB2WU22X31AG2XG31MR31PG2X81H31AG2MP23P1H2P621R31PQ31PO2OW2MP2S731AV2XG31MU31772MX31M131D827925A2352PM21A2VU24N31DS23I2VY2WQ2O82WT2PT31NS2MF25A22H31KR1Q31QO21A24N31KC31O2314H25831O52NN31O72291Z316N31DP2RN1P2WM23I31R631QS25524S2WN24S31QS2TB31L82TX24G2TU2VC31ES22924I2MX2323141314323I2YH31RJ29E31RM316L2PV21N31BE31KZ29H31QY22924S26H2SX26H2LI31KM29S31LB29E31LE31R023J31BE31P92MG2P131K3317A2NZ316M31AL313531OC31SK31SN2MG31K4316L31K631SO31K831RN25D23I2LG25D314H24N261314E31T821A31KL31M231JZ31R022Y31SM31TG2LI25T2PM23331P731GH31BO31GD31GJ2I0317T211317T2EM31BV21H2F92XX22R31DN2P2316U31SU2ZM312T317F29Y2H7314V31IZ2FA31J231J431J62EX2A7315R317I2FT31D5317V314V318P2AH2AJ31CV2AN2AP31UP2AT2F91O31CT315H2IY31JA31JC21131CN24K314321529S2L931AG31EH31KA2NT31FB31FT22931F4316631FW316631FY27531KD31B9314H2XX22V29M2VP2292L524U23B2L831G929Y31GJ317I2I02G82GA21R22R1L2I82IY315Y31601Z2JX2BY2XA2C131GB2762FE31HE319C2BW318N2IZ2101Z2FX2B22CG2DL31UC315O315Q2CC279317L2ZI31622H9314X31W5318531W7141X223319G22931ID2L9316A31S531OL2NZ21T31AG29S31AI2LQ2NT25031VD2NZ31092LO2LQ2VH2NE31742MX2NE31Q32ZC31G62NT24K31G031PU29H31G42ZC31BF2ZY2XX2P22L9319N31DQ31XJ229313Q31XM27531XO31AK22931XR31XP31XT31EE31XV2NB31XX2Z52O931Y131FT31Y431G831T0316222M2A331HA2FC319A315N2IP31UR31HI31I12FW318K31ZA2292C921P2CB31IY31UH317P31UK317S317U2BW2KP31CW317Y31802HV315H3184318631882IY31CX318E2IQ31HU318S2GK31BS2IP31D0318K2D031D32E731902E031BW2FM317P31H72J331IR31IU31IT26G23231XC2952NA1G31R32XA2MT2XP2PJ31SX31SU31TC2LG31V92SJ2RN2VB31OP2TX24X31Q92QD2NT24Y21L2N0210311K2M42NK2M82NM25T24W31F81T2MF24X23D2MI22J2VH25431Y72MP24X3109321U2QC31MP321U31YH2VH321U31MO322923D31OH2WU2352O831KB3222312T2OB2OD2PG32192VE24X31YC3216314K24N21L314E322V31BM314R31GB');local n=bit and bit.bxor or function(l,e)local o,n=1,0 while l>0 and e>0 do local c,d=l%2,e%2 if c~=d then n=n+o end l,e,o=(l-c)/2,(e-d)/2,o*2 end if l<e then l=e end while l>0 do local e=l%2 if e>0 then n=n+o end l,o=(l-e)/2,o*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local c,d,o,l=t(c,e,e+3);c=n(c,81)d=n(d,81)o=n(o,81)l=n(l,81)e=e+4;return(l*16777216)+(o*65536)+(d*256)+c;end;local function a()local l=n(t(c,e,e),81);e=e+1;return l;end;local function r()local e=o();local n=o();local d=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local l=((-1)^l(n,32));if(e==0)then if(o==0)then return l*0;else e=1;d=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return s(l,e-1023)*(d+(o/(2^52)));end;local P=o;local function s(l)local o;if(not l)then l=P();if(l==0)then return'';end;end;o=d(c,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=i(n(t(d(o,l,l)),81))end return L(e);end;local e=o;local function L(...)return{...},h('#',...)end local function T()local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local t={0,0,0,0,0,0};local e={};local c={f,nil,t,nil,e};local e=o()local d={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};for o=1,e do local e=a();local l;if(e==1)then l=(a()~=0);elseif(e==0)then l=r();elseif(e==2)then l=s();end;d[o]=l;end;c[2]=d for c=1,o()do local d=n(o(),244);local o=n(o(),110);local n=l(d,1,2);local e=l(o,1,11);local e={e,l(d,3,11),nil,nil,o};if(n==0)then e[3]=l(d,12,20);e[5]=l(d,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(d,21,29);end;f[c]=e;end;c[4]=a();for l=1,o()do t[l-1]=T();end;return c;end;local function G(l,P,i)local o=l[1];local d=l[2];local e=l[3];local l=l[4];return function(...)local n=o;local d=d;local M=e;local c=l;local s=L local e=1;local a=-1;local H={};local t={...};local r=h('#',...)-1;local L={};local o={};for l=0,r do if(l>=c)then H[l-c]=t[l+1];else o[l]=t[l+1];end;end;local l=r-c+1 local l;local c;while true do l=n[e];c=l[1];if c<=51 then if c<=25 then if c<=12 then if c<=5 then if c<=2 then if c<=0 then local n=l[2];local c=l[5];local l=n+2;local d={o[n](o[n+1],o[l])};for e=1,c do o[l+e]=d[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;elseif c>1 then if(o[l[2]]<=d[l[5]])then e=e+1;else e=e+l[3];end;else local e=l[2];local d,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;end;elseif c<=3 then o[l[2]]();a=A;elseif c==4 then local e=l[2];local n=o[l[3]];o[e+1]=n;o[e]=n[d[l[5]]];else o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];P[l[3]]=o[l[2]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];end;elseif c<=8 then if c<=6 then local s;local r;local t;local h;local L;local c;o[l[2]]=P[l[3]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;s={o[c](f(h,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=s[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;o[c](f(h,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;o[c](f(h,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;s={o[c](f(h,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=s[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;o[c](f(h,1,r-c));a=c;e=e+1;l=n[e];do return end;elseif c==7 then e=e+l[3];else local c,c;local L;local h;local r;local t;local P;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h,r=s(o[c](f(P,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];c=l[2];P={};t=0;r=a;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];c=l[2];h,r={o[c]()};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;end;elseif c<=10 then if c>9 then o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]-o[l[5]];e=e+1;l=n[e];o[l[2]][d[l[3]]]=o[l[5]];e=e+1;l=n[e];do return end;else o[l[2]][d[l[3]]]=o[l[5]];end;elseif c>11 then local n=l[2];local d={};local e=0;local c=n+l[3]-1;for l=n+1,c do e=e+1;d[e]=o[l];end;local d={o[n](f(d,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else if(d[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=18 then if c<=15 then if c<=13 then local n=l[2];local c=l[5];local l=n+2;local d={o[n](o[n+1],o[l])};for e=1,c do o[l+e]=d[e];end;local n=o[n+3];if n then o[l]=n else e=e+1;end;elseif c==14 then local c;local h,c;local r;local t;local P;local L;local c;o[l[2]]();a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h,r=s(o[c](f(P,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];c=l[2];P={};t=0;r=a;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];e=e+l[3];else o[l[2]]=o[l[3]]+d[l[5]];end;elseif c<=16 then local h;local i;local t;local P;local r;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;o[c](f(P,1,i-c));a=c;elseif c==17 then if(o[l[2]]~=d[l[5]])then e=e+1;else e=e+l[3];end;else o[l[2]]=G(M[l[3]],nil,i);end;elseif c<=21 then if c<=19 then do return end;elseif c==20 then for l=l[2],l[3]do o[l]=nil;end;else o[l[2]][d[l[3]]]=d[l[5]];end;elseif c<=23 then if c>22 then do return end;else local L;local r;local t;local h;local P;local c;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];P=o[l[3]];o[c+1]=P;o[c]=P[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;L={o[c](f(h,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];P=o[l[3]];o[c+1]=P;o[c]=P[d[l[5]]];end;elseif c>24 then o[l[2]][d[l[3]]]=o[l[5]];else local c;local h,c;local r;local t;local P;local L;local c;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];L=o[l[3]];o[c+1]=L;o[c]=L[d[l[5]]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h,r=s(o[c](f(P,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];c=l[2];P={};t=0;r=a;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];e=e+l[3];end;elseif c<=38 then if c<=31 then if c<=28 then if c<=26 then o[l[2]]=o[l[3]];elseif c>27 then o[l[2]]();a=A;else if(o[l[2]]==d[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=29 then o[l[2]]=o[l[3]]*d[l[5]];elseif c>30 then local n=l[2];local d=n+l[3]-2;local e={};local l=0;for n=n,d do l=l+1;e[l]=o[n];end;do return f(e,1,l)end;else local h;local i;local c;local r;local t;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];t=l[2];r={};c=0;i=t+l[3]-1;for l=t+1,i do c=c+1;r[c]=o[l];end;h={o[t](f(r,1,i-t))};i=t+l[5]-2;c=0;for l=t,i do c=c+1;o[l]=h[c];end;a=i;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c<=34 then if c<=32 then if(d[l[2]]<o[l[5]])then e=e+1;else e=e+l[3];end;elseif c==33 then if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;else o[l[2]]=i[d[l[3]]];end;elseif c<=36 then if c>35 then o[l[2]]=(l[3]~=0);else local L;local i;local t;local r;local h;local c;o[l[2]]();a=c;e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];r={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;r[t]=o[l];end;L={o[c](f(r,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=L[t];end;a=i;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c>37 then local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=s(o[n](f(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else if(o[l[2]]<=d[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=44 then if c<=41 then if c<=39 then o[l[2]]=d[l[3]];elseif c==40 then if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;else local n=l[2];local d=n+l[3]-2;local e={};local l=0;for n=n,d do l=l+1;e[l]=o[n];end;do return f(e,1,l)end;end;elseif c<=42 then o[l[2]]=o[l[3]]+d[l[5]];elseif c>43 then local c=l[2];local d={};for l=1,#L do local l=L[l];for e=0,#l do local e=l[e];local n=e[1];local l=e[2];if n==o and l>=c then d[l]=n[l];e[1]=d;end;end;end;else o[l[2]][o[l[3]]]=o[l[5]];end;elseif c<=47 then if c<=45 then local h;local r;local i;local t;local P;local c;c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;o[c](f(P,1,i-c));a=c;e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c>46 then local c;local L,c;local r;local c;local h;local G;local t;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];t=l[2];G=o[l[3]];o[t+1]=G;o[t]=G[d[l[5]]];e=e+1;l=n[e];t=l[2];h={};c=0;r=t+l[3]-1;for l=t+1,r do c=c+1;h[c]=o[l];end;L,r=s(o[t](f(h,1,r-t)));r=r+t-1;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];t=l[2];h={};c=0;r=a;for l=t+1,r do c=c+1;h[c]=o[l];end;L={o[t](f(h,1,r-t))};r=t+l[5]-2;c=0;for l=t,r do c=c+1;o[l]=L[c];end;a=r;e=e+1;l=n[e];e=e+l[3];else P[l[3]]=o[l[2]];end;elseif c<=49 then if c==48 then if(o[l[2]]~=d[l[5]])then e=e+1;else e=e+l[3];end;else local h;local i;local t;local P;local r;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;elseif c==50 then if not o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]={};end;elseif c<=77 then if c<=64 then if c<=57 then if c<=54 then if c<=52 then o[l[2]]=o[l[3]]-o[l[5]];elseif c==53 then local n=l[2];local c={};local e=0;local d=a;for l=n+1,d do e=e+1;c[e]=o[l];end;local d={o[n](f(c,1,d-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else o[l[2]]=i[d[l[3]]];end;elseif c<=55 then o[l[2]]=o[l[3]]+o[l[5]];elseif c>56 then local L;local r;local t;local P;local h;local c;o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;L={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;else local e=l[2];local n=o[l[3]];o[e+1]=n;o[e]=n[d[l[5]]];end;elseif c<=60 then if c<=58 then o[l[2]]=(l[3]~=0);elseif c>59 then if(o[l[2]]==d[l[5]])then e=e+1;else e=e+l[3];end;else local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](f(d,1,l-e));a=e;end;elseif c<=62 then if c>61 then o[l[2]]=d[l[3]];else o[l[2]]=P[l[3]];end;elseif c==63 then o[l[2]]=#o[l[3]];else o[l[2]]();a=A;e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]][d[l[3]]]=o[l[5]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];if(o[l[2]]==o[l[5]])then e=e+1;else e=e+l[3];end;end;elseif c<=70 then if c<=67 then if c<=65 then e=e+l[3];elseif c==66 then i[d[l[3]]]=o[l[2]];else o[l[2]]=o[l[3]]+o[l[5]];end;elseif c<=68 then o[l[2]]=o[l[3]];elseif c>69 then local h;local i;local t;local P;local r;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];if not o[l[2]]then e=e+1;else e=e+l[3];end;else local P;local r;local t;local i;local c;c=l[2];i={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;i[t]=o[l];end;o[c](f(i,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];for l=l[2],l[3]do o[l]=nil;end;e=e+1;l=n[e];c=l[2];P=o[l[3]];o[c+1]=P;o[c]=P[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];end;elseif c<=73 then if c<=71 then local n=l[2];local c={};local e=0;local d=n+l[3]-1;for l=n+1,d do e=e+1;c[e]=o[l];end;local d={o[n](f(c,1,d-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;elseif c>72 then o[l[2]]=o[l[3]]-o[l[5]];else i[d[l[3]]]=o[l[2]];end;elseif c<=75 then if c==74 then local c=l[2];local d={};for l=1,#L do local l=L[l];for e=0,#l do local l=l[e];local n=l[1];local e=l[2];if n==o and e>=c then d[e]=n[e];l[1]=d;end;end;end;else local e=l[2];local d={};local n=0;local l=e+l[3]-1;for l=e+1,l do n=n+1;d[n]=o[l];end;o[e](f(d,1,l-e));a=e;end;elseif c>76 then o[l[2]]={};else local a=M[l[3]];local c;local d={};c=X({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==26 then d[c-1]={o,l[3]};else d[c-1]={P,l[3]};end;L[#L+1]=d;end;o[l[2]]=G(a,c,i);end;elseif c<=90 then if c<=83 then if c<=80 then if c<=78 then if not o[l[2]]then e=e+1;else e=e+l[3];end;elseif c>79 then o[l[2]][d[l[3]]]=d[l[5]];else o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]]*d[l[5]];e=e+1;l=n[e];o[l[2]]=o[l[3]]+o[l[5]];e=e+1;l=n[e];o[l[2]][d[l[3]]]=o[l[5]];end;elseif c<=81 then if o[l[2]]then e=e+1;else e=e+l[3];end;elseif c==82 then if o[l[2]]then e=e+1;else e=e+l[3];end;else local a=M[l[3]];local c;local d={};c=X({},{__index=function(e,l)local l=d[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=d[l]l[1][l[2]]=e;end;});for c=1,l[5]do e=e+1;local l=n[e];if l[1]==26 then d[c-1]={o,l[3]};else d[c-1]={P,l[3]};end;L[#L+1]=d;end;o[l[2]]=G(a,c,i);end;elseif c<=86 then if c<=84 then local e=l[2];local d,n={o[e]()};local n=e+l[5]-2;local l=0;for e=e,n do l=l+1;o[e]=d[l];end;a=n;elseif c==85 then o[l[2]]=o[l[3]][d[l[5]]];else o[l[2]]=G(M[l[3]],nil,i);end;elseif c<=88 then if c==87 then local n=l[2];local d={};local e=0;local c=a;for l=n+1,c do e=e+1;d[e]=o[l];end;local d={o[n](f(d,1,c-n))};local l=n+l[5]-2;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;else o[l[2]]=P[l[3]];end;elseif c>89 then local c,c;local L;local r;local t;local P;local h;local c;i[d[l[3]]]=o[l[2]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;L={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;L,r=s(o[c](f(P,1,r-c)));r=r+c-1;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];c=l[2];P={};t=0;r=a;for l=c+1,r do t=t+1;P[t]=o[l];end;L={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];e=e+l[3];else o[l[2]]=#o[l[3]];end;elseif c<=96 then if c<=93 then if c<=91 then local G;local A;local s;local X;local M;local H;local h;local r;local t;local P;local c;c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;H={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=H[t];end;a=r;e=e+1;l=n[e];i[d[l[3]]]=o[l[2]];e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];c=l[2];M={};for l=1,#L do X=L[l];for l=0,#X do s=X[l];A=s[1];G=s[2];if A==o and G>=c then M[G]=A[G];s[1]=M;end;end;end;elseif c>92 then o[l[2]][o[l[3]]]=o[l[5]];else local i;local t;local r;local h;local c;o[l[2]]=P[l[3]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];r={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;r[t]=o[l];end;o[c](f(r,1,i-c));a=c;e=e+1;l=n[e];do return end;end;elseif c<=94 then o[l[2]]=o[l[3]]*d[l[5]];elseif c==95 then local L;local i;local t;local r;local h;local c;o[l[2]]=P[l[3]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];r={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;r[t]=o[l];end;L={o[c](f(r,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=L[t];end;a=i;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;else o[l[2]]=o[l[3]][d[l[5]]];end;elseif c<=99 then if c<=97 then local h;local r;local t;local P;local i;local c;c=l[2];i=o[l[3]];o[c+1]=i;o[c]=i[d[l[5]]];e=e+1;l=n[e];o[l[2]]={};e=e+1;l=n[e];o[l[2]][d[l[3]]]=d[l[5]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=h[t];end;a=r;e=e+1;l=n[e];o[l[2]]=(l[3]~=0);e=e+1;l=n[e];c=l[2];i=o[l[3]];o[c+1]=i;o[c]=i[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];elseif c>98 then for l=l[2],l[3]do o[l]=nil;end;else local n=l[2];local d={};local e=0;local l=n+l[3]-1;for l=n+1,l do e=e+1;d[e]=o[l];end;local d,l=s(o[n](f(d,1,l-n)));l=l+n-1;e=0;for l=n,l do e=e+1;o[l]=d[e];end;a=l;end;elseif c<=101 then if c==100 then local L;local r;local t;local P;local h;local c;c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;L={o[c](f(P,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];h=o[l[3]];o[c+1]=h;o[c]=h[d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;P[t]=o[l];end;o[c](f(P,1,r-c));a=c;else local L;local r;local t;local h;local P;local c;o[l[2]]();a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];e=e+1;l=n[e];c=l[2];P=o[l[3]];o[c+1]=P;o[c]=P[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;L={o[c](f(h,1,r-c))};r=c+l[5]-2;t=0;for l=c,r do t=t+1;o[l]=L[t];end;a=r;e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];P=o[l[3]];o[c+1]=P;o[c]=P[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];h={};t=0;r=c+l[3]-1;for l=c+1,r do t=t+1;h[t]=o[l];end;o[c](f(h,1,r-c));a=c;e=e+1;l=n[e];o[l[2]]=i[d[l[3]]];end;elseif c>102 then P[l[3]]=o[l[2]];else local h;local i;local t;local P;local r;local c;o[l[2]]=o[l[3]][d[l[5]]];e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];c=l[2];r=o[l[3]];o[c+1]=r;o[c]=r[d[l[5]]];e=e+1;l=n[e];o[l[2]]=d[l[3]];e=e+1;l=n[e];c=l[2];P={};t=0;i=c+l[3]-1;for l=c+1,i do t=t+1;P[t]=o[l];end;h={o[c](f(P,1,i-c))};i=c+l[5]-2;t=0;for l=c,i do t=t+1;o[l]=h[t];end;a=i;e=e+1;l=n[e];if o[l[2]]then e=e+1;else e=e+l[3];end;end;e=e+1;end;end;end;return G(T(),{},N())();

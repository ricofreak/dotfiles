#! /usr/bin/perl -w

use strict;

my $sender_id = $ARGV[0];

while(<DATA>){
        chomp;
        if(/$sender_id/i){
                my ($si, $site_id, $agency, $site_name, $dp, $sdp) = split( '\t', $_);
		$dp  =~ s:\\:\/:g;      # change backslashes to forward slashes
		$sdp =~ s:(\w.*):\/$1:; # add leading slash if $sdp is populated
                $si = lc($si);
                print "Sender ID: $si \tSite ID: $site_id \t Agency: $agency\n";
                print "Site Name: $site_name \tDirectory: $dp$sdp\n";
                print "http://prodmon01.prod.appriss.com/siteexplorer";
                print "/frames.jsp?siteId=$site_id&agency=$agency\n";
                print "http://prepwebtools02.prep.appriss.com:9500/siteexplorer";
                print "/frames.jsp?siteId=$site_id&agency=$agency\n\n";
        }
}

__END__
SENDER_ID	SITE_ID	AGENCY	SITE_NAME	DIRECTORY_PATH	SUB_DIRECTORY_PATH
OHLICKPR	36001	263	OH_OHSTATE	project\vine\oh\ohstate	ohlickingpr
OHMERCPR	36001	272	OH_OHSTATE	project\vine\oh\ohstate	ohmercerpr
OHMUSKPR	36001	278	OH_OHSTATE	project\vine\oh\ohstate	ohmuskingumpr
OHHENRJA	36001	169	OH_OHSTATE	project\vine\oh\ohstate	
OHHIGHLANDJA	36001	170	OH_OHSTATE	project\vine\oh\ohstate	ohhighlandja
OHHOCKJA	36001	171	OH_OHSTATE	project\vine\oh\ohstate	ohhockingja
OHHURONJA	36001	173	OH_OHSTATE	project\vine\oh\ohstate	ohhuronja
OHJACKSONJA	36001	174	OH_OHSTATE	project\vine\oh\ohstate	ohjacksonja
OHLAKEJA	36001	177	OH_OHSTATE	project\vine\oh\ohstate	ohlakeja
OHLAWRENCEJA	36001	178	OH_OHSTATE	project\vine\oh\ohstate	ohlawrenceja
OHLOGANJA	36001	180	OH_OHSTATE	project\vine\oh\ohstate	ohloganja
OHLORAINJA	36001	181	OH_OHSTATE	project\vine\oh\ohstate	ohlorainja
OHMADIJA	36001	183	OH_OHSTATE	project\vine\oh\ohstate	ohmadisonja
CODENVERJA	6001	1	CO_DENVER	project\vine\co\codenverja	
OHPUTNPR	36001	286	OH_OHSTATE	project\vine\oh\ohstate	ohputnampr
NECHASEJA	28000	131	NE_NESTATE	project\vine\ne\nestate	nechaseja
NECHEYENNEJA	28000	143	NE_NESTATE	project\vine\ne\nestate	necheyenneja
NEDAWESJA	28000	182	NE_NESTATE	project\vine\ne\nestate	nedawesja
NEDEUEJA	28000	199	NE_NESTATE	project\vine\ne\nestate	
NEGARDENJA	28000	304	NE_NESTATE	project\vine\ne\nestate	negardenja
NEKEITHJA	28000	383	NE_NESTATE	project\vine\ne\nestate	nekeithja
NEKIMBALLJA	28000	391	NE_NESTATE	project\vine\ne\nestate	nekimballja
NESCOTTSBLUFFJA	28000	594	NE_NESTATE	project\vine\ne\nestate	nescottsbluffja
NESHERIDANJA	28000	618	NE_NESTATE	project\vine\ne\nestate	nesheridanja
USDB	60001	1	FEDERAL_USDB	federal\usdb	
CASUTTERJA	5012	1	CA_SUTTER	project\vine\ca\casutterja	
CALOSANGELESJA	5010	1	CA_LOSANGELES	project\vine\ca\calosangelesja	
CABUTTEJA	5099	25	CA_MULTICO	project\vine\ca\multico	cabutteja
CAMONTEREY	5099	61	CA_MULTICO	project\vine\ca\multico	camontereyja
ARBENTONPR	4999	10	AR_ARSTATE	project\vine\ar\arstate	arbentonpr
ARBOONEJA	4999	11	AR_ARSTATE	project\vine\ar\arstate	arbooneja
ARBOONEPR	4999	12	AR_ARSTATE	project\vine\ar\arstate	arboonepr
ARBRADLEYJA	4999	13	AR_ARSTATE	project\vine\ar\arstate	arbradleyja
ARBRADLEYPR	4999	14	AR_ARSTATE	project\vine\ar\arstate	
ARCARROLLJA	4999	17	AR_ARSTATE	project\vine\ar\arstate	arcarrollja
ARCARROLLPR	4999	18	AR_ARSTATE	project\vine\ar\arstate	
AR034005C	4999	201	AR_ARSTATE	project\vine\ar\arstate	
ARARKANSASJA	4999	1	AR_ARSTATE	project\vine\ar\arstate	ararkansasja
ARASHLEYJA	4999	4	AR_ARSTATE	project\vine\ar\arstate	arashleyja
ARASHLEYPR	4999	5	AR_ARSTATE	project\vine\ar\arstate	arashleypr
ARBAXTERPR	4999	7	AR_ARSTATE	project\vine\ar\arstate	arbaxterpr
ARBENTONJA	4999	9	AR_ARSTATE	project\vine\ar\arstate	arbentonja
ARCHICOTJA	4999	20	AR_ARSTATE	project\vine\ar\arstate	archicotja
ARCHICOTPR	4999	21	AR_ARSTATE	project\vine\ar\arstate	
ARDELTAREGIONALJA	4999	22	AR_ARSTATE	project\vine\ar\arstate	ardeltaregionalja
ARCLARKJA	4999	23	AR_ARSTATE	project\vine\ar\arstate	arclarkja
ARCLAYPR	4999	25	AR_ARSTATE	project\vine\ar\arstate	
ARCLEBURNEJA	4999	28	AR_ARSTATE	project\vine\ar\arstate	arcleburneja
ARCLEBPR	4999	29	AR_ARSTATE	project\vine\ar\arstate	
ARCLEVELANDJA	4999	31	AR_ARSTATE	project\vine\ar\arstate	arclevelandja
ARCOLUMBIAJA	4999	32	AR_ARSTATE	project\vine\ar\arstate	arcolumbiaja
ARCONWAYJA	4999	34	AR_ARSTATE	project\vine\ar\arstate	arconwayja
ARCONWAYPR	4999	35	AR_ARSTATE	project\vine\ar\arstate	
ARCRAWFORDJA	4999	39	AR_ARSTATE	project\vine\ar\arstate	arcrawfordja
ARCRITTENDENJA	4999	41	AR_ARSTATE	project\vine\ar\arstate	arcrittendenja
ARCROSSPR	4999	44	AR_ARSTATE	project\vine\ar\arstate	
ARDALLASPR	4999	45	AR_ARSTATE	project\vine\ar\arstate	ardallaspr
ARDALLASJA	4999	46	AR_ARSTATE	project\vine\ar\arstate	ardallasja
ARDESHAPR	4999	48	AR_ARSTATE	project\vine\ar\arstate	ardeshapr
ARDREWJA	4999	50	AR_ARSTATE	project\vine\ar\arstate	ardrewja
ARFAULKNERJA	4999	52	AR_ARSTATE	project\vine\ar\arstate	arfaulknerja
ARFAULKNERPR	4999	53	AR_ARSTATE	project\vine\ar\arstate	arfaulknerpr
ARFRANKLINJA	4999	54	AR_ARSTATE	project\vine\ar\arstate	arfranklinja
ARFRANKLINPR	4999	55	AR_ARSTATE	project\vine\ar\arstate	arfranklinpr
ARFULTONJA	4999	57	AR_ARSTATE	project\vine\ar\arstate	arfultonja
ARGARLANDJA	4999	59	AR_ARSTATE	project\vine\ar\arstate	argarlandja
ARGARLANDPR	4999	60	AR_ARSTATE	project\vine\ar\arstate	argarlandpr
ARGREENEJA	4999	63	AR_ARSTATE	project\vine\ar\arstate	argreeneja
ARGREENEPR	4999	64	AR_ARSTATE	project\vine\ar\arstate	argreenepr
WAKINGJA	48002	1	WA_KING	project\vine\wa\wakingja	
WAKINGIN	48500	1	WA_KING_C2C	project\gov\c2c\wa\kingc2c	
NVCLARKJA	29004	1	NV_CLARK	project\vine\nv\nvclarkja	
CAELDORADOJA	5099	79	CA_MULTICO	project\vine\ca\multico	caeldoradoja
OHMARIJA	36001	185	OH_OHSTATE	project\vine\oh\ohstate	ohmarionja
OHMEDINAJA	36001	186	OH_OHSTATE	project\vine\oh\ohstate	ohmedinaja
OHMEIGJA	36001	187	OH_OHSTATE	project\vine\oh\ohstate	ohmeigsja
OHMERCERJA	36001	188	OH_OHSTATE	project\vine\oh\ohstate	ohmercerja
OHMONROEJA	36001	190	OH_OHSTATE	project\vine\oh\ohstate	ohmonroeja
OHMONTGOMERYJA	36001	191	OH_OHSTATE	project\vine\oh\ohstate	ohmontgomeryja
OHMORROWJA	36001	193	OH_OHSTATE	project\vine\oh\ohstate	ohmorrowja
OHNOBLEJA	36001	195	OH_OHSTATE	project\vine\oh\ohstate	ohnobleja
OHOTTAWAJA	36001	196	OH_OHSTATE	project\vine\oh\ohstate	ohottawaja
OHPICKAWAYJA	36001	199	OH_OHSTATE	project\vine\oh\ohstate	ohpickawayja
OHPORTAGEJA	36001	201	OH_OHSTATE	project\vine\oh\ohstate	ohportageja
OHPREBLEJA	36001	202	OH_OHSTATE	project\vine\oh\ohstate	ohprebleja
OHPUTNAMJA	36001	203	OH_OHSTATE	project\vine\oh\ohstate	ohputnamja
OHRICHLANDJA	36001	204	OH_OHSTATE	project\vine\oh\ohstate	ohrichlandja
OHSANDUSKYJA	36001	206	OH_OHSTATE	project\vine\oh\ohstate	ohsanduskyja
OHSCIOTOJA	36001	207	OH_OHSTATE	project\vine\oh\ohstate	ohsciotoja
OHSENECAJA	36001	208	OH_OHSTATE	project\vine\oh\ohstate	ohsenecaja
OHSHELBYJA	36001	209	OH_OHSTATE	project\vine\oh\ohstate	ohshelbyja
OHSTARKJA	36001	210	OH_OHSTATE	project\vine\oh\ohstate	ohstarkja
OHTUSCARAWASJA	36001	213	OH_OHSTATE	project\vine\oh\ohstate	ohtuscarawasja
OHUNIOJA	36001	214	OH_OHSTATE	project\vine\oh\ohstate	ohunionja
OHVANWERTJA	36001	215	OH_OHSTATE	project\vine\oh\ohstate	ohvanwertja
OHVINTONJA	36001	216	OH_OHSTATE	project\vine\oh\ohstate	ohvintonja
OHWARRENJA	36001	217	OH_OHSTATE	project\vine\oh\ohstate	ohwarrenja
OHCCNOJA	36001	220	OH_OHSTATE	project\vine\oh\ohstate	ohccnoja
OHWOODJA	36001	221	OH_OHSTATE	project\vine\oh\ohstate	ohwoodja
OHHARDINJA	36001	167	OH_OHSTATE	project\vine\oh\ohstate	ohhardinja
OHWAYNEJA	36001	41	OH_OHSTATE	project\vine\oh\ohstate	ohwayneja
OHDRC	36001	42	OH_OHSTATE	project\vine\oh\ohstate	ohdrc
OHDYS	36001	43	OH_OHSTATE	project\vine\oh\ohstate	ohdys
OHADAMSJA	36001	133	OH_OHSTATE	project\vine\oh\ohstate	ohadamsja
OHALLENJA	36001	134	OH_OHSTATE	project\vine\oh\ohstate	ohallenja
OHASHLANDJA	36001	135	OH_OHSTATE	project\vine\oh\ohstate	ohashlandja
OHASHTABULAJA	36001	136	OH_OHSTATE	project\vine\oh\ohstate	ohashtabulaja
OHATHEJA	36001	137	OH_OHSTATE	project\vine\oh\ohstate	ohathensja
OHBELMONTJA	36001	139	OH_OHSTATE	project\vine\oh\ohstate	ohbelmontja
OHBROWNJA	36001	140	OH_OHSTATE	project\vine\oh\ohstate	ohbrownja
OHCHAMJA	36001	144	OH_OHSTATE	project\vine\oh\ohstate	ohchampaignja
OHCLARKJA	36001	145	OH_OHSTATE	project\vine\oh\ohstate	ohclarkja
OHCLERMONTJA	36001	146	OH_OHSTATE	project\vine\oh\ohstate	ohclermontja
OHCOLUMBIANAJA	36001	148	OH_OHSTATE	project\vine\oh\ohstate	ohcolumbianaja
OHCOSHOCTONJA	36001	149	OH_OHSTATE	project\vine\oh\ohstate	ohcoshoctonja
OHCRAWFORDJA	36001	150	OH_OHSTATE	project\vine\oh\ohstate	ohcrawfordja
OHCUYAHOGAJA	36001	151	OH_OHSTATE	project\vine\oh\ohstate	ohcuyahogaja
OHDEFIJA	36001	153	OH_OHSTATE	project\vine\oh\ohstate	
OHFAIRFIELDJA	36001	156	OH_OHSTATE	project\vine\oh\ohstate	ohfairfieldja
OHFAYETTEJA	36001	157	OH_OHSTATE	project\vine\oh\ohstate	ohfayetteja
OHFRANKLINJA	36001	158	OH_OHSTATE	project\vine\oh\ohstate	ohfranklinja
OHFULTJA	36001	159	OH_OHSTATE	project\vine\oh\ohstate	
OHGALLIAJA	36001	160	OH_OHSTATE	project\vine\oh\ohstate	ohgalliaja
OHGEAUGAJA	36001	161	OH_OHSTATE	project\vine\oh\ohstate	ohgeaugaja
OHHAMILTONJA	36001	164	OH_OHSTATE	project\vine\oh\ohstate	ohhamiltonja
OHHANCOCKJA	36001	166	OH_OHSTATE	project\vine\oh\ohstate	ohhancockja
NCYADKINPR	34003	1099	NC_STATE	project\vine\nc\ncstate	ncyadkinpr
NCYANCEYPR	34003	1100	NC_STATE	project\vine\nc\ncstate	ncyanceypr
OHATHEPR	36001	6	OH_OHSTATE	project\vine\oh\ohstate	ohathenspr
OHMCCC	36001	22	OH_OHSTATE	project\vine\oh\ohstate	ohmccc
NCWASHINGTONPR	34003	1094	NC_STATE	project\vine\nc\ncstate	ncwashingtonpr
NCWILSONPR	34003	1098	NC_STATE	project\vine\nc\ncstate	ncwilsonpr
NCALAMANCEPR	34003	1000	NC_STATE	project\vine\nc\ncstate	ncalamancepr
NCALEXANDERPR	34003	1001	NC_STATE	project\vine\nc\ncstate	ncalexanderpr
NCANSONPR	34003	1003	NC_STATE	project\vine\nc\ncstate	ncansonpr
NCBEAUFORTPR	34003	1006	NC_STATE	project\vine\nc\ncstate	ncbeaufortpr
NCBLADENPR	34003	1008	NC_STATE	project\vine\nc\ncstate	ncbladenpr
NCBUNCOMBEPR	34003	1010	NC_STATE	project\vine\nc\ncstate	ncbuncombepr
NCBURKEPR	34003	1011	NC_STATE	project\vine\nc\ncstate	ncburkepr
NCCALDWELLPR	34003	1013	NC_STATE	project\vine\nc\ncstate	nccaldwellpr
NCCARTERETPR	34003	1015	NC_STATE	project\vine\nc\ncstate	nccarteretpr
NCCATAWBAPR	34003	1017	NC_STATE	project\vine\nc\ncstate	nccatawbapr
NCCLEVELANDPR	34003	1022	NC_STATE	project\vine\nc\ncstate	ncclevelandpr
NCCRAVENPR	34003	1024	NC_STATE	project\vine\nc\ncstate	nccravenpr
NCCUMBERLANDPR	34003	1025	NC_STATE	project\vine\nc\ncstate	nccumberlandpr
NCDAREPR	34003	1027	NC_STATE	project\vine\nc\ncstate	ncdarepr
NCDUPLINPR	34003	1030	NC_STATE	project\vine\nc\ncstate	ncduplinpr
NCFORSYTHPR	34003	1033	NC_STATE	project\vine\nc\ncstate	ncforsythpr
NCFRANKLINPR	34003	1034	NC_STATE	project\vine\nc\ncstate	ncfranklinpr
NCGATESPR	34003	1036	NC_STATE	project\vine\nc\ncstate	ncgatespr
NCGRANVILLEPR	34003	1038	NC_STATE	project\vine\nc\ncstate	ncgranvillepr
GUILFORD401XX	34003	1041	NC_STATE	project\vine\nc\ncstate	
NCHALIFAXPR	34003	1042	NC_STATE	project\vine\nc\ncstate	nchalifaxpr
NCHAYWOODPR	34003	1044	NC_STATE	project\vine\nc\ncstate	nchaywoodpr
NCIREDELLPR	34003	1049	NC_STATE	project\vine\nc\ncstate	nciredellpr
NCLENOIRPR	34003	1054	NC_STATE	project\vine\nc\ncstate	nclenoirpr
NCLINCOLNPR	34003	1055	NC_STATE	project\vine\nc\ncstate	nclincolnpr
NCMACONPR	34003	1057	NC_STATE	project\vine\nc\ncstate	ncmaconpr
NCMADISONPR	34003	1058	NC_STATE	project\vine\nc\ncstate	ncmadisonpr
NCMONTGOMERYPR	34003	1062	NC_STATE	project\vine\nc\ncstate	ncmontgomerypr
NCMOOREPR	34003	1063	NC_STATE	project\vine\nc\ncstate	ncmoorepr
NCNEWHANOVERPR	34003	1065	NC_STATE	project\vine\nc\ncstate	ncnewhanoverpr
NCONSLOWPR	34003	1067	NC_STATE	project\vine\nc\ncstate	nconslowpr
NCORANGEPR	34003	1068	NC_STATE	project\vine\nc\ncstate	ncorangepr
NCPASQUOTANKPR	34003	1070	NC_STATE	project\vine\nc\ncstate	ncpasquotankpr
NCPERSONPR	34003	1073	NC_STATE	project\vine\nc\ncstate	ncpersonpr
NCROBESONPR	34003	1078	NC_STATE	project\vine\nc\ncstate	ncrobesonpr
NCRUTHERFORDPR	34003	1081	NC_STATE	project\vine\nc\ncstate	ncrutherfordpr
NCSTOKESPR	34003	1085	NC_STATE	project\vine\nc\ncstate	ncstokespr
NCUNIONPR	34003	1090	NC_STATE	project\vine\nc\ncstate	ncunionpr
NCSURRYJA	34003	87	NC_STATE	project\vine\nc\ncstate	ncsurryja
NCSWAINJA	34003	88	NC_STATE	project\vine\nc\ncstate	ncswainja
NCTRANSYLVANIAJA	34003	89	NC_STATE	project\vine\nc\ncstate	nctransylvaniaja
NCUNIONJA	34003	91	NC_STATE	project\vine\nc\ncstate	ncunionja
NCVANCEJA	34003	92	NC_STATE	project\vine\nc\ncstate	ncvanceja
NCWARRENJA	34003	94	NC_STATE	project\vine\nc\ncstate	ncwarrenja
NCWASHINGTONJA	34003	95	NC_STATE	project\vine\nc\ncstate	ncwashingtonja
NCWAYNEJA	34003	97	NC_STATE	project\vine\nc\ncstate	ncwayneja
NCWILKESJA	34003	98	NC_STATE	project\vine\nc\ncstate	ncwilkesja
NCWILSONJA	34003	99	NC_STATE	project\vine\nc\ncstate	ncwilsonja
NCYANCEYJA	34003	101	NC_STATE	project\vine\nc\ncstate	ncyanceyja
NCPOLKJA	34003	76	NC_STATE	project\vine\nc\ncstate	ncpolkja
NCRANDOLPHJA	34003	77	NC_STATE	project\vine\nc\ncstate	ncrandolphja
NCRICHMONDJA	34003	78	NC_STATE	project\vine\nc\ncstate	ncrichmondja
NCROBESONJA	34003	79	NC_STATE	project\vine\nc\ncstate	ncrobesonja
NCROCKIN	34003	80	NC_STATE	project\vine\nc\ncstate	ncrockinghamja
NCROWANJA	34003	81	NC_STATE	project\vine\nc\ncstate	ncrowanja
NCRUTHERFORDJA	34003	82	NC_STATE	project\vine\nc\ncstate	ncrutherfordja
NCSCOTLANDJA	34003	84	NC_STATE	project\vine\nc\ncstate	ncscotlandja
NCSTANLYJA	34003	85	NC_STATE	project\vine\nc\ncstate	ncstanlyja
NCSTOKESJA	34003	86	NC_STATE	project\vine\nc\ncstate	ncstokesja
NCCUMBERLANDJA	34003	27	NC_STATE	project\vine\nc\ncstate	nccumberlandja
NCCURRITUCKJA	34003	28	NC_STATE	project\vine\nc\ncstate	nccurrituckja
NCDAREJA	34003	29	NC_STATE	project\vine\nc\ncstate	ncdareja
NCDAVIEJA	34003	31	NC_STATE	project\vine\nc\ncstate	ncdavieja
NCDUPLINJA	34003	32	NC_STATE	project\vine\nc\ncstate	ncduplinja
NCDURHAMJA	34003	33	NC_STATE	project\vine\nc\ncstate	ncdurhamja
NCEDGECOMBEJA	34003	34	NC_STATE	project\vine\nc\ncstate	ncedgecombeja
NCFRANKLINJA	34003	36	NC_STATE	project\vine\nc\ncstate	ncfranklinja
NCGASTONJA	34003	37	NC_STATE	project\vine\nc\ncstate	ncgastonja
NCGRAHAMJA	34003	39	NC_STATE	project\vine\nc\ncstate	ncgrahamja
NCGRANVILLEJA	34003	40	NC_STATE	project\vine\nc\ncstate	ncgranvilleja
NCGREENEJA	34003	41	NC_STATE	project\vine\nc\ncstate	ncgreeneja
NCHALIFAXJA	34003	43	NC_STATE	project\vine\nc\ncstate	nchalifaxja
NCHENDERSONJA	34003	46	NC_STATE	project\vine\nc\ncstate	nchendersonja
NCHERTFORDJA	34003	47	NC_STATE	project\vine\nc\ncstate	nchertfordja
NCHOKEJA	34003	48	NC_STATE	project\vine\nc\ncstate	nchokeja
NCHYDEJA	34003	49	NC_STATE	project\vine\nc\ncstate	nchydeja
NCIREDELLJA	34003	50	NC_STATE	project\vine\nc\ncstate	nciredellja
NCJOHNSTONJA	34003	52	NC_STATE	project\vine\nc\ncstate	ncjohnstonja
NCJONESJA	34003	53	NC_STATE	project\vine\nc\ncstate	ncjonesja
NCLEEJA	34003	54	NC_STATE	project\vine\nc\ncstate	ncleeja
NCLENOIRJA	34003	55	NC_STATE	project\vine\nc\ncstate	nclenoirja
NCLINCOLNJA	34003	56	NC_STATE	project\vine\nc\ncstate	nclincolnja
NCMACONJA	34003	58	NC_STATE	project\vine\nc\ncstate	ncmaconja
NCMADISONJA	34003	59	NC_STATE	project\vine\nc\ncstate	ncmadisonja
NCMECKLENBURGJA	34003	61	NC_STATE	project\vine\nc\ncstate	ncmecklenburgja
NCMONTGOMERYJA	34003	63	NC_STATE	project\vine\nc\ncstate	ncmontgomeryja
NCMOOREJA	34003	64	NC_STATE	project\vine\nc\ncstate	ncmooreja
NCNEWHANOVERJA	34003	66	NC_STATE	project\vine\nc\ncstate	ncnewhanoverja
NCONSLOWJA	34003	68	NC_STATE	project\vine\nc\ncstate	nconslowja
NCORANGEJA	34003	69	NC_STATE	project\vine\nc\ncstate	ncorangeja
NCPASQUOTANKJA	34003	71	NC_STATE	project\vine\nc\ncstate	ncpasquotankja
NCPENDERJA	34003	72	NC_STATE	project\vine\nc\ncstate	ncpenderja
NCCASWELLJA	34003	18	NC_STATE	project\vine\nc\ncstate	nccaswellja
NCCATAWBAJA	34003	19	NC_STATE	project\vine\nc\ncstate	nccatawbaja
NCCHATHAMJA	34003	20	NC_STATE	project\vine\nc\ncstate	ncchathamja
NCCHEROKEEJA	34003	21	NC_STATE	project\vine\nc\ncstate	nccherokeeja
NCCHOWANJA	34003	22	NC_STATE	project\vine\nc\ncstate	ncchowanja
NCCLAYJA	34003	23	NC_STATE	project\vine\nc\ncstate	ncclayja
NCCLEVELANDJA	34003	24	NC_STATE	project\vine\nc\ncstate	ncclevelandja
NCCOLUMBUSJA	34003	25	NC_STATE	project\vine\nc\ncstate	nccolumbusja
NYTIOGAJA	33004	453	NY_NYSTATE	project\vine\ny\nystate	nytiogaja
NYULSTERJA	33004	455	NY_NYSTATE	project\vine\ny\nystate	nyulsterja
NYWARRENJA	33004	456	NY_NYSTATE	project\vine\ny\nystate	nywarrenja
NYWASHINGTONJA	33004	457	NY_NYSTATE	project\vine\ny\nystate	nywashingtonja
NYWAYNE	33004	458	NY_NYSTATE	project\vine\ny\nystate	nywayneja
NYYATESJA	33004	461	NY_NYSTATE	project\vine\ny\nystate	nyyatesja
NYCITYDOC	33004	465	NY_NYSTATE	project\vine\ny\nystate	nycitydoc
NCDOC	34003	1	NC_STATE	project\vine\nc\ncstate	ncdoc
NCALAMANCEJA	34003	2	NC_STATE	project\vine\nc\ncstate	ncalamanceja
NCALLEGHANYJA	34003	4	NC_STATE	project\vine\nc\ncstate	ncalleghanyja
NCANSONJA	34003	5	NC_STATE	project\vine\nc\ncstate	ncansonja
NCASHEJA	34003	6	NC_STATE	project\vine\nc\ncstate	ncasheja
NCBEAUFORTJA	34003	8	NC_STATE	project\vine\nc\ncstate	ncbeaufortja
NYSTLAWRENCEJA	33004	444	NY_NYSTATE	project\vine\ny\nystate	nystlawrenceja
NYSARATOGAJA	33004	445	NY_NYSTATE	project\vine\ny\nystate	nysaratogaja
NYSCHENECTADYJA	33004	446	NY_NYSTATE	project\vine\ny\nystate	nyschenectadyja
NYSTEUBENJA	33004	450	NY_NYSTATE	project\vine\ny\nystate	nysteubenja
NYSULLIVANJA	33004	452	NY_NYSTATE	project\vine\ny\nystate	nysullivanja
NCBERTIEJA	34003	9	NC_STATE	project\vine\nc\ncstate	ncbertieja
NCBLADENJA	34003	10	NC_STATE	project\vine\nc\ncstate	ncbladenja
NCBURKEJA	34003	13	NC_STATE	project\vine\nc\ncstate	ncburkeja
NCCABARRUSJA	34003	14	NC_STATE	project\vine\nc\ncstate	nccabarrusja
NCCALDWELLJA	34003	15	NC_STATE	project\vine\nc\ncstate	nccaldwellja
NYALLEGANYJA	33004	401	NY_NYSTATE	project\vine\ny\nystate	nyalleganyja
NYBROOMEJA	33004	403	NY_NYSTATE	project\vine\ny\nystate	nybroomeja
NYCATTARAUGUSJA	33004	404	NY_NYSTATE	project\vine\ny\nystate	nycattaraugusja
NYCAYUGAJA	33004	405	NY_NYSTATE	project\vine\ny\nystate	nycayugaja
NYCHEMUNGJA	33004	407	NY_NYSTATE	project\vine\ny\nystate	nychemungja
NYCHENANGOJA	33004	408	NY_NYSTATE	project\vine\ny\nystate	nychenangoja
NYCLINTONJA	33004	409	NY_NYSTATE	project\vine\ny\nystate	nyclintonja
NYCORTLANDJA	33004	411	NY_NYSTATE	project\vine\ny\nystate	nycortlandja
NYDELAWAREJA	33004	412	NY_NYSTATE	project\vine\ny\nystate	nydelawareja
NYESSEXJA	33004	415	NY_NYSTATE	project\vine\ny\nystate	nyessexja
NYFRANKLINJA	33004	416	NY_NYSTATE	project\vine\ny\nystate	nyfranklinja
NYFULTONJA	33004	417	NY_NYSTATE	project\vine\ny\nystate	nyfultonja
NYGENESEEJA	33004	418	NY_NYSTATE	project\vine\ny\nystate	nygeneseeja
NYHERKIMERJA	33004	421	NY_NYSTATE	project\vine\ny\nystate	nyherkimerja
NYJEFFERSONJA	33004	422	NY_NYSTATE	project\vine\ny\nystate	nyjeffersonja
NYMADISONJA	33004	426	NY_NYSTATE	project\vine\ny\nystate	nymadisonja
NYMONROEJA	33004	427	NY_NYSTATE	project\vine\ny\nystate	nymonroeja
NYMONTGOMERYJA	33004	428	NY_NYSTATE	project\vine\ny\nystate	nymontgo
NYNASSAUJA	33004	429	NY_NYSTATE	project\vine\ny\nystate	nynassauja
NYNIAGARAJA	33004	431	NY_NYSTATE	project\vine\ny\nystate	nyniagaraja
NYONONDAGAJA	33004	433	NY_NYSTATE	project\vine\ny\nystate	nyonondagaja
NYONTARIOJA	33004	434	NY_NYSTATE	project\vine\ny\nystate	nyontarioja
NYORANGEJA	33004	435	NY_NYSTATE	project\vine\ny\nystate	nyorangeja
NYORLEANSJA	33004	436	NY_NYSTATE	project\vine\ny\nystate	nyorleansja
NYOTSEGOJA	33004	438	NY_NYSTATE	project\vine\ny\nystate	nyotsegoja
NYPUTNAMJA	33004	439	NY_NYSTATE	project\vine\ny\nystate	nyputnamja
NYROCKLANDJA	33004	443	NY_NYSTATE	project\vine\ny\nystate	nyrocklandja
NYDOC	33004	1	NY_NYSTATE	project\vine\ny\nystate	nydoc
MIIRONPR	23005	136	MI_MISTATE	project\vine\mi\mistate	miironpa
MIISABELLAPA	23005	137	MI_MISTATE	project\vine\mi\mistate	miisabellapa
MIJACKSONPR	23005	138	MI_MISTATE	project\vine\mi\mistate	mijacksonpa
MIKALAMAZOOPA	23005	139	MI_MISTATE	project\vine\mi\mistate	mikalamazoopa
MIKENTPA	23005	141	MI_MISTATE	project\vine\mi\mistate	mikentpa
MILAKEPR	23005	143	MI_MISTATE	project\vine\mi\mistate	milakepa
MILAPEERPR	23005	144	MI_MISTATE	project\vine\mi\mistate	milapeerpa
MIMASONPA	23005	153	MI_MISTATE	project\vine\mi\mistate	mimasonpa
MIMENOMINEEPA	23005	155	MI_MISTATE	project\vine\mi\mistate	mimenomineepa
MIMIDLANDPA	23005	156	MI_MISTATE	project\vine\mi\mistate	mimidlandpa
MIMISSAUKEEPA	23005	157	MI_MISTATE	project\vine\mi\mistate	mimissaukeepa
MIMONROEPA	23005	158	MI_MISTATE	project\vine\mi\mistate	mimonroepa
MINEWAYGOPA	23005	162	MI_MISTATE	project\vine\mi\mistate	minewaygopa
MIOCEANAPR	23005	164	MI_MISTATE	project\vine\mi\mistate	mioceanapa
MIOTSEGOPR	23005	168	MI_MISTATE	project\vine\mi\mistate	miotsegopa
MIOTTAWAPA	23005	169	MI_MISTATE	project\vine\mi\mistate	miottawapa
MISTJOSEPHPR	23005	174	MI_MISTATE	project\vine\mi\mistate	mistjosephpa
MISHIAWASSEEPA	23005	177	MI_MISTATE	project\vine\mi\mistate	mishiawasseepa
MIWAYNEPR	23005	181	MI_MISTATE	project\vine\mi\mistate	miwaynepa
MIHILLSDALEPA	23005	130	MI_MISTATE	project\vine\mi\mistate	mihillsdalepa
MILEELANAUJA	23005	45	MI_MISTATE	project\vine\mi\mistate	mileelanauja
MILENAWEEJA	23005	46	MI_MISTATE	project\vine\mi\mistate	milenaweeja
MIMARQJA	23005	52	MI_MISTATE	project\vine\mi\mistate	mimarquetteja
MIMASONJA	23005	53	MI_MISTATE	project\vine\mi\mistate	mimasonja
MIMIDLANDJA	23005	56	MI_MISTATE	project\vine\mi\mistate	mimidlandja
MINEWAYGOJA	23005	62	MI_MISTATE	project\vine\mi\mistate	minewagoja
MIOTSEJA	23005	68	MI_MISTATE	project\vine\mi\mistate	miotsegoja
MIPRESQUEISLEJA	23005	70	MI_MISTATE	project\vine\mi\mistate	mipresqueisleja
MISANILACJA	23005	75	MI_MISTATE	project\vine\mi\mistate	misanilacja
MISHIAWASSEEJA	23005	77	MI_MISTATE	project\vine\mi\mistate	mishiawasseeja
MITUSCOLAJA	23005	78	MI_MISTATE	project\vine\mi\mistate	mituscolaja
MIWAYNEJA	23005	81	MI_MISTATE	project\vine\mi\mistate	miwayneja
MIDOC	23005	100	MI_MISTATE	project\vine\mi\mistate	midoc
MIALCONAPA	23005	101	MI_MISTATE	project\vine\mi\mistate	mialconapa
MIALGERPA	23005	102	MI_MISTATE	project\vine\mi\mistate	mialgerpa
MIBENZIEPR	23005	110	MI_MISTATE	project\vine\mi\mistate	mibenziepa
MIISABELLAJA	23005	37	MI_MISTATE	project\vine\mi\mistate	miisabellaja
MIJACKJA	23005	38	MI_MISTATE	project\vine\mi\mistate	mijacksonja
MICALHOUNPA	23005	113	MI_MISTATE	project\vine\mi\mistate	micalhounpa
MICHIPPEWAPA	23005	117	MI_MISTATE	project\vine\mi\mistate	michippewapa
MICLAREPR	23005	118	MI_MISTATE	project\vine\mi\mistate	miclarepa
MIEATONPA	23005	123	MI_MISTATE	project\vine\mi\mistate	mieatonpa
MIGENESEEPA	23005	125	MI_MISTATE	project\vine\mi\mistate	migeneseepa
MIGRANPR	23005	128	MI_MISTATE	project\vine\mi\mistate	migrandtraversepa
MDDOC	21999	105	MD_MDSTATE	project\vine\md\mdstate	mddoc
MIALCONAJA	23005	1	MI_MISTATE	project\vine\mi\mistate	mialconaja
MIALPENAJA	23005	4	MI_MISTATE	project\vine\mi\mistate	mialpenaja
MIBARAJA	23005	7	MI_MISTATE	project\vine\mi\mistate	mibaragaja
MIBARRYJA	23005	8	MI_MISTATE	project\vine\mi\mistate	mibarryja
MIBAYJA	23005	9	MI_MISTATE	project\vine\mi\mistate	mibayja
MIBRANCHJA	23005	12	MI_MISTATE	project\vine\mi\mistate	mibranchja
MICASSJA	23005	14	MI_MISTATE	project\vine\mi\mistate	micassja
MICHARLEVOIXJA	23005	15	MI_MISTATE	project\vine\mi\mistate	micharlevoixja
MICHIPPEWAJA	23005	17	MI_MISTATE	project\vine\mi\mistate	michippewaja
MICLINTONJA	23005	19	MI_MISTATE	project\vine\mi\mistate	miclintonja
MIEATONJA	23005	23	MI_MISTATE	project\vine\mi\mistate	mieatonja
MIGRATJA	23005	29	MI_MISTATE	project\vine\mi\mistate	migratiotja
MIHILLSDALEJA	23005	30	MI_MISTATE	project\vine\mi\mistate	mihillsdaleja
MIHOUGJA	23005	31	MI_MISTATE	project\vine\mi\mistate	mihoughtonja
MIIONIAJA	23005	34	MI_MISTATE	project\vine\mi\mistate	miioniaja
MDSOMERSETCIRC	21999	43	MD_MDSTATE	project\vine\md\mdstate	mdsomersetcirc
MDSTMARYCC	21999	44	MD_MDSTATE	project\vine\md\mdstate	
MDTALBOTCIRC	21999	45	MD_MDSTATE	project\vine\md\mdstate	
MDWASHINGTONCIRC	21999	46	MD_MDSTATE	project\vine\md\mdstate	
MDALLEGANYDIST	21999	49	MD_MDSTATE	project\vine\md\mdstate	
MDANNEARUNDIST	21999	50	MD_MDSTATE	project\vine\md\mdstate	
MDBALTCODIST	21999	52	MD_MDSTATE	project\vine\md\mdstate	
MDCALVERTDIST	21999	53	MD_MDSTATE	project\vine\md\mdstate	
MDCAROLINEDIST	21999	54	MD_MDSTATE	project\vine\md\mdstate	
MDCARROLLDIST	21999	55	MD_MDSTATE	project\vine\md\mdstate	
MDCECILDIST	21999	56	MD_MDSTATE	project\vine\md\mdstate	
MDCHARLESDIST	21999	57	MD_MDSTATE	project\vine\md\mdstate	
MDDORCHESTDIST	21999	58	MD_MDSTATE	project\vine\md\mdstate	
MDFREDRICKDIST	21999	59	MD_MDSTATE	project\vine\md\mdstate	
MDGARRETTDIST	21999	60	MD_MDSTATE	project\vine\md\mdstate	
MDHARFORDDIST	21999	61	MD_MDSTATE	project\vine\md\mdstate	mdharfordja
MDHOWARDDIST	21999	62	MD_MDSTATE	project\vine\md\mdstate	
MDKENTDIST	21999	63	MD_MDSTATE	project\vine\md\mdstate	
MDPRINCEDIST	21999	65	MD_MDSTATE	project\vine\md\mdstate	
MDSOMERSETDIST	21999	67	MD_MDSTATE	project\vine\md\mdstate	
MDSTMARYDIST	21999	68	MD_MDSTATE	project\vine\md\mdstate	
MDWASHINGTONDIST	21999	70	MD_MDSTATE	project\vine\md\mdstate	
MDWICOMICODIST	21999	71	MD_MDSTATE	project\vine\md\mdstate	
MDWORCESTERDIST	21999	72	MD_MDSTATE	project\vine\md\mdstate	
MDCARVCT	21999	79	MD_MDSTATE	project\vine\md\mdstate	
MDMONTGOMERYCC	21999	40	MD_MDSTATE	project\vine\md\mdstate	mdmontgomerycc
MDPRINCEGEORGECC	21999	41	MD_MDSTATE	project\vine\md\mdstate	mdprincegeorgecc
MDQUEENCIRC	21999	42	MD_MDSTATE	project\vine\md\mdstate	
MDANNEARUNDELJA	21999	2	MD_MDSTATE	project\vine\md\mdstate	mdannearundelja
MDBALTIMORECITYJA	21999	3	MD_MDSTATE	project\vine\md\mdstate	mdbaltimorecityja
MDBALTIMOREJA	21999	4	MD_MDSTATE	project\vine\md\mdstate	mdbaltimoreja
MDCALVERTJA	21999	5	MD_MDSTATE	project\vine\md\mdstate	mdcalvertja
MDCAROLINEJA	21999	6	MD_MDSTATE	project\vine\md\mdstate	mdcarolineja
MDCARROLLJA	21999	7	MD_MDSTATE	project\vine\md\mdstate	mdcarrollja
MDFREDERICKJA	21999	11	MD_MDSTATE	project\vine\md\mdstate	mdfrederickja
MDGARRETTJA	21999	12	MD_MDSTATE	project\vine\md\mdstate	mdgarrettja
MDHARFORDJA	21999	13	MD_MDSTATE	project\vine\md\mdstate	mdharfordja
MDHOWARDJA	21999	14	MD_MDSTATE	project\vine\md\mdstate	mdhowardja
MDKENTJA	21999	15	MD_MDSTATE	project\vine\md\mdstate	mdkentja
MDMONTGOMERYJA	21999	16	MD_MDSTATE	project\vine\md\mdstate	mdmontgomeryja
MDPRINCEGEORGEJA	21999	17	MD_MDSTATE	project\vine\md\mdstate	mdprincegeorgeja
MDQUEENANNEJA	21999	18	MD_MDSTATE	project\vine\md\mdstate	mdqueenanneja
MDSOMERSETJA	21999	19	MD_MDSTATE	project\vine\md\mdstate	mdsomersetja
MDSTMARYJA	21999	20	MD_MDSTATE	project\vine\md\mdstate	mdstmaryja
MDTALBOTJA	21999	21	MD_MDSTATE	project\vine\md\mdstate	mdtalbotja
MDWICOMICOJA	21999	23	MD_MDSTATE	project\vine\md\mdstate	mdwicomicoja
MDWORCESTERJA	21999	24	MD_MDSTATE	project\vine\md\mdstate	mdworcesterja
MDANNEARUNDELCC	21999	26	MD_MDSTATE	project\vine\md\mdstate	mdannearundelcc
MDBALTIMORECC	21999	27	MD_MDSTATE	project\vine\md\mdstate	mdbaltimorecc
MDBALTIMORECITYCC	21999	28	MD_MDSTATE	project\vine\md\mdstate	mdbaltimorecitycc
MDCALVERTCIRC	21999	29	MD_MDSTATE	project\vine\md\mdstate	
MDCAROLINECC	21999	30	MD_MDSTATE	project\vine\md\mdstate	
MDCARROLLCC	21999	31	MD_MDSTATE	project\vine\md\mdstate	
MDCECILCIRC	21999	32	MD_MDSTATE	project\vine\md\mdstate	
MDCHARLESCIRC	21999	33	MD_MDSTATE	project\vine\md\mdstate	
MDDORCHESTCIRC	21999	34	MD_MDSTATE	project\vine\md\mdstate	
MDHARFORDCIRC	21999	37	MD_MDSTATE	project\vine\md\mdstate	
MDHOWARDCIRC	21999	38	MD_MDSTATE	project\vine\md\mdstate	
KYMEADEJA	18000	82	KY_KYSTATE	project\vine\ky\kystate	kymeadeja
KYMONROEJA	18000	86	KY_KYSTATE	project\vine\ky\kystate	kymonroeja
KYMONTGOMERYJA	18000	87	KY_KYSTATE	project\vine\ky\kystate	kymontgomeryja
KYMUHLENBURGJA	18000	89	KY_KYSTATE	project\vine\ky\kystate	kymuhlenbergja
KYBOURBONJA	18000	9	KY_KYSTATE	project\vine\ky\kystate	kybourbonja
KYOLDHAMJA	18000	93	KY_KYSTATE	project\vine\ky\kystate	kyoldhamja
KYPERRYJA	18000	97	KY_KYSTATE	project\vine\ky\kystate	kyperryja
KYPIKEJA	18000	98	KY_KYSTATE	project\vine\ky\kystate	kypikeja
KYPOWELLJA	18000	99	KY_KYSTATE	project\vine\ky\kystate	kypowellja
KYMARSHALLJA	18000	79	KY_KYSTATE	project\vine\ky\kystate	kymarshallja
KYMASONJA	18000	81	KY_KYSTATE	project\vine\ky\kystate	kymasonja
KYHENDERSONJA	18000	51	KY_KYSTATE	project\vine\ky\kystate	kyhendersonja
LA	18000	513	KY_KYSTATE	project\vine\ky\kystate	
KYHOPKINSJA	18000	54	KY_KYSTATE	project\vine\ky\kystate	kyhopkinsja
KYJACKSONJA	18000	55	KY_KYSTATE	project\vine\ky\kystate	kyjacksonja
KYJESSAMINEJA	18000	57	KY_KYSTATE	project\vine\ky\kystate	kyjessamineja
KYKENTONJA	18000	59	KY_KYSTATE	project\vine\ky\kystate	kykentonja
KYKNOTTJA	18000	60	KY_KYSTATE	project\vine\ky\kystate	kyknottja
KYKNOXJA	18000	61	KY_KYSTATE	project\vine\ky\kystate	kyknoxja
KYLARUEJA	18000	62	KY_KYSTATE	project\vine\ky\kystate	kylarueja
KYLAURELJA	18000	63	KY_KYSTATE	project\vine\ky\kystate	kylaurelja
KYLEEJA	18000	65	KY_KYSTATE	project\vine\ky\kystate	kyleeja
KYLESLIEJA	18000	66	KY_KYSTATE	project\vine\ky\kystate	kyleslieja
KYLETCHERJA	18000	67	KY_KYSTATE	project\vine\ky\kystate	kyletcherja
KYLEWISJA	18000	68	KY_KYSTATE	project\vine\ky\kystate	kylewisja
KYLINCOLNJA	18000	69	KY_KYSTATE	project\vine\ky\kystate	kylincolnja
KYLIVINGSTONJA	18000	70	KY_KYSTATE	project\vine\ky\kystate	kylivingstonja
KYLOGANJA	18000	71	KY_KYSTATE	project\vine\ky\kystate	kyloganja
KYMCCRACKENJA	18000	73	KY_KYSTATE	project\vine\ky\kystate	kymccrackenja
KYMCCREARYJA	18000	74	KY_KYSTATE	project\vine\ky\kystate	kymccrearyja
KYALLENJA	18000	2	KY_KYSTATE	project\vine\ky\kystate	kyallenja
KYCARROLLJA	18000	21	KY_KYSTATE	project\vine\ky\kystate	kycarrollja
KYADAIRJU	18000	210	KY_KYSTATE	project\vine\ky\kystate	kyadairju
KYBREATHITTJU	18000	220	KY_KYSTATE	project\vine\ky\kystate	kybreathittju
KYCASEYJA	18000	23	KY_KYSTATE	project\vine\ky\kystate	kycaseyja
KYFAYETTEJU	18000	230	KY_KYSTATE	project\vine\ky\kystate	kyfayetteju
KYCHRISTIANJA	18000	24	KY_KYSTATE	project\vine\ky\kystate	kychristianja
KYCLARKJA	18000	25	KY_KYSTATE	project\vine\ky\kystate	kyclarkja
KYJEFFERSONJU	18000	250	KY_KYSTATE	project\vine\ky\kystate	kyjeffersonju
KYCLAYJA	18000	26	KY_KYSTATE	project\vine\ky\kystate	kyclayja
KYCLINTONJA	18000	27	KY_KYSTATE	project\vine\ky\kystate	kyclintonja
KYCRITTENDENJA	18000	28	KY_KYSTATE	project\vine\ky\kystate	kycrittendenja
KYDAVIESSJA	18000	30	KY_KYSTATE	project\vine\ky\kystate	kydaviessja
KYFAYETTEJA	18000	34	KY_KYSTATE	project\vine\ky\kystate	kyfayetteja
KYFLOYDJA	18000	36	KY_KYSTATE	project\vine\ky\kystate	kyfloydja
KYFRANKLINJA	18000	37	KY_KYSTATE	project\vine\ky\kystate	kyfranklinja
KYFULTONJA	18000	38	KY_KYSTATE	project\vine\ky\kystate	kyfultonja
KYBALLARDJA	18000	4	KY_KYSTATE	project\vine\ky\kystate	kyballardja
KYGRANTJA	18000	41	KY_KYSTATE	project\vine\ky\kystate	kygrantja
KYGRAVESJA	18000	42	KY_KYSTATE	project\vine\ky\kystate	kygravesja
KYGRAYSONJA	18000	43	KY_KYSTATE	project\vine\ky\kystate	kygraysonja
KYGREENUPJA	18000	45	KY_KYSTATE	project\vine\ky\kystate	kygreenupja
KYBARRENJA	18000	5	KY_KYSTATE	project\vine\ky\kystate	kybarrenja
KYHARTJA	18000	50	KY_KYSTATE	project\vine\ky\kystate	kyhartja
KYDOC	18000	500	KY_KYSTATE	project\vine\ky\kystate	kydoc
KYCALDWELLJA	18000	17	KY_KYSTATE	project\vine\ky\kystate	kycaldwellja
KYEASTERNSTATEMH	18000	171	KY_KYSTATE	project\vine\ky\kystate	kyeasternstatemh
KYWESTERNSTATEMH	18000	172	KY_KYSTATE	project\vine\ky\kystate	kywesternstatemh
KYCALLOWAYJA	18000	18	KY_KYSTATE	project\vine\ky\kystate	kycallowayja
KYCENTRALSTATEMH	18000	183	KY_KYSTATE	project\vine\ky\kystate	kycentralstatemh
KYCAMPBELLJA	18000	19	KY_KYSTATE	project\vine\ky\kystate	kycampbellja
KYBOYDJA	18000	10	KY_KYSTATE	project\vine\ky\kystate	kyboydja
KYBOYLEJA	18000	11	KY_KYSTATE	project\vine\ky\kystate	kyboyleja
KYDJJ	18000	129	KY_KYSTATE	project\vine\ky\kystate	kydjj
KYBRECKENRIDGEJA	18000	14	KY_KYSTATE	project\vine\ky\kystate	kybreckenridgeja
KYBULLITTJA	18000	15	KY_KYSTATE	project\vine\ky\kystate	kybullittja
KYBUTLERJA	18000	16	KY_KYSTATE	project\vine\ky\kystate	kybutlerja
KYKCPCMH	18000	163	KY_KYSTATE	project\vine\ky\kystate	kykcpcmh
FLBROWARD	10009	1	FL_BROWARD	fl\broward	
FLORANGE	10010	1	FL_ORANGE	fl\orange	
KYPULASKIJA	18000	100	KY_KYSTATE	project\vine\ky\kystate	kypulaskija
KYROCKCASTLEJA	18000	102	KY_KYSTATE	project\vine\ky\kystate	kyrockcastleja
KYROWANJA	18000	103	KY_KYSTATE	project\vine\ky\kystate	kyrowanja
KYSCOTTJA	18000	105	KY_KYSTATE	project\vine\ky\kystate	kyscottja
KYSHELBYJA	18000	106	KY_KYSTATE	project\vine\ky\kystate	kyshelbyja
KYSIMPSONJA	18000	107	KY_KYSTATE	project\vine\ky\kystate	kysimpsonja
KYTAYLORJA	18000	109	KY_KYSTATE	project\vine\ky\kystate	kytaylorja
KYTRIGGJA	18000	111	KY_KYSTATE	project\vine\ky\kystate	kytriggja
KYUNIONJA	18000	113	KY_KYSTATE	project\vine\ky\kystate	kyunionja
KYWARRENJA	18000	114	KY_KYSTATE	project\vine\ky\kystate	kywarrenja
KYWAYNEJA	18000	116	KY_KYSTATE	project\vine\ky\kystate	kywayneja
KYWEBSTERJA	18000	117	KY_KYSTATE	project\vine\ky\kystate	kywebsterja
KYWOODFORDJA	18000	120	KY_KYSTATE	project\vine\ky\kystate	kywoodfordja
KYMCCRACKENJU	18000	240	KY_KYSTATE	project\vine\ky\kystate	kymccrackenju
FLDUVALJL	10001	1	FL_DUVAL	project\vine\fl\duval	
FLMONROE	10006	1	FL_MONROE	fl\monroe	
FLMONROESAO	10007	1	FL_MONROESAO	fl\monsao	
WIOUTAGAMIEJA	50002	1	WI_OUTAGAMIE	project\vine\wi\wioutagamieja	
WIDANECT	50013	1	WI_DANE	project\vine\wi\widane	widanect
WIDANEJA	50013	24	WI_DANE	project\vine\wi\widane	widaneja
TXJOHNSONCNTY	44128	1	TX_JOHNSON	tx\johnson	
TXNUECES	44180	1	TX_NUECES	tx\nueces	
TXSMITHCNTY	44214	1	TX_SMITH	tx\smith	
NEDOC	28000	763	NE_NESTATE	project\vine\ne\nestate	nedoc
NELANCASTERCT	28000	775	NE_NESTATE	project\vine\ne\nestate	nelancasterct
TXDENTCNTY	44003	1	TX_DENTON	tx\denton	
TXLEWIJAIL	44003	2	TX_DENTON	tx\denton	
TXDENTCITY	44003	3	TX_DENTON	tx\denton	
NEWEBSTERJA	28000	672	NE_NESTATE	project\vine\ne\nestate	newebsterja
NEYORKJA	28000	681	NE_NESTATE	project\vine\ne\nestate	neyorkja
NEWASHINGTONJA	28000	660	NE_NESTATE	project\vine\ne\nestate	newashingtonja
NESARPYJA	28000	572	NE_NESTATE	project\vine\ne\nestate	nesarpyja
NESAUNDERSJA	28000	587	NE_NESTATE	project\vine\ne\nestate	nesaundersja
NESEWARDJA	28000	610	NE_NESTATE	project\vine\ne\nestate	nesewardja
NETHURSTONJA	28000	647	NE_NESTATE	project\vine\ne\nestate	nethurstonja
NEVALLEYJA	28000	655	NE_NESTATE	project\vine\ne\nestate	nevalleyja
NEPLATTEJA	28000	531	NE_NESTATE	project\vine\ne\nestate	neplatteja
NERICHARDSONJA	28000	552	NE_NESTATE	project\vine\ne\nestate	nerichardsonja
NEMADISONJA	28000	455	NE_NESTATE	project\vine\ne\nestate	nemadisonja
NENORFJA	28000	456	NE_NESTATE	project\vine\ne\nestate	nenorfolkja
NEJEFFERSONJA	28000	367	NE_NESTATE	project\vine\ne\nestate	nejeffersonja
NEJOHNSONJA	28000	372	NE_NESTATE	project\vine\ne\nestate	nejohnsonja
NEKNOXJA	28000	397	NE_NESTATE	project\vine\ne\nestate	neknoxja
NELANCASTERJA	28000	427	NE_NESTATE	project\vine\ne\nestate	nelancasterja
NEFILMOREJA	28000	273	NE_NESTATE	project\vine\ne\nestate	nefilmoreja
NEFRANKLINJA	28000	279	NE_NESTATE	project\vine\ne\nestate	nefranklinja
NEFRONTIERJA	28000	284	NE_NESTATE	project\vine\ne\nestate	nefrontierja
NEFURNASJA	28000	288	NE_NESTATE	project\vine\ne\nestate	nefurnasja
NEHAMILTONJA	28000	335	NE_NESTATE	project\vine\ne\nestate	nehamiltonja
NEHARLANJA	28000	339	NE_NESTATE	project\vine\ne\nestate	neharlanja
NEHOLTJA	28000	350	NE_NESTATE	project\vine\ne\nestate	neholtja
NECOLFAXJA	28000	155	NE_NESTATE	project\vine\ne\nestate	necolfaxja
NEDAWSONJA	28000	190	NE_NESTATE	project\vine\ne\nestate	nedawsonja
NEDIXONJA	28000	204	NE_NESTATE	project\vine\ne\nestate	nedixonja
NEDODGEJA	28000	209	NE_NESTATE	project\vine\ne\nestate	nedodgeja
NEBROWNJA	28000	81	NE_NESTATE	project\vine\ne\nestate	nebrownja
NEBUFFALOJA	28000	86	NE_NESTATE	project\vine\ne\nestate	nebuffaloja
NECASSJA	28000	114	NE_NESTATE	project\vine\ne\nestate	necassja
NECHERRYJA	28000	138	NE_NESTATE	project\vine\ne\nestate	necherryja
NEADAMSJA	28000	40	NE_NESTATE	project\vine\ne\nestate	neadamsja
INHAMILTON	15029	1	IN_HAMILTON	project\vine\in\inhamilton	inhamiltonja
LASTMAJA	19003	1	LA_STMARTIN	la\stmartin	
ILCOOKJA	14003	1	IL_COOK	project\vine\il\ilcook	ilcookja
ARYELLJA	4999	192	AR_ARSTATE	project\vine\ar\arstate	aryellja
ARYELLJA2	4999	194	AR_ARSTATE	project\vine\ar\arstate	aryellja2
ARHOSPITAL	4999	195	AR_ARSTATE	project\vine\ar\arstate	arhospital
AR047035G	4999	197	AR_ARSTATE	project\vine\ar\arstate	
ARNEWTONJA	4999	132	AR_ARSTATE	project\vine\ar\arstate	arnewtonja
AROUACHITAJA	4999	134	AR_ARSTATE	project\vine\ar\arstate	
ARPERRYJA	4999	137	AR_ARSTATE	project\vine\ar\arstate	arperryja
ARPERRYPR	4999	138	AR_ARSTATE	project\vine\ar\arstate	arperrypr
ARPHILLIPSJA	4999	139	AR_ARSTATE	project\vine\ar\arstate	arphillipsja
ARPHILLIPSPR	4999	140	AR_ARSTATE	project\vine\ar\arstate	arphillipspr
ARPIKEPR	4999	143	AR_ARSTATE	project\vine\ar\arstate	arpikepr
ARPOINSETTJA	4999	144	AR_ARSTATE	project\vine\ar\arstate	arpoinsettja
ARPOINSETTPR	4999	145	AR_ARSTATE	project\vine\ar\arstate	arpoinsettpr
ARPOLKJA	4999	146	AR_ARSTATE	project\vine\ar\arstate	arpolkja
ARPOLKPR	4999	147	AR_ARSTATE	project\vine\ar\arstate	arpolkpr
ARPOPEJA	4999	149	AR_ARSTATE	project\vine\ar\arstate	arpopeja
ARPRAIRIEJA	4999	151	AR_ARSTATE	project\vine\ar\arstate	arprairieja
ARPRAIRIEPR	4999	152	AR_ARSTATE	project\vine\ar\arstate	arprairiepr
ARPULASKIJA	4999	154	AR_ARSTATE	project\vine\ar\arstate	arpulaskija
AR060000C	4999	155	AR_ARSTATE	project\vine\ar\arstate	
ARPULASKIPR	4999	156	AR_ARSTATE	project\vine\ar\arstate	arpulaskipr
AR060015C	4999	157	AR_ARSTATE	project\vine\ar\arstate	
AR060045C	4999	158	AR_ARSTATE	project\vine\ar\arstate	
AR060055C	4999	159	AR_ARSTATE	project\vine\ar\arstate	
ARRANDOLPHPR	4999	162	AR_ARSTATE	project\vine\ar\arstate	arrandolphpr
ARSTFRANCISJA	4999	163	AR_ARSTATE	project\vine\ar\arstate	arstfrancisja
ARSALINEJA	4999	165	AR_ARSTATE	project\vine\ar\arstate	arsalineja
AR063015C	4999	167	AR_ARSTATE	project\vine\ar\arstate	
ARSCOTTJA	4999	168	AR_ARSTATE	project\vine\ar\arstate	arscottja
ARSCOTTPR	4999	169	AR_ARSTATE	project\vine\ar\arstate	arscottpr
ARSEARCYJA	4999	170	AR_ARSTATE	project\vine\ar\arstate	arsearcyja
ARSEARCYPR	4999	171	AR_ARSTATE	project\vine\ar\arstate	arsearcypr
ARSEBASTIANJA	4999	172	AR_ARSTATE	project\vine\ar\arstate	arsebastianja
ARSEBASTIANPR	4999	173	AR_ARSTATE	project\vine\ar\arstate	arsebastianpr
ARSEVIERJA	4999	175	AR_ARSTATE	project\vine\ar\arstate	arsevierja
ARSTONEJA	4999	179	AR_ARSTATE	project\vine\ar\arstate	arstoneja
ARSTONEPR	4999	180	AR_ARSTATE	project\vine\ar\arstate	arstonepr
ARUNIONPR	4999	182	AR_ARSTATE	project\vine\ar\arstate	arunionpr
ARVANBURENPR	4999	183	AR_ARSTATE	project\vine\ar\arstate	arvanburenpr
ARVANBURENJA	4999	184	AR_ARSTATE	project\vine\ar\arstate	arvanburenja
AR072015C	4999	187	AR_ARSTATE	project\vine\ar\arstate	
ARWHITEJA	4999	188	AR_ARSTATE	project\vine\ar\arstate	arwhiteja
ARWHITEPR	4999	189	AR_ARSTATE	project\vine\ar\arstate	arwhitepr
ARWOODRUFFJA	4999	190	AR_ARSTATE	project\vine\ar\arstate	arwoodruffja
ARWOODRUFFPR	4999	191	AR_ARSTATE	project\vine\ar\arstate	arwoodruffpr
ARMONTGOMERYJA	4999	129	AR_ARSTATE	project\vine\ar\arstate	armontgomeryja
ARNEVADAJA	4999	130	AR_ARSTATE	project\vine\ar\arstate	arnevadaja
ARINDEPENDENCEJA	4999	71	AR_ARSTATE	project\vine\ar\arstate	arindependenceja
ARINDEPENDENCEPR	4999	72	AR_ARSTATE	project\vine\ar\arstate	arindependencepr
ARIZARDJA	4999	73	AR_ARSTATE	project\vine\ar\arstate	arizardja
AR033015C	4999	75	AR_ARSTATE	project\vine\ar\arstate	
ARJACKSONJA	4999	76	AR_ARSTATE	project\vine\ar\arstate	arjacksonja
ARJACKSONPR	4999	78	AR_ARSTATE	project\vine\ar\arstate	arjacksonpr
AR034015C	4999	80	AR_ARSTATE	project\vine\ar\arstate	
ARAG	4999	81	AR_ARSTATE	project\vine\ar\arstate	ag
ARJEFFERSONJA	4999	82	AR_ARSTATE	project\vine\ar\arstate	arjeffersonja
AR035000C	4999	83	AR_ARSTATE	project\vine\ar\arstate	
ARJEFFERSONPR	4999	84	AR_ARSTATE	project\vine\ar\arstate	arjeffersonpr
AR035015C	4999	85	AR_ARSTATE	project\vine\ar\arstate	
ARDOC	4999	86	AR_ARSTATE	project\vine\ar\arstate	ardoc
AR035055C	4999	87	AR_ARSTATE	project\vine\ar\arstate	
AR035065C	4999	88	AR_ARSTATE	project\vine\ar\arstate	
AR035125C	4999	90	AR_ARSTATE	project\vine\ar\arstate	
AR035155C	4999	91	AR_ARSTATE	project\vine\ar\arstate	
AR035165C	4999	92	AR_ARSTATE	project\vine\ar\arstate	
ARJOHNSONJA	4999	93	AR_ARSTATE	project\vine\ar\arstate	arjohnsonja
ARJOHNSONPR	4999	94	AR_ARSTATE	project\vine\ar\arstate	arjohnsonpr
ARLAFAYETTEJA	4999	95	AR_ARSTATE	project\vine\ar\arstate	arlafayetteja
ARLEEJA	4999	99	AR_ARSTATE	project\vine\ar\arstate	arleeja
ARLINCOLNJA	4999	102	AR_ARSTATE	project\vine\ar\arstate	arlincolnja
AR040000C	4999	103	AR_ARSTATE	project\vine\ar\arstate	
ARLINCOLNPR	4999	104	AR_ARSTATE	project\vine\ar\arstate	arlincolnpr
AR040015C	4999	105	AR_ARSTATE	project\vine\ar\arstate	
AR040025C	4999	106	AR_ARSTATE	project\vine\ar\arstate	
ARLITTLERIVERJA	4999	107	AR_ARSTATE	project\vine\ar\arstate	arlittleriverja
ARLITTLERIVERPR	4999	108	AR_ARSTATE	project\vine\ar\arstate	arlittleriverpr
ARLOGANPR	4999	110	AR_ARSTATE	project\vine\ar\arstate	arloganpr
ARLONOKEJA	4999	112	AR_ARSTATE	project\vine\ar\arstate	arlonokeja
ARLONOKEPR	4999	113	AR_ARSTATE	project\vine\ar\arstate	arlonokepr
ARMADISONJA	4999	114	AR_ARSTATE	project\vine\ar\arstate	armadisonja
ARMARIONJA	4999	116	AR_ARSTATE	project\vine\ar\arstate	armarionja
ARMARIONPR	4999	117	AR_ARSTATE	project\vine\ar\arstate	armarionpr
ARMILLERJA	4999	118	AR_ARSTATE	project\vine\ar\arstate	armillerja
ARMILLERPR	4999	119	AR_ARSTATE	project\vine\ar\arstate	armillerpr
AR046015C	4999	120	AR_ARSTATE	project\vine\ar\arstate	
ARMISSISSIPPIBLPR	4999	123	AR_ARSTATE	project\vine\ar\arstate	armississippiblpr
ARMISSISSIPPIOSPR	4999	124	AR_ARSTATE	project\vine\ar\arstate	armississippiospr
AR047025C	4999	125	AR_ARSTATE	project\vine\ar\arstate	
ARMONROEPR	4999	127	AR_ARSTATE	project\vine\ar\arstate	armonroepr
IAOHDRC	99999999	11111111	GENERAL TEST SITE	project/vine/assurance	iaohdrc
ARHEMPSTEADJA	4999	65	AR_ARSTATE	project\vine\ar\arstate	arhempsteadja
ARHEMPSTEADPR	4999	66	AR_ARSTATE	project\vine\ar\arstate	arhempsteadpr
ARHOTSPRINGJA	4999	67	AR_ARSTATE	project\vine\ar\arstate	arhotspringja
ARHOTSPRINGPR	4999	68	AR_ARSTATE	project\vine\ar\arstate	arhotspringpr
ARHOWARDJA	4999	69	AR_ARSTATE	project\vine\ar\arstate	arhowardja
WILSONTN	43001	1	TN_WILSON	tn\wilson	
ARCALHOUNPR	4999	15	AR_ARSTATE	project\vine\ar\arstate	
ARCLARKPR	4999	24	AR_ARSTATE	project\vine\ar\arstate	clarpr
ARCOLUMBIAPR	4999	33	AR_ARSTATE	project\vine\ar\arstate	arcolumbiapr
CANAPAJA	5099	139	CA_MULTICO	project\vine\ca\multico	canapaja
OHDELEWAREJA	36001	154	OH_OHSTATE	project\vine\oh\ohstate	ohdelewareja
NCWATAUGAPR	34003	1095	NC_STATE	project\vine\nc\ncstate	ncwataugapr
NCHARNETTPR	34003	1043	NC_STATE	project\vine\nc\ncstate	ncharnettpr
NCHERTFORDPR	34003	1046	NC_STATE	project\vine\nc\ncstate	nchertfordpr
NCHYDEPR	34003	1048	NC_STATE	project\vine\nc\ncstate	nchydepr
NCJOHNSTONPR	34003	1051	NC_STATE	project\vine\nc\ncstate	ncjohnstonpr
NCMARTINPR	34003	1059	NC_STATE	project\vine\nc\ncstate	ncmartinpr
NCNASHPR	34003	1064	NC_STATE	project\vine\nc\ncstate	ncnashpr
NCPAMLICOPR	34003	1069	NC_STATE	project\vine\nc\ncstate	ncpamlicopr
NCROCKINGHAMPR	34003	1079	NC_STATE	project\vine\nc\ncstate	ncrockinghampr
NCSWAINPR	34003	1087	NC_STATE	project\vine\nc\ncstate	ncswainpr
NCTYRRELLPR	34003	1089	NC_STATE	project\vine\nc\ncstate	nctyrellpr
NCALEXANDERJA	34003	3	NC_STATE	project\vine\nc\ncstate	ncalexanderja
NYSCHUYLERJA	33004	448	NY_NYSTATE	project\vine\ny\nystate	nyschuylerja
MIMACKINACPR	23005	149	MI_MISTATE	project\vine\mi\mistate	mimackinacpa
MIMARQUETTEPA	23005	152	MI_MISTATE	project\vine\mi\mistate	mimarquettepa
MIPRESQUEISLEPA	23005	170	MI_MISTATE	project\vine\mi\mistate	mipresqueislepa
MIBRANCHPA	23005	112	MI_MISTATE	project\vine\mi\mistate	mibranchpa
MDWICOMICOCIRC	21999	47	MD_MDSTATE	project\vine\md\mdstate	
MDALLEGANYJAIL	21999	1	MD_MDSTATE	project\vine\md\mdstate	mdalleganyja
MDDORCHESTERJA	21999	10	MD_MDSTATE	project\vine\md\mdstate	mddorchesterja
KYADAIRJA	18000	1	KY_KYSTATE	project\vine\ky\kystate	kyadairja
KYRUSSELLJA	18000	104	KY_KYSTATE	project\vine\ky\kystate	kyrussellja
KYWHITLEYJA	18000	118	KY_KYSTATE	project\vine\ky\kystate	kywhitleyja
NEROCKJA	28000	559	NE_NESTATE	project\vine\ne\nestate	nerockja
NETHAYERJA	28000	638	NE_NESTATE	project\vine\ne\nestate	nethayerja
NEMERRICKJA	28000	467	NE_NESTATE	project\vine\ne\nestate	nemerrickja
NENEMAHAJA	28000	487	NE_NESTATE	project\vine\ne\nestate	nenemahaja
NESUPERIORCITYJA	28000	495	NE_NESTATE	project\vine\ne\nestate	nesuperiorja
NELINCOLNJA	28000	438	NE_NESTATE	project\vine\ne\nestate	nelincolnja
NEGAGEJA	28000	296	NE_NESTATE	project\vine\ne\nestate	negageja
NEHITCHCOCKJA	28000	347	NE_NESTATE	project\vine\ne\nestate	nehitchcockja
NEDAKOTAJA	28000	174	NE_NESTATE	project\vine\ne\nestate	nedakotaja
NECLAYJA	28000	148	NE_NESTATE	project\vine\ne\nestate	neclayja
NEBUTLERJA	28000	109	NE_NESTATE	project\vine\ne\nestate	nebutlerja
KYHICKMANJA	18000	53	KY_KYSTATE	project\vine\ky\kystate	kyhickmanja
AR035085C	4999	198	AR_ARSTATE	project\vine\ar\arstate	
AROUACHITAPR	4999	135	AR_ARSTATE	project\vine\ar\arstate	arouachitapr
NEANTELOPEJA	28000	47	NE_NESTATE	project\vine\ne\nestate	neantelopeja
NECUSTERJA	28000	167	NE_NESTATE	project\vine\ne\nestate	necusterja
NEDUNDYJA	28000	268	NE_NESTATE	project\vine\ne\nestate	nedundyja
NEMCCOOKJA	28000	546	NE_NESTATE	project\vine\ne\nestate	nemccookja
NENUCKOLLSJA	28000	494	NE_NESTATE	project\vine\ne\nestate	nenuckollsja
NYCOLUMBIAJA	33004	410	NY_NYSTATE	project\vine\ny\nystate	nycolumbiaja
NYRENSSELAERJA	33004	441	NY_NYSTATE	project\vine\ny\nystate	nyrensselaerja
NYWYOMINGJA	33004	460	NY_NYSTATE	project\vine\ny\nystate	nywyomingja
OHAUGLAIZEJA	36001	138	OH_OHSTATE	project\vine\oh\ohstate	ohauglaizeja
OHERIEJA	36001	155	OH_OHSTATE	project\vine\oh\ohstate	oherieja
OHMUSKINGUMJA	36001	194	OH_OHSTATE	project\vine\oh\ohstate	ohmuskingumja
OHTRUMBULLJA	36001	212	OH_OHSTATE	project\vine\oh\ohstate	ohtrumbullja
NCHARNET	34003	44	NC_STATE	project\vine\nc\ncstate	ncharnettja
NCMITCHELLJA	34003	62	NC_STATE	project\vine\nc\ncstate	ncmitchellja
NCPERSONJA	34003	74	NC_STATE	project\vine\nc\ncstate	ncpersonja
NCTYRRELLJA	34003	90	NC_STATE	project\vine\nc\ncstate	nctyrrellja
TXWESTCSCD	44989	1	TX_WESTCSCD	project\vine\tx\txwestcscd	
ILADAMSJA	14004	1	IL_ILSTATE	project\vine\il\ilstate	iladamsja
ILADAMSCT	14004	2	IL_ILSTATE	project\vine\il\ilstate	iladamsct
ILALEXANDERJA	14004	3	IL_ILSTATE	project\vine\il\ilstate	
ILALEXANDERCT	14004	4	IL_ILSTATE	project\vine\il\ilstate	ilalexanderct
ILBONDJA	14004	5	IL_ILSTATE	project\vine\il\ilstate	ilbondja
ILBONDCT	14004	6	IL_ILSTATE	project\vine\il\ilstate	ilbondct
ILBOONEJA	14004	7	IL_ILSTATE	project\vine\il\ilstate	ilbooneja
ILBOONECT	14004	8	IL_ILSTATE	project\vine\il\ilstate	ilboonect
ILBROWNJA	14004	9	IL_ILSTATE	project\vine\il\ilstate	
ILBROWNCT	14004	10	IL_ILSTATE	project\vine\il\ilstate	ilbrownct
ILBUREAUJA	14004	11	IL_ILSTATE	project\vine\il\ilstate	ilbureauja
ILBUREAUCT	14004	12	IL_ILSTATE	project\vine\il\ilstate	ilbureauct
ILCALHOUNJA	14004	13	IL_ILSTATE	project\vine\il\ilstate	ilcalhounja
ILCALHOUNCT	14004	14	IL_ILSTATE	project\vine\il\ilstate	ilcalhounct
ILCHAMPAIGNJA	14004	19	IL_ILSTATE	project\vine\il\ilstate	ilchampaignja
ILCHAMPAIGNCT	14004	20	IL_ILSTATE	project\vine\il\ilstate	ilchampaignct
ILCHRISTIANCT	14004	22	IL_ILSTATE	project\vine\il\ilstate	ilchristianct
ILCLARKJA	14004	23	IL_ILSTATE	project\vine\il\ilstate	ilclarkja
ILCLARKCT	14004	24	IL_ILSTATE	project\vine\il\ilstate	
ILCLAYJA	14004	25	IL_ILSTATE	project\vine\il\ilstate	ilclayja
ILCLAYCT	14004	26	IL_ILSTATE	project\vine\il\ilstate	ilclayct
ILCLINTONCT	14004	28	IL_ILSTATE	project\vine\il\ilstate	ilclintonct
ILCOLESJA	14004	29	IL_ILSTATE	project\vine\il\ilstate	ilcolesja
ILCRAWFORDJA	14004	31	IL_ILSTATE	project\vine\il\ilstate	ilcrawfordja
ILCUMBERLANDJA	14004	33	IL_ILSTATE	project\vine\il\ilstate	ilcumberlandja
ILCUMBERLANDCT	14004	34	IL_ILSTATE	project\vine\il\ilstate	ilcumberlandct
ILDEKALBJA	14004	35	IL_ILSTATE	project\vine\il\ilstate	ildekalbja
ILDEKALBCT	14004	36	IL_ILSTATE	project\vine\il\ilstate	ildekalbct
ILDEWITTJA	14004	37	IL_ILSTATE	project\vine\il\ilstate	ildewittja
ILDEWITTCT	14004	38	IL_ILSTATE	project\vine\il\ilstate	ildewittct
ILDOUGLASCT	14004	40	IL_ILSTATE	project\vine\il\ilstate	ildouglasct
ILDUPAGESO	14004	41	IL_ILSTATE	project\vine\il\ilstate	ildupageso
ILDUPAGECT	14004	42	IL_ILSTATE	project\vine\il\ilstate	ildupagect
ILEDGARJA	14004	43	IL_ILSTATE	project\vine\il\ilstate	iledgarja
ILEDGARCT	14004	44	IL_ILSTATE	project\vine\il\ilstate	iledgarct
ILEDWARDSJA	14004	45	IL_ILSTATE	project\vine\il\ilstate	
ILEFFINGHAMJA	14004	47	IL_ILSTATE	project\vine\il\ilstate	ileffinghamja
ILEFFINGHAMCT	14004	48	IL_ILSTATE	project\vine\il\ilstate	ileffinghamct
ILFAYETTECT	14004	50	IL_ILSTATE	project\vine\il\ilstate	ilfayettect
ILFRANKLINCT	14004	54	IL_ILSTATE	project\vine\il\ilstate	ilfranklinct
ILFULTONCT	14004	56	IL_ILSTATE	project\vine\il\ilstate	ilfultonct
ILGRUNDYJA	14004	61	IL_ILSTATE	project\vine\il\ilstate	ilgrundyjl
ILGRUNDYCT	14004	62	IL_ILSTATE	project\vine\il\ilstate	ilgrundyct
ILHAMILTONJA	14004	63	IL_ILSTATE	project\vine\il\ilstate	
ILHANCOCKJA	14004	65	IL_ILSTATE	project\vine\il\ilstate	ilhancockja
ILHANCOCKCT	14004	66	IL_ILSTATE	project\vine\il\ilstate	ilhancockct
ILHARDINJA	14004	67	IL_ILSTATE	project\vine\il\ilstate	ilhardinja
ILHENDERSONJA	14004	69	IL_ILSTATE	project\vine\il\ilstate	ilhendersonja
ILHENDERSONCT	14004	70	IL_ILSTATE	project\vine\il\ilstate	ilhendersonct
ILIROQUOISJA	14004	73	IL_ILSTATE	project\vine\il\ilstate	iliroquoisja
ILIROQUOISCT	14004	74	IL_ILSTATE	project\vine\il\ilstate	iliroquoisct
ILJACKSONCT	14004	76	IL_ILSTATE	project\vine\il\ilstate	iljacksonct
ILJASPERJA	14004	77	IL_ILSTATE	project\vine\il\ilstate	iljasperja
ILJASPERCT	14004	78	IL_ILSTATE	project\vine\il\ilstate	iljasperct
ILJEFFERSONJA	14004	79	IL_ILSTATE	project\vine\il\ilstate	iljeffersonja
ILJEFFERSONCT	14004	80	IL_ILSTATE	project\vine\il\ilstate	iljeffersonct
ILJERSEYJA	14004	81	IL_ILSTATE	project\vine\il\ilstate	iljerseyja
ILJODAVIESSJA	14004	83	IL_ILSTATE	project\vine\il\ilstate	iljodaviessja
ILJODAVIESSCT	14004	84	IL_ILSTATE	project\vine\il\ilstate	iljodaviessct
ILJOHNSONJL	14004	85	IL_ILSTATE	project\vine\il\ilstate	
ILJOHNSONCT	14004	86	IL_ILSTATE	project\vine\il\ilstate	iljohnsonct
ILKANECC	14004	87	IL_ILSTATE	project\vine\il\ilstate	ilkanecc
ILKANECT	14004	88	IL_ILSTATE	project\vine\il\ilstate	ilkanect
ILKANKAKEEJA	14004	89	IL_ILSTATE	project\vine\il\ilstate	ilkankakeeja
ILKANKAKEECT	14004	90	IL_ILSTATE	project\vine\il\ilstate	ilkankakeect
ILKENDALLJA	14004	91	IL_ILSTATE	project\vine\il\ilstate	ilkendallja
ILKENDALLCT	14004	92	IL_ILSTATE	project\vine\il\ilstate	ilkendallct
ILKNOXJA	14004	93	IL_ILSTATE	project\vine\il\ilstate	ilknoxja
ILKNOXCT	14004	94	IL_ILSTATE	project\vine\il\ilstate	ilknoxct
ILLASALLEJA	14004	95	IL_ILSTATE	project\vine\il\ilstate	illasalleja
ILLASALLECT	14004	96	IL_ILSTATE	project\vine\il\ilstate	illasallect
ILLAKECT	14004	98	IL_ILSTATE	project\vine\il\ilstate	
ILLAWRENCEJA	14004	99	IL_ILSTATE	project\vine\il\ilstate	illawrenceja
ILLAWRENCECT	14004	100	IL_ILSTATE	project\vine\il\ilstate	illawrencect
ILLEEJA	14004	101	IL_ILSTATE	project\vine\il\ilstate	illeeja
ILLEECT	14004	102	IL_ILSTATE	project\vine\il\ilstate	illeect
ORUNIONJA	38000	30	OR_ORSTATE	project\vine\or\orstate	orunionja
ORWASHINGTONJA	38000	32	OR_ORSTATE	project\vine\or\orstate	orwashingtonja
ILCUMBERLANDCT_1	114004	33	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILDEKALBJL_1	114004	35	IL_ILSTATE_1	project\vine\il\ilstate_1	ildekalbjl_1
ILDEWITTCT_1	114004	37	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILJACKSONJL_1	114004	39	IL_ILSTATE_1	project\vine\il\ilstate_1	ildouglasjl_1
ILDUPAGESO_1	114004	41	IL_ILSTATE_1	project\vine\il\ilstate_1	ildupageso_1
ILEDGARCT_1	114004	43	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILEDWARDSCT_1	114004	45	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILEFFINGHAMCT_1	114004	47	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILKNOXJL_1	114004	48	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILFAYETTEJL_1	114004	49	IL_ILSTATE_1	project\vine\il\ilstate_1	ilfayettejl_1
ILFORDCT_1	114004	51	IL_ILSTATE_1	project\vine\il\ilstate_1	ilfordjl_1
ILFRANKLINCT_1	114004	53	IL_ILSTATE_1	project\vine\il\ilstate_1	ilfranklinjl_1
ILFULTONCT_1	114004	55	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILGALLATINCT_1	114004	57	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILGREENECT_1	114004	59	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILGRUNDYCT_1	114004	61	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILHAMILTONCT_1	114004	63	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILHANCOCKJL_1	114004	65	IL_ILSTATE_1	project\vine\il\ilstate_1	ilhancockjl_1
ILHARDINJL_1	114004	67	IL_ILSTATE_1	project\vine\il\ilstate_1	ilhardinjl_1
ILHENDERSONCT_1	114004	69	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILHENRYCT_1	114004	71	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILIROQUOISCT_1	114004	73	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILJACKSONCT_1	114004	75	IL_ILSTATE_1	project\vine\il\ilstate_1	iljacksonjl_1
ILJASPERJL_1	114004	77	IL_ILSTATE_1	project\vine\il\ilstate_1	iljasperjl_1
ILJEFFERSONJL_1	114004	79	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILJEFFERSONCT_1	114004	80	IL_ILSTATE_1	project\vine\il\ilstate_1	iljeffersonct_1
ILROCKISLANDJL_1	114004	81	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILSALINEJL_1	114004	82	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILJODAVIEESCT_1	114004	83	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILJOHNSONCT_1	114004	85	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILKANECT_1	114004	87	IL_ILSTATE_1	project\vine\il\ilstate_1	ilkanecc_1
ILSTARKJL_1	114004	88	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILKANKAKEECT_1	114004	89	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILKENDALLCT_1	114004	91	IL_ILSTATE_1	project\vine\il\ilstate_1	
ORBAKERJA	38000	1	OR_ORSTATE	project\vine\or\orstate	orbakerja
ORBENTONJA	38000	2	OR_ORSTATE	project\vine\or\orstate	orbentonja
ORCLACKAMASJA	38000	3	OR_ORSTATE	project\vine\or\orstate	orclackamasja
ORCLATSOPJA	38000	4	OR_ORSTATE	project\vine\or\orstate	orclatsopja
ORCOLUMBIAJA	38000	5	OR_ORSTATE	project\vine\or\orstate	orcolumbiaja
ORCOOSJA	38000	6	OR_ORSTATE	project\vine\or\orstate	orcoosja
ORCROOKJA	38000	7	OR_ORSTATE	project\vine\or\orstate	orcrookja
ORCURRYJA	38000	8	OR_ORSTATE	project\vine\or\orstate	orcurryja
ORDESCHUTESJA	38000	9	OR_ORSTATE	project\vine\or\orstate	ordeschutesja
ORDOUGLASJA	38000	10	OR_ORSTATE	project\vine\or\orstate	ordouglasja
ORGRANTJA	38000	12	OR_ORSTATE	project\vine\or\orstate	orgrantja
ORHARNEYJA	38000	13	OR_ORSTATE	project\vine\or\orstate	orharneyja
ORJACKSONJA	38000	15	OR_ORSTATE	project\vine\or\orstate	orjacksonja
ORJEFFERSONJA	38000	16	OR_ORSTATE	project\vine\or\orstate	orjeffersonja
ORJOSEPHINEJA	38000	17	OR_ORSTATE	project\vine\or\orstate	orjosephineja
ORKLAMATHJA	38000	18	OR_ORSTATE	project\vine\or\orstate	orklamathja
ORLAKEJA	38000	19	OR_ORSTATE	project\vine\or\orstate	orlakeja
ORLINNJA	38000	22	OR_ORSTATE	project\vine\or\orstate	orlinnja
ORMALHEURJA	38000	23	OR_ORSTATE	project\vine\or\orstate	ormalheurja
ORMARIONJA	38000	24	OR_ORSTATE	project\vine\or\orstate	ormarionja
ORPOLKJA	38000	26	OR_ORSTATE	project\vine\or\orstate	orpolkja
ORTILLAMOOKJA	38000	28	OR_ORSTATE	project\vine\or\orstate	ortillamookja
ORNORCORJA	38000	951	OR_ORSTATE	project\vine\or\orstate	ornorcorja
MNAITKINJA	24002	1	MN_MNSTATE	project\vine\mn\mnstate	mnaitkinja
MNBECKERJA	24002	3	MN_MNSTATE	project\vine\mn\mnstate	mnbeckerja
MNBELTRAMIJA	24002	4	MN_MNSTATE	project\vine\mn\mnstate	mnbeltramija
MNBENTONJA	24002	5	MN_MNSTATE	project\vine\mn\mnstate	mnbentonja
MNBLUEEARTHJA	24002	6	MN_MNSTATE	project\vine\mn\mnstate	mnblueearthja
MNBROWNJA	24002	7	MN_MNSTATE	project\vine\mn\mnstate	mnbrownja
MNCARLTONJA	24002	8	MN_MNSTATE	project\vine\mn\mnstate	mncarltonja
MNCARVERJA	24002	9	MN_MNSTATE	project\vine\mn\mnstate	mncarverja
MNCASSJA	24002	10	MN_MNSTATE	project\vine\mn\mnstate	mncassja
MNCHIPPEWAJA	24002	11	MN_MNSTATE	project\vine\mn\mnstate	mnchippewaja
MNCHISAGOJA	24002	12	MN_MNSTATE	project\vine\mn\mnstate	mnchisagoja
MNCLAYJA	24002	13	MN_MNSTATE	project\vine\mn\mnstate	mnclayja
MNCLEARWATERJA	24002	14	MN_MNSTATE	project\vine\mn\mnstate	mnclearwaterja
MNCOOKJA	24002	15	MN_MNSTATE	project\vine\mn\mnstate	mncookja
MNCOTTONWOODJA	24002	16	MN_MNSTATE	project\vine\mn\mnstate	mncottonwoodja
MNCROWWINGJA	24002	17	MN_MNSTATE	project\vine\mn\mnstate	mncrowwingja
MNDAKOTAJA	24002	18	MN_MNSTATE	project\vine\mn\mnstate	mndakotaja
MNDOUGLASJA	24002	19	MN_MNSTATE	project\vine\mn\mnstate	mndouglasja
MNFARIBAULTJA	24002	20	MN_MNSTATE	project\vine\mn\mnstate	mnfaribaultja
MNFILLMOREJA	24002	21	MN_MNSTATE	project\vine\mn\mnstate	mnfillmoreja
MNFREEBORNJA	24002	22	MN_MNSTATE	project\vine\mn\mnstate	mnfreebornja
MNGOODHUEJA	24002	23	MN_MNSTATE	project\vine\mn\mnstate	mngoodhueja
MNHENNEPINJA	24002	24	MN_MNSTATE	project\vine\mn\mnstate	mnhennepinja
MNHOUSTONJA	24002	25	MN_MNSTATE	project\vine\mn\mnstate	mnhoustonja
MNHUBBARDJA	24002	26	MN_MNSTATE	project\vine\mn\mnstate	mnhubbardja
MNISANTIJA	24002	27	MN_MNSTATE	project\vine\mn\mnstate	mnisantija
MNJACKSONJA	24002	29	MN_MNSTATE	project\vine\mn\mnstate	mnjacksonja
MNKANABECJA	24002	30	MN_MNSTATE	project\vine\mn\mnstate	mnkanabecja
MNKANDIYOHIJA	24002	31	MN_MNSTATE	project\vine\mn\mnstate	mnkandiyohija
MNKITTSONJA	24002	32	MN_MNSTATE	project\vine\mn\mnstate	mnkittsonja
MNKOOCHICHINGJA	24002	33	MN_MNSTATE	project\vine\mn\mnstate	mnkoochichingja
MNLACQUIPARLEJA	24002	34	MN_MNSTATE	project\vine\mn\mnstate	mnlacquiparleja
MNLAKEOFTHEWOODSJA	24002	36	MN_MNSTATE	project\vine\mn\mnstate	mnlakeofthewoodsja
MNLESUEURJA	24002	37	MN_MNSTATE	project\vine\mn\mnstate	mnlesueurja
MNLYONJA	24002	39	MN_MNSTATE	project\vine\mn\mnstate	mnlyonja
MNMAHNOMENJA	24002	40	MN_MNSTATE	project\vine\mn\mnstate	
MNMARTINJA	24002	41	MN_MNSTATE	project\vine\mn\mnstate	mnmartinja
MNMCLEODJA	24002	42	MN_MNSTATE	project\vine\mn\mnstate	mnmcleodja
MNMILLELACSJA	24002	44	MN_MNSTATE	project\vine\mn\mnstate	mnmillelacsja
MNMOWERJA	24002	46	MN_MNSTATE	project\vine\mn\mnstate	mnmowerja
MNMURRAYJA	24002	47	MN_MNSTATE	project\vine\mn\mnstate	
MNNICOLLETJA	24002	48	MN_MNSTATE	project\vine\mn\mnstate	mnnicolletja
MNNOBLESJA	24002	49	MN_MNSTATE	project\vine\mn\mnstate	mnnoblesja
MNOLMSTEDJA	24002	50	MN_MNSTATE	project\vine\mn\mnstate	mnolmstedja
MNPINEJA	24002	52	MN_MNSTATE	project\vine\mn\mnstate	mnpineja
MNPIPESTONEJA	24002	53	MN_MNSTATE	project\vine\mn\mnstate	mnpipestoneja
MNTRICOUNTYJA	24002	54	MN_MNSTATE	project\vine\mn\mnstate	
MNRAMSEYJA	24002	55	MN_MNSTATE	project\vine\mn\mnstate	mnramseyja
MNRENVILLEJA	24002	57	MN_MNSTATE	project\vine\mn\mnstate	
MNRICEJA	24002	58	MN_MNSTATE	project\vine\mn\mnstate	mnriceja
MNROSEAUJA	24002	59	MN_MNSTATE	project\vine\mn\mnstate	mnroseauja
MNSCOTTJA	24002	60	MN_MNSTATE	project\vine\mn\mnstate	mnscottja
MNSHERBURNEJA	24002	61	MN_MNSTATE	project\vine\mn\mnstate	mnsherburneja
MNSTLOUISJA	24002	63	MN_MNSTATE	project\vine\mn\mnstate	mnstlouisja
MNSTEARNSJA	24002	64	MN_MNSTATE	project\vine\mn\mnstate	mnstearnsja
MNSTEELEJA	24002	65	MN_MNSTATE	project\vine\mn\mnstate	mnsteeleja
MNSTEVENSJA	24002	66	MN_MNSTATE	project\vine\mn\mnstate	mnstevensja
MNSWIFTJA	24002	67	MN_MNSTATE	project\vine\mn\mnstate	mnswiftja
MNTODDJA	24002	68	MN_MNSTATE	project\vine\mn\mnstate	mntoddja
MNTRAVERSEJA	24002	69	MN_MNSTATE	project\vine\mn\mnstate	
MNWABASHAJA	24002	70	MN_MNSTATE	project\vine\mn\mnstate	mnwabashaja
MNWADENAJA	24002	71	MN_MNSTATE	project\vine\mn\mnstate	mnwadenaja
MNWASECAJA	24002	72	MN_MNSTATE	project\vine\mn\mnstate	mnwasecaja
MNWASHINGTONJA	24002	73	MN_MNSTATE	project\vine\mn\mnstate	mnwashingtonja
MNWATONWANJA	24002	74	MN_MNSTATE	project\vine\mn\mnstate	mnwatonwanja
MNWILKINJA	24002	75	MN_MNSTATE	project\vine\mn\mnstate	mnwilkinja
MNWINONAJA	24002	76	MN_MNSTATE	project\vine\mn\mnstate	mnwinonaja
MNWRIGHTJA	24002	77	MN_MNSTATE	project\vine\mn\mnstate	mnwrightja
MNYELLOWMEDICINEJA	24002	78	MN_MNSTATE	project\vine\mn\mnstate	mnyellowmedicineja
MNDOC	24002	900	MN_MNSTATE	project\vine\mn\mnstate	mndoc
MNSTATEWIDE	24002	999	MN_MNSTATE	project\vine\mn\mnstate	
MNAITKINCT	24002	301	MN_MNSTATE	project\vine\mn\mnstate	
MNANOKACT	24002	302	MN_MNSTATE	project\vine\mn\mnstate	
MNBECKERCT	24002	303	MN_MNSTATE	project\vine\mn\mnstate	
MNBELTRAMICT	24002	304	MN_MNSTATE	project\vine\mn\mnstate	
MNBENTONCT	24002	305	MN_MNSTATE	project\vine\mn\mnstate	
MNBLUEEARTHCT	24002	306	MN_MNSTATE	project\vine\mn\mnstate	
MNBROWNCT	24002	307	MN_MNSTATE	project\vine\mn\mnstate	
MNCARLTONCT	24002	308	MN_MNSTATE	project\vine\mn\mnstate	
MNCARVERCT	24002	309	MN_MNSTATE	project\vine\mn\mnstate	
MNCASSCT	24002	310	MN_MNSTATE	project\vine\mn\mnstate	
MNCHIPPEWACT	24002	311	MN_MNSTATE	project\vine\mn\mnstate	
MNCHISAGOCT	24002	312	MN_MNSTATE	project\vine\mn\mnstate	
MNCLAYCT	24002	313	MN_MNSTATE	project\vine\mn\mnstate	
MNCLEARWATERCT	24002	314	MN_MNSTATE	project\vine\mn\mnstate	
MNCOOKCT	24002	315	MN_MNSTATE	project\vine\mn\mnstate	
MNCOTTONWOODCT	24002	316	MN_MNSTATE	project\vine\mn\mnstate	
MNCROWWINGCT	24002	317	MN_MNSTATE	project\vine\mn\mnstate	
MNDAKOTACT	24002	318	MN_MNSTATE	project\vine\mn\mnstate	
MNDOUGLASCT	24002	319	MN_MNSTATE	project\vine\mn\mnstate	
MNFARIBAULTCT	24002	320	MN_MNSTATE	project\vine\mn\mnstate	
MNFILLMORECT	24002	321	MN_MNSTATE	project\vine\mn\mnstate	
MNFREEBORNCT	24002	322	MN_MNSTATE	project\vine\mn\mnstate	
MNGOODHUECT	24002	323	MN_MNSTATE	project\vine\mn\mnstate	
MNHENNEPINCT	24002	324	MN_MNSTATE	project\vine\mn\mnstate	
MNHOUSTONCT	24002	325	MN_MNSTATE	project\vine\mn\mnstate	
MNHUBBARDCT	24002	326	MN_MNSTATE	project\vine\mn\mnstate	
MNISANTICT	24002	327	MN_MNSTATE	project\vine\mn\mnstate	
MNITASCACT	24002	328	MN_MNSTATE	project\vine\mn\mnstate	
MNJACKSONCT	24002	329	MN_MNSTATE	project\vine\mn\mnstate	
MNKANABECCT	24002	330	MN_MNSTATE	project\vine\mn\mnstate	
MNKANDIYOHICT	24002	331	MN_MNSTATE	project\vine\mn\mnstate	
MNKITTSONCT	24002	332	MN_MNSTATE	project\vine\mn\mnstate	
MNKOOCHICHINGCT	24002	333	MN_MNSTATE	project\vine\mn\mnstate	
MNLACQUIPARLECT	24002	334	MN_MNSTATE	project\vine\mn\mnstate	
MNLAKECT	24002	335	MN_MNSTATE	project\vine\mn\mnstate	
MNLAKEOFWOODSCT	24002	336	MN_MNSTATE	project\vine\mn\mnstate	
MNLESUERCT	24002	337	MN_MNSTATE	project\vine\mn\mnstate	
MNLINCOLNCT	24002	338	MN_MNSTATE	project\vine\mn\mnstate	
MNLYONCT	24002	339	MN_MNSTATE	project\vine\mn\mnstate	
MNMAHNOMENCT	24002	340	MN_MNSTATE	project\vine\mn\mnstate	
MNMARTINCT	24002	341	MN_MNSTATE	project\vine\mn\mnstate	
MNMCLEODCT	24002	342	MN_MNSTATE	project\vine\mn\mnstate	
MNMEEKERCT	24002	343	MN_MNSTATE	project\vine\mn\mnstate	
MNMILLELACSCT	24002	344	MN_MNSTATE	project\vine\mn\mnstate	
MNMORRISONCT	24002	345	MN_MNSTATE	project\vine\mn\mnstate	
MNMOWERCT	24002	346	MN_MNSTATE	project\vine\mn\mnstate	
MNMURRAYCT	24002	347	MN_MNSTATE	project\vine\mn\mnstate	
MNNICOLLETCT	24002	348	MN_MNSTATE	project\vine\mn\mnstate	
MNNOBLESCT	24002	349	MN_MNSTATE	project\vine\mn\mnstate	
MNOLMSTEDCT	24002	350	MN_MNSTATE	project\vine\mn\mnstate	
MNOTTERTAILCT	24002	351	MN_MNSTATE	project\vine\mn\mnstate	
MNPINECT	24002	352	MN_MNSTATE	project\vine\mn\mnstate	
MNPIPESTONECT	24002	353	MN_MNSTATE	project\vine\mn\mnstate	
MNPOLKCT	24002	354	MN_MNSTATE	project\vine\mn\mnstate	
MNRAMSEYCT	24002	355	MN_MNSTATE	project\vine\mn\mnstate	
MNREDWOODCT	24002	356	MN_MNSTATE	project\vine\mn\mnstate	
MNRENVILLECT	24002	357	MN_MNSTATE	project\vine\mn\mnstate	
MNRICECT	24002	358	MN_MNSTATE	project\vine\mn\mnstate	
MNROSEAUCT	24002	359	MN_MNSTATE	project\vine\mn\mnstate	
MNSCOTTCT	24002	360	MN_MNSTATE	project\vine\mn\mnstate	
MNSHERBURNECT	24002	361	MN_MNSTATE	project\vine\mn\mnstate	
MNSIBLEYCT	24002	362	MN_MNSTATE	project\vine\mn\mnstate	
MNSTLOUISCT	24002	363	MN_MNSTATE	project\vine\mn\mnstate	
MNSTEARNSCT	24002	364	MN_MNSTATE	project\vine\mn\mnstate	
MNSTEELECT	24002	365	MN_MNSTATE	project\vine\mn\mnstate	
MNSTEVENSCT	24002	366	MN_MNSTATE	project\vine\mn\mnstate	
MNSWIFTCT	24002	367	MN_MNSTATE	project\vine\mn\mnstate	
MNTODDCT	24002	368	MN_MNSTATE	project\vine\mn\mnstate	
MNTRAVERSECT	24002	369	MN_MNSTATE	project\vine\mn\mnstate	
MNWABASHACT	24002	370	MN_MNSTATE	project\vine\mn\mnstate	
MNWADENACT	24002	371	MN_MNSTATE	project\vine\mn\mnstate	
MNWASECACT	24002	372	MN_MNSTATE	project\vine\mn\mnstate	
MNWASHINGTONCT	24002	373	MN_MNSTATE	project\vine\mn\mnstate	
MNWATOWANCT	24002	374	MN_MNSTATE	project\vine\mn\mnstate	
MNWILKINCT	24002	375	MN_MNSTATE	project\vine\mn\mnstate	
MNWINONACT	24002	376	MN_MNSTATE	project\vine\mn\mnstate	
MNWRIGHTCT	24002	377	MN_MNSTATE	project\vine\mn\mnstate	
MNYELLOWMEDCT	24002	378	MN_MNSTATE	project\vine\mn\mnstate	
OKTULSAJA	37001	1	OK_TULSA	project\vine\ok\oktulsaja	
ILEDWARDSCT	14004	46	IL_ILSTATE	project\vine\il\ilstate	iledwardsct
ILFAYETTEJA	14004	49	IL_ILSTATE	project\vine\il\ilstate	ilfayetteja
ILFRANKLINJA	14004	53	IL_ILSTATE	project\vine\il\ilstate	ilfranklinja
ILGALLATINJA	14004	57	IL_ILSTATE	project\vine\il\ilstate	
ILGREENECT	14004	60	IL_ILSTATE	project\vine\il\ilstate	ilgreenect
ILHARDINCT	14004	68	IL_ILSTATE	project\vine\il\ilstate	ilhardinct
ILHENRYJA	14004	71	IL_ILSTATE	project\vine\il\ilstate	ilhenryja
ILJACKSONJA	14004	75	IL_ILSTATE	project\vine\il\ilstate	iljacksonja
ILCASSJA	14004	17	IL_ILSTATE	project\vine\il\ilstate	
MNLAKEJA	24002	35	MN_MNSTATE	project\vine\mn\mnstate	mnlakeja
MNLINCOLNJA	24002	38	MN_MNSTATE	project\vine\mn\mnstate	mnlincolnja
MNMEEKERJA	24002	43	MN_MNSTATE	project\vine\mn\mnstate	mnmeekerja
MNMORRISONJA	24002	45	MN_MNSTATE	project\vine\mn\mnstate	mnmorrisonja
MNOTTERTAILJA	24002	51	MN_MNSTATE	project\vine\mn\mnstate	mnottertailja
MNREDWOODJA	24002	56	MN_MNSTATE	project\vine\mn\mnstate	mnredwoodja
CO19JDCTC	6719	1	CO_CALL2COURT		
ORMULTNOMAHJA	38000	25	OR_ORSTATE	project\vine\or\orstate	ormultnomahja
ORUMATILLAJA	38000	29	OR_ORSTATE	project\vine\or\orstate	orumatillaja
ILCLINTONJA	14004	27	IL_ILSTATE	project\vine\il\ilstate	ilclintonja
ORLINCOLNJA	38000	21	OR_ORSTATE	project\vine\or\orstate	orlincolnja
NHROCKINGHAMJA	30001	1	NH_ROCKINGHAM	project\vine\nh\nhrockinghamja	
MICRAWFORDJA	23005	20	MI_MISTATE	project\vine\mi\mistate	micrawfordja
MIMANISTEEPA	23005	151	MI_MISTATE	project\vine\mi\mistate	mimanisteepa
MISTCLAIRPA	23005	842	MI_MISTATE	project\vine\mi\mistate	mistclairpa
MIWASHTENAWJA	23005	80	MI_MISTATE	project\vine\mi\mistate	miwashtenawja
MIANTRJA	23005	5	MI_MISTATE	project\vine\mi\mistate	miantrimja
MIALPENAPA	23005	104	MI_MISTATE	project\vine\mi\mistate	mialpenapa
MIARENACJA	23005	6	MI_MISTATE	project\vine\mi\mistate	miarenacja
MIARENPR	23005	106	MI_MISTATE	project\vine\mi\mistate	miarenacpa
MIBARAPR	23005	828	MI_MISTATE	project\vine\mi\mistate	mibaragapa
MIBERRIEN	23005	11	MI_MISTATE	project\vine\mi\mistate	miberrianja
MICLAREJA	23005	18	MI_MISTATE	project\vine\mi\mistate	miclareja
MICLINTONPA	23005	829	MI_MISTATE	project\vine\mi\mistate	miclintonpa
MICRAWFORDPR	23005	120	MI_MISTATE	project\vine\mi\mistate	micrawfordpa
MIDELTAJA	23005	21	MI_MISTATE	project\vine\mi\mistate	mideltaja
MIDELTAPA	23005	831	MI_MISTATE	project\vine\mi\mistate	mideltapa
MIDICKINSONJA	23005	22	MI_MISTATE	project\vine\mi\mistate	midickinsonja
MIGRANJA	23005	28	MI_MISTATE	project\vine\mi\mistate	migrandtraverseja
CHESVINE	47002	1	VA_CHESVINE	va\chesvine	
MIHOUGPR	23005	131	MI_MISTATE	project\vine\mi\mistate	mihoughtonpa
MIINGHAMJA	23005	33	MI_MISTATE	project\vine\mi\mistate	miinghamja
MIIONIAPA	23005	134	MI_MISTATE	project\vine\mi\mistate	miioniapa
MIIOSCJA	23005	35	MI_MISTATE	project\vine\mi\mistate	miioscoja
MIIRONJA	23005	36	MI_MISTATE	project\vine\mi\mistate	miironja
MIKALAMAZOOJA	23005	39	MI_MISTATE	project\vine\mi\mistate	mikalamazooja
MIKENTJA	23005	41	MI_MISTATE	project\vine\mi\mistate	mikentja
MIKEWEJA	23005	42	MI_MISTATE	project\vine\mi\mistate	mikeweenawja
MILAKEJA	23005	43	MI_MISTATE	project\vine\mi\mistate	milakeja
MILAPEJA	23005	44	MI_MISTATE	project\vine\mi\mistate	milapeerja
MILUCEPR	23005	835	MI_MISTATE	project\vine\mi\mistate	milucepa
MIMACKINACJA	23005	49	MI_MISTATE	project\vine\mi\mistate	mimackinacja
MIMANISTEEJA	23005	51	MI_MISTATE	project\vine\mi\mistate	mimanisteeja
MIMECOSTAJA	23005	54	MI_MISTATE	project\vine\mi\mistate	mimecostaja
MIMECOPR	23005	836	MI_MISTATE	project\vine\mi\mistate	mimecostapa
MIMISSAUKEEJA	23005	57	MI_MISTATE	project\vine\mi\mistate	mimissaukeeja
MIMUSKEGONJA	23005	61	MI_MISTATE	project\vine\mi\mistate	mimuskegonja
MIMUSKEGONPA	23005	161	MI_MISTATE	project\vine\mi\mistate	mimuskegonpa
MIOAKLJA	23005	63	MI_MISTATE	project\vine\mi\mistate	mioaklandja
MIOGEMJA	23005	65	MI_MISTATE	project\vine\mi\mistate	miogemawja
MIONTONAGONJA	23005	66	MI_MISTATE	project\vine\mi\mistate	miontonagonja
MIOTTAWAJA	23005	69	MI_MISTATE	project\vine\mi\mistate	miottawaja
MIPUTNJA	23005	880	MI_MISTATE	project\vine\mi\mistate	miputnamja
MIROSCOMMONJA	23005	71	MI_MISTATE	project\vine\mi\mistate	miroscommonja
MIROSCOMMONPA	23005	839	MI_MISTATE	project\vine\mi\mistate	miroscommonpa
MISEVIJA	23005	887	MI_MISTATE	project\vine\mi\mistate	misevierja
MISTCLJA	23005	73	MI_MISTATE	project\vine\mi\mistate	mistclairja
MISTJOJA	23005	74	MI_MISTATE	project\vine\mi\mistate	mistjosephja
MISULLJA	23005	890	MI_MISTATE	project\vine\mi\mistate	misullivanja
MIWEXFORDJA	23005	82	MI_MISTATE	project\vine\mi\mistate	miwexfordja
MIEMMETJA	23005	24	MI_MISTATE	project\vine\mi\mistate	miemmetja
MIMONROEJA	23005	58	MI_MISTATE	project\vine\mi\mistate	mimonroeja
MIALLEGANJA	23005	3	MI_MISTATE	project\vine\mi\mistate	mialleganja
MIALGERJA	23005	2	MI_MISTATE	project\vine\mi\mistate	mialgerja
MIGLADWINPR	23005	126	MI_MISTATE	project\vine\mi\mistate	migladwinpa
MILEELANAUPR	23005	145	MI_MISTATE	project\vine\mi\mistate	mileelanaupa
MIMENOMINEEJA	23005	55	MI_MISTATE	project\vine\mi\mistate	mimenomineeja
MIMONTMORENCYJA	23005	60	MI_MISTATE	project\vine\mi\mistate	mimontmorencyja
MISANILACPA	23005	840	MI_MISTATE	project\vine\mi\mistate	misanilacpa
MODOCOLD	25001	1	MO_MODOC	mo\modoc	
MIBENZIEJA	23005	10	MI_MISTATE	project\vine\mi\mistate	mibenzieja
MIHUROJA	23005	32	MI_MISTATE	project\vine\mi\mistate	mihuronja
MIOSCEJA	23005	83	MI_MISTATE	project\vine\mi\mistate	miosceolaja
MISCHOJA	23005	76	MI_MISTATE	project\vine\mi\mistate	mischoolcraftja
MIVANBURENJA	23005	79	MI_MISTATE	project\vine\mi\mistate	mivanburenja
OHGREENEJA	36001	162	OH_OHSTATE	project\vine\oh\ohstate	ohgreeneja
ARCLEVELANDPR	4999	30	AR_ARSTATE	project\vine\ar\arstate	
ARCRITTENDENPR	4999	42	AR_ARSTATE	project\vine\ar\arstate	arcrittendenpr
AREASTARKANSASJA	4999	101	AR_ARSTATE	project\vine\ar\arstate	areastarkansasja
ARGRANTPR	4999	62	AR_ARSTATE	project\vine\ar\arstate	argrantpr
ARHOWARDPR	4999	70	AR_ARSTATE	project\vine\ar\arstate	arhowardpr
ARLAWRENCEPR	4999	98	AR_ARSTATE	project\vine\ar\arstate	arlawrencepr
ARMADISONPR	4999	115	AR_ARSTATE	project\vine\ar\arstate	armadisonpr
ARRANDOLPHJA	4999	161	AR_ARSTATE	project\vine\ar\arstate	arrandolphja
ARUNIONJA	4999	181	AR_ARSTATE	project\vine\ar\arstate	arunionja
OHJEFFERSONJA	36001	175	OH_OHSTATE	project\vine\oh\ohstate	ohjeffersonja
NEMORRILLJA	28000	472	NE_NESTATE	project\vine\ne\nestate	nemorrillja
VADOC	47004	1	VA_VADOC	project\vine\va\vadoc	
ARCRAIGHEADPR	4999	37	AR_ARSTATE	project\vine\ar\arstate	craipr
ARFULTONPR	4999	58	AR_ARSTATE	project\vine\ar\arstate	arfultonpr
OHMORGJA	36001	192	OH_OHSTATE	project\vine\oh\ohstate	ohmorganja
OHWYANDOTJA	36001	222	OH_OHSTATE	project\vine\oh\ohstate	ohwyandotja
OHCARROLLJA	36001	143	OH_OHSTATE	project\vine\oh\ohstate	ohcarrollja
NCAVERYPR	34003	1005	NC_STATE	project\vine\nc\ncstate	ncaverypr
NCCASWELLPR	34003	1016	NC_STATE	project\vine\nc\ncstate	nccaswellpr
NCDAVIEPR	34003	1029	NC_STATE	project\vine\nc\ncstate	ncdaviepr
NCGUILFORDPR	34003	1040	NC_STATE	project\vine\nc\ncstate	ncguilfordpr
NCMECKLENBURGPR	34003	1060	NC_STATE	project\vine\nc\ncstate	ncmecklenburgpr
NCPOLKPR	34003	1075	NC_STATE	project\vine\nc\ncstate	ncpolkpr
NCWATAUGAJA	34003	96	NC_STATE	project\vine\nc\ncstate	ncwataugaja
NCPITTJA	34003	75	NC_STATE	project\vine\nc\ncstate	ncpittja
NCGUILFORDJA	34003	42	NC_STATE	project\vine\nc\ncstate	ncguilfordja
NYTOMPKINSJA	33004	454	NY_NYSTATE	project\vine\ny\nystate	nytompkinsja
NYSENECAJA	33004	449	NY_NYSTATE	project\vine\ny\nystate	nysenecaja
MIIOSCOPA	23005	135	MI_MISTATE	project\vine\mi\mistate	miioscopa
MDKENTCIRC	21999	39	MD_MDSTATE	project\vine\md\mdstate	
MDCECILJA	21999	8	MD_MDSTATE	project\vine\md\mdstate	mdcecilja
MDALLEGANYCIRC	21999	25	MD_MDSTATE	project\vine\md\mdstate	
KYHARDINJA	18000	47	KY_KYSTATE	project\vine\ky\kystate	kyhardinja
NEPIERCEJA	28000	523	NE_NESTATE	project\vine\ne\nestate	nepierceja
NEDOUGLASJA	28000	220	NE_NESTATE	project\vine\ne\nestate	nedouglasja
AR0060100	4999	203	AR_ARSTATE	project\vine\ar\arstate	
ARLAFAYETTEPR	4999	96	AR_ARSTATE	project\vine\ar\arstate	arlafayettepr
ARLEEPR	4999	100	AR_ARSTATE	project\vine\ar\arstate	arleepr
ARMONROEJA	4999	126	AR_ARSTATE	project\vine\ar\arstate	armonroeja
ILCHRISTIANJA	14004	21	IL_ILSTATE	project\vine\il\ilstate	ilchristianja
ILFORDJA	14004	51	IL_ILSTATE	project\vine\il\ilstate	ilfordja
MNANOKAJA	24002	2	MN_MNSTATE	project\vine\mn\mnstate	mnanokaja
MNITASCAJA	24002	28	MN_MNSTATE	project\vine\mn\mnstate	mnitascaja
MILIVINGSTONJA	23005	47	MI_MISTATE	project\vine\mi\mistate	milivingstonja
MIHURONPA	23005	833	MI_MISTATE	project\vine\mi\mistate	mihuronpa
MIMONTCALMPA	23005	159	MI_MISTATE	project\vine\mi\mistate	mimontcalmpa
ARDREWPR	4999	51	AR_ARSTATE	project\vine\ar\arstate	ardrewpr
ARSALINEPR	4999	166	AR_ARSTATE	project\vine\ar\arstate	arsalinepr
AR046025C	4999	121	AR_ARSTATE	project\vine\ar\arstate	
ARCRAIGHEADJA	4999	36	AR_ARSTATE	project\vine\ar\arstate	arcraigheadja
MDWASHINGTONJA	21999	22	MD_MDSTATE	project\vine\md\mdstate	mdwashingtonja
KYHARLANJA	18000	48	KY_KYSTATE	project\vine\ky\kystate	kyharlanja
KYJOHNSONJA	18000	58	KY_KYSTATE	project\vine\ky\kystate	kyjohnsonja
KYMARIONJA	18000	78	KY_KYSTATE	project\vine\ky\kystate	kymarionja
KYNELSONJA	18000	90	KY_KYSTATE	project\vine\ky\kystate	kynelsonja
SCDOC	41900	1	SC_DOC	project\vine\sc\scdoc	
CASANFRANCISCOJL	5003	1	CA_SANFRAN	project\vine\ca\sanfran	
CAFRESNOJA	5013	1	CA_FRESNO	project\vine\ca\cafresnoja	
CASANTAANAJA	5014	1	CA_SANTAANA	project\vine\ca\casantaanaja	
MIALLEGANPR	23005	103	MI_MISTATE	project\vine\mi\mistate	mialleganpa
GADEKALBJA	11043	1	GA_GADEKALB	project\vine\ga\gadekalbja	
CASANBERNARDINOJA	5006	1	CA_SANBERN	project\vine\ca\casanbernardinoja	
PASTCCIS	39001	1	PA_PASTCCIS	pa\pastccis	
CASACRAMENTOJA	5008	1	CA_SACRAMEN	project\vine\ca\casacramentoja	
ILFORDCT	14004	52	IL_ILSTATE	project\vine\il\ilstate	ilfordct
AZJDOC	3001	1	AZ_AZJDOC	az\azjdoc	
PIMA	3002	1	AZ_PIMA	az\pima	
MARICOPA	3005	1	AZ_MARICOPA	az\maricopa	
AZGLENDALEJA	3006	1	AZ_GLENDALE	project\vine\az\azglendaleja	
CAALAMEDAJA	5001	1	CA_ALAMEDA	project\vine\ca\caalamedaja	
CASANTACLARAJA	5002	1	CA_SANTACLARA	project\vine\ca\casantaclaraja	
CAKINGSJA	5005	1	CA_KINGS	project\vine\ca\cakingsja	
CAMENDOCINOJA	5009	1	CA_MENDOCINO	project\vine\ca\camendocinoja	
HILLBGH	10002	1	FL_HILLBGH	project\vine\fl\hillbgh	
DADE	10003	1	FL_MIAMIDADE	project\vine\fl\flmiamidade	flmiamidadect
FLHILLSBOROUGHCT	10005	1	FL_HILLSBOROUGH_SAO	project\vine\fl\flhillsboroughct	
NEPHOTO	28500	1	NE_PHOTO	project\vine\ne\nephoto	nephoto
PASSAIC	31003	1	NJ_PASSAIC	nj\passaic	
GACLARKEJA	11001	1	GA_CLARKE	project\vine\ga\gaclarkeja	
GADOC	11003	1	GA_GADOC_TEST	project\vine\ga\gadoc	
ILWILL	14002	99	IL_WILL	il\will	
INMARION	15001	1	IN_MARION	project\vine\in\inmarion	
LASHREPOT	19001	1	LA_CADDO	la\caddo	
MIWAYNE	23002	81	MI_WAYNE	mi\wayne	
MNSCOTT	24001	1	MN_SCOTT	mn\scott	
MORRIS	31002	1	NJ_MORRIS	project\vine\nj\njmorrisja	
MONMOUTH	31004	1	NJ_MONMOUTH	nj\monmouth	
OHTCRJJA	36001	47	OH_OHSTATE	project\vine\oh\ohstate	ohtcrj
ORMARION	38001	1	OR_MARION	or\marion	
SCORANGE	41002	1	SC_ORANGEBG	sc\orangebg	
TNDAVIDSONJA	43003	1	TN_DAVIDSON	project\vine\tn\tndavidson	tndavidsonja
BEXAR	44002	1	TX_BEXAR	tx\bexar	
CHESCARE	47001	1	VA_CHESCARE	va\chescare	
NORFOLKCARE	47003	1	VA_NORFOLKCARE	va\norfolkcar	
WAPIERCE	48001	1	WA_PIERCE	project\vine\wa\wapierceja	
OHTPO	36702	1	OH_TPO	oh\tpo	
OHTPOCUYACM	36702	2	OH_TPO	oh\tpo	
OHTPOCUYADR	36702	3	OH_TPO	oh\tpo	
OHTPOCUYAEC	36702	4	OH_TPO	oh\tpo	
OHTPOCUYASH	36702	5	OH_TPO	oh\tpo	
OHTPOVINEWS	36702	6	OH_TPO	oh\tpo	
OHTPOWS1	36702	7	OH_TPO	oh\tpo	
CAMERCED	5099	1	CA_MULTICO	project\vine\ca\multico	
MDQUEENDIST	21999	66	MD_MDSTATE	project\vine\md\mdstate	
MDMONTGOMERYDIST	21999	64	MD_MDSTATE	project\vine\md\mdstate	
MDWORCESTERCIRC	21999	48	MD_MDSTATE	project\vine\md\mdstate	
MDJISDC	21999	171	MD_MDSTATE	project\vine\md\mdstate	mdjisdc
MICHARLEVOIXPR	23005	115	MI_MISTATE	project\vine\mi\mistate	micharlevoixpa
MIINGHAMPA	23005	133	MI_MISTATE	project\vine\mi\mistate	miinghampa
MIOGEMAWPA	23005	165	MI_MISTATE	project\vine\mi\mistate	miogemawpa
MIOSCOPR	23005	838	MI_MISTATE	project\vine\mi\mistate	mioscodapa
MISAGIPR	23005	172	MI_MISTATE	project\vine\mi\mistate	misaginawpa
ELINKMON	91	1	TEST2	project\vine\test\voxtest2	
RASIPMON	91	2	TEST2	project\vine\test\voxtest2	
RASNMMON	91	3	TEST2	project\vine\test\voxtest2	
COMMTEST	93	1	TEST4	project\vine\test\voxtest4	
FLPALMBEACHJA	10008	1	FL_PALMBEACH	project\vine\fl\flpalmbeachja	
MDUCSCC	21999	170	MD_MDSTATE	project\vine\md\mdstate	mducscc
KYOHIOJA	18000	92	KY_KYSTATE	project\vine\ky\kystate	kyohioja
MIKALKASKAJA	23005	40	MI_MISTATE	project\vine\mi\mistate	mikalkaskaja
ARLITTLERIVER2PR	4999	495	AR_ARSTATE	project\vine\ar\arstate	
ILCASSCT	14004	18	IL_ILSTATE	project\vine\il\ilstate	ilcassct
ARPOLKJA_2	104999	146	AR_ARSTATE_1	project\vine\ar\arstate_1	arpolkja_2
ARPOLKPR_2	104999	147	AR_ARSTATE_1	project\vine\ar\arstate_1	arpolkpr_2
ARPOPEJA_2	104999	149	AR_ARSTATE_1	project\vine\ar\arstate_1	arpopeja_2
ARPOPEPR_2	104999	150	AR_ARSTATE_1	project\vine\ar\arstate_1	arpopepr_2
ARPULAJA_2	104999	154	AR_ARSTATE_1	project\vine\ar\arstate_1	arpulaja_2
ARPULAPR_2	104999	156	AR_ARSTATE_1	project\vine\ar\arstate_1	arpulapr_2
ARUNIOJA_2	104999	181	AR_ARSTATE_1	project\vine\ar\arstate_1	arunioja_2
ARUNIOPR_2	104999	182	AR_ARSTATE_1	project\vine\ar\arstate_1	aruniopr_2
ARGREEJA_2	104999	63	AR_ARSTATE_1	project\vine\ar\arstate_1	argreeja_2
ARGREEPR_2	104999	64	AR_ARSTATE_1	project\vine\ar\arstate_1	argreepr_2
ARHOTSJA_2	104999	67	AR_ARSTATE_1	project\vine\ar\arstate_1	arhotsja_2
ARHOTSPR_2	104999	68	AR_ARSTATE_1	project\vine\ar\arstate_1	arhotspr_2
ARAG_2	104999	81	AR_ARSTATE_1	project\vine\ar\arstate_1	arag_2
ARJEFFJA_2	104999	82	AR_ARSTATE_1	project\vine\ar\arstate_1	arjeffja_2
ARJEFFPR_2	104999	84	AR_ARSTATE_1	project\vine\ar\arstate_1	arjeffpr_2
ARDOC_1	104999	86	AR_ARSTATE_1	project\vine\ar\arstate_1	ardoc
MOADAIRJA	26000	1	MO_STATE	project\vine\mo\mostate	moadairja
MOAUDRAINJA	26000	4	MO_STATE	project\vine\mo\mostate	moaudrainja
MOBARRYJA	26000	5	MO_STATE	project\vine\mo\mostate	mobarryja
MOBARTONJA	26000	6	MO_STATE	project\vine\mo\mostate	mobartonja
MOBATESJA	26000	7	MO_STATE	project\vine\mo\mostate	mobatesja
MOBENTONJA	26000	8	MO_STATE	project\vine\mo\mostate	mobentonja
MOBOLLINGERJA	26000	9	MO_STATE	project\vine\mo\mostate	mobollingerja
MOBUTLERJA	26000	12	MO_STATE	project\vine\mo\mostate	mobutlerja
MOCALDWELLJA	26000	13	MO_STATE	project\vine\mo\mostate	mocaldwellja
MOCALLAWAYJA	26000	14	MO_STATE	project\vine\mo\mostate	mocallawayja
MOCAMDENJA	26000	15	MO_STATE	project\vine\mo\mostate	mocamdenja
MOCAPEGIRARDEAUJA	26000	16	MO_STATE	project\vine\mo\mostate	mocapegirardeauja
MOCARROLLJA	26000	17	MO_STATE	project\vine\mo\mostate	mocarrollja
MOCASSJA	26000	19	MO_STATE	project\vine\mo\mostate	mocassja
MOCEDARJA	26000	20	MO_STATE	project\vine\mo\mostate	mocedarja
MOCHARITONJA	26000	21	MO_STATE	project\vine\mo\mostate	mocharitonja
MOCLARKJA	26000	23	MO_STATE	project\vine\mo\mostate	moclarkja
MOCLAYJA	26000	24	MO_STATE	project\vine\mo\mostate	moclayja
MOCLINTONJA	26000	25	MO_STATE	project\vine\mo\mostate	moclintonja
MOCOOPERJA	26000	27	MO_STATE	project\vine\mo\mostate	mocooperja
MODADEJA	26000	29	MO_STATE	project\vine\mo\mostate	modadeja
MODALLASJA	26000	30	MO_STATE	project\vine\mo\mostate	modallasja
MODEKALBJA	26000	32	MO_STATE	project\vine\mo\mostate	modekalbja
MODENTJA	26000	33	MO_STATE	project\vine\mo\mostate	modentja
MODOUGLASJA	26000	34	MO_STATE	project\vine\mo\mostate	modouglasja
MOGENTRYJA	26000	38	MO_STATE	project\vine\mo\mostate	mogentryja
MOGREENEJA	26000	39	MO_STATE	project\vine\mo\mostate	mogreeneja
MOGRUNDYJA	26000	40	MO_STATE	project\vine\mo\mostate	mogrundyja
MOHARRISONJA	26000	41	MO_STATE	project\vine\mo\mostate	moharrisonja
MOHENRYJA	26000	42	MO_STATE	project\vine\mo\mostate	mohenryja
MOHOLTJA	26000	44	MO_STATE	project\vine\mo\mostate	moholtja
MOHOWARDJA	26000	45	MO_STATE	project\vine\mo\mostate	mohowardja
MOHOWELLJA	26000	46	MO_STATE	project\vine\mo\mostate	mohowellja
MOIRONJA	26000	47	MO_STATE	project\vine\mo\mostate	moironja
MOJACKSONJA	26000	48	MO_STATE	project\vine\mo\mostate	mojacksonja
MOJASPERJA	26000	50	MO_STATE	project\vine\mo\mostate	mojasperja
MOJEFFERSONJA	26000	51	MO_STATE	project\vine\mo\mostate	mojeffersonja
MOKNOXJA	26000	53	MO_STATE	project\vine\mo\mostate	moknoxja
MOLACLEDEJA	26000	54	MO_STATE	project\vine\mo\mostate	molacledeja
MOLAFAYETTEJA	26000	55	MO_STATE	project\vine\mo\mostate	molafayetteja
MOLAWRENCEJA	26000	56	MO_STATE	project\vine\mo\mostate	molawrenceja
MOLEWISJA	26000	57	MO_STATE	project\vine\mo\mostate	molewisja
MOLINCOLNJA	26000	58	MO_STATE	project\vine\mo\mostate	molincolnja
MOMACONJA	26000	61	MO_STATE	project\vine\mo\mostate	momaconja
MOMADISONJA	26000	62	MO_STATE	project\vine\mo\mostate	momadisonja
MOMARIESJA	26000	63	MO_STATE	project\vine\mo\mostate	momariesja
MOMARIONJA	26000	64	MO_STATE	project\vine\mo\mostate	momarionja
MOMILLERJA	26000	67	MO_STATE	project\vine\mo\mostate	momillerja
MOMISSISSIPPIJA	26000	68	MO_STATE	project\vine\mo\mostate	momississippija
MOMONITEAUJA	26000	69	MO_STATE	project\vine\mo\mostate	momoniteauja
MOMONROEJA	26000	70	MO_STATE	project\vine\mo\mostate	momonroeja
MOMONTGOMERYJA	26000	71	MO_STATE	project\vine\mo\mostate	momontgomeryja
MOMORGANJA	26000	72	MO_STATE	project\vine\mo\mostate	momorganja
MONEWMADRIDJA	26000	73	MO_STATE	project\vine\mo\mostate	monewmadridja
MONEWTONJA	26000	74	MO_STATE	project\vine\mo\mostate	monewtonja
MONODAWAYJA	26000	75	MO_STATE	project\vine\mo\mostate	monodawayja
MOOREGONJA	26000	76	MO_STATE	project\vine\mo\mostate	mooregonja
MOOSAGEJA	26000	77	MO_STATE	project\vine\mo\mostate	moosageja
MOOZARKJA	26000	78	MO_STATE	project\vine\mo\mostate	moozarkja
MOPEMISCOTJA	26000	79	MO_STATE	project\vine\mo\mostate	mopemiscotja
MOPERRYJA	26000	80	MO_STATE	project\vine\mo\mostate	moperryja
MOPETTISJA	26000	81	MO_STATE	project\vine\mo\mostate	mopettisja
MOPIKEJA	26000	83	MO_STATE	project\vine\mo\mostate	mopikeja
MOPLATTEJA	26000	84	MO_STATE	project\vine\mo\mostate	moplatteja
MOPOLKJA	26000	85	MO_STATE	project\vine\mo\mostate	mopolkja
MOPULASKIJA	26000	86	MO_STATE	project\vine\mo\mostate	mopulaskija
MORAYJA	26000	90	MO_STATE	project\vine\mo\mostate	morayja
MOREYNOLDSJA	26000	91	MO_STATE	project\vine\mo\mostate	moreynoldsja
MOSALINEJA	26000	93	MO_STATE	project\vine\mo\mostate	mosalineja
MOSCOTLANDJA	26000	95	MO_STATE	project\vine\mo\mostate	moscotlandja
MOSCOTTJA	26000	96	MO_STATE	project\vine\mo\mostate	moscottja
MOSHANNONJA	26000	97	MO_STATE	project\vine\mo\mostate	moshannonja
MOSTCLAIRJA	26000	100	MO_STATE	project\vine\mo\mostate	mostclairja
MOSTFRANCOISJA	26000	101	MO_STATE	project\vine\mo\mostate	mostfrancoisja
MOSTEGENEVIEVEJA	26000	102	MO_STATE	project\vine\mo\mostate	mostegenevieveja
MOSTLOUISCOUNTYJA	26000	106	MO_STATE	project\vine\mo\mostate	mostlouiscountyja
MOSTLOUISCITY	26000	108	MO_STATE	project\vine\mo\mostate	mostlouiscity
MOSTONEJA	26000	110	MO_STATE	project\vine\mo\mostate	mostoneja
MOTANEYJA	26000	111	MO_STATE	project\vine\mo\mostate	motaneyja
MOTEXASJA	26000	112	MO_STATE	project\vine\mo\mostate	motexasja
MOVERNONJA	26000	113	MO_STATE	project\vine\mo\mostate	movernonja
MOWARRENJA	26000	114	MO_STATE	project\vine\mo\mostate	mowarrenja
MOWASHINGTONJA	26000	115	MO_STATE	project\vine\mo\mostate	mowashingtonja
MOWEBSTERJA	26000	117	MO_STATE	project\vine\mo\mostate	mowebsterja
ARARKAJA_2	104999	1	AR_ARSTATE_1	project\vine\ar\arstate_1	ararkaja_2
ARASHLJA_2	104999	4	AR_ARSTATE_1	project\vine\ar\arstate_1	arashlja_2
ARASHLPR_2	104999	5	AR_ARSTATE_1	project\vine\ar\arstate_1	arashlpr_2
ARBENTONJA_1	104999	9	AR_ARSTATE_1	project\vine\ar\arstate_1	arbentonja
ARBENTPR_2	104999	10	AR_ARSTATE_1	project\vine\ar\arstate_1	arbentpr_2
ARBOONJA_2	104999	11	AR_ARSTATE_1	project\vine\ar\arstate_1	arboonja_2
ARBOONPR_2	104999	12	AR_ARSTATE_1	project\vine\ar\arstate_1	arboonpr_2
ARCLARJA_2	104999	23	AR_ARSTATE_1	project\vine\ar\arstate_1	arclarja_2
ARCLARPR_2	104999	24	AR_ARSTATE_1	project\vine\ar\arstate_1	arclarpr_2
ARCRAIJA_2	104999	36	AR_ARSTATE_1	project\vine\ar\arstate_1	arcraija_2
ARCRAIPR_2	104999	37	AR_ARSTATE_1	project\vine\ar\arstate_1	arcraipr_2
ARDALLPR_2	104999	45	AR_ARSTATE_1	project\vine\ar\arstate_1	ardallpr_2
ARDALLJA_2	104999	46	AR_ARSTATE_1	project\vine\ar\arstate_1	ardallja_2
FLVOLUSIAJA1	10064	1	FL_VOLUSIA	project\vine\fl\volusia	flvolusiaja
WVDOC	49900	29	WV_WVDOC	project\vine\wv\wvdoc	
CEOCOMLINK	72900	1	CEOComLink	project\biz\ceocomlink	
ILADAMSJL_1	114004	1	IL_ILSTATE_1	project\vine\il\ilstate_1	iladamsjl_1
ILALEXANDERCT_1	114004	3	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILBONDCT_1	114004	5	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILBOONECT_1	114004	7	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILBROWNCT_1	114004	9	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILBUREAUCT_1	114004	11	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCLINTONJL_1	114004	14	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCARROLLCT_1	114004	15	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCRAWFORDJL_1	114004	17	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCHAMPAIGNCT_1	114004	19	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCHRISTIANCT_1	114004	21	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCLARKCT_1	114004	23	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCLAYJL_1	114004	25	IL_ILSTATE_1	project\vine\il\ilstate_1	ilclayjl_1
ILFORDJL_1	114004	27	IL_ILSTATE_1	project\vine\il\ilstate_1	ilclintonjl_1
ILFRANKLINJL_1	114004	28	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCOLESCT_1	114004	29	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCRAWFORDCT_1	114004	31	IL_ILSTATE_1	project\vine\il\ilstate_1	ilcrawfordjl_1
ILDOC	14004	253	IL_ILSTATE	project\vine\il\ilstate	ildoc
ILMONROECT	14004	132	IL_ILSTATE	project\vine\il\ilstate	ilmonroect
ILMOULTRIEJA	14004	137	IL_ILSTATE	project\vine\il\ilstate	ilmoultrieja
ILOGLECT	14004	140	IL_ILSTATE	project\vine\il\ilstate	iloglect
ILPERRYCT	14004	144	IL_ILSTATE	project\vine\il\ilstate	ilperryct
ILPIKECT	14004	148	IL_ILSTATE	project\vine\il\ilstate	ilpikect
ILPULASKIJA	14004	151	IL_ILSTATE	project\vine\il\ilstate	
ILSALINECT	14004	162	IL_ILSTATE	project\vine\il\ilstate	ilsalinect
ILSCOTTJA	14004	167	IL_ILSTATE	project\vine\il\ilstate	
ILSHELBYCT	14004	170	IL_ILSTATE	project\vine\il\ilstate	ilshelbyct
ILUNIONCT	14004	180	IL_ILSTATE	project\vine\il\ilstate	ilunionct
ILMARSHALLJA	14004	115	IL_ILSTATE	project\vine\il\ilstate	ilmarshallja
ARDYS	4500	1	AR_DYS	project\vine\ar\ardys	
ILWABASHJA	14004	183	IL_ILSTATE	project\vine\il\ilstate	ilwabashja
ILWABASHCT	14004	184	IL_ILSTATE	project\vine\il\ilstate	ilwabashct
ILWARRENJA	14004	185	IL_ILSTATE	project\vine\il\ilstate	ilwarrenja
ILWARRENCT	14004	186	IL_ILSTATE	project\vine\il\ilstate	ilwarrenct
ILWASHINGTONJA	14004	187	IL_ILSTATE	project\vine\il\ilstate	ilwashingtonja
ILWASHINGTONCT	14004	188	IL_ILSTATE	project\vine\il\ilstate	ilwashingtonct
ILWAYNEJA	14004	189	IL_ILSTATE	project\vine\il\ilstate	ilwayneja
ILWAYNECT	14004	190	IL_ILSTATE	project\vine\il\ilstate	ilwaynect
ILWHITEJA	14004	191	IL_ILSTATE	project\vine\il\ilstate	ilwhiteja
ILWHITECT	14004	192	IL_ILSTATE	project\vine\il\ilstate	ilwhitect
ILWHITESIDEJA	14004	193	IL_ILSTATE	project\vine\il\ilstate	ilwhitesideja
ILWHITESIDECT	14004	194	IL_ILSTATE	project\vine\il\ilstate	ilwhitesidect
ILWILLJA	14004	195	IL_ILSTATE	project\vine\il\ilstate	ilwillja
ILWILLCT	14004	196	IL_ILSTATE	project\vine\il\ilstate	ilwillct
ILWILLIAMSONJA	14004	197	IL_ILSTATE	project\vine\il\ilstate	ilwilliamsonja
ILWILLIAMSONCT	14004	198	IL_ILSTATE	project\vine\il\ilstate	ilwilliamsonct
ILWINNEBAGOJA	14004	199	IL_ILSTATE	project\vine\il\ilstate	ilwinnebagoja
ILWINNEBAGOCT	14004	200	IL_ILSTATE	project\vine\il\ilstate	ilwinnebagoct
ILWOODFORDJA	14004	201	IL_ILSTATE	project\vine\il\ilstate	ilwoodfordja
ILWOODFORDCT	14004	202	IL_ILSTATE	project\vine\il\ilstate	ilwoodfordct
ILCARROLLCT	14004	16	IL_ILSTATE	project\vine\il\ilstate	ilcarrollct
ILLIVINGSTONJA	14004	103	IL_ILSTATE	project\vine\il\ilstate	illivingstonja
ILLIVINGSTONCT	14004	104	IL_ILSTATE	project\vine\il\ilstate	illivingstonct
ILLOGANCT	14004	106	IL_ILSTATE	project\vine\il\ilstate	illoganct
ILMACONJA	14004	107	IL_ILSTATE	project\vine\il\ilstate	ilmaconja
ILMACOUPINJA	14004	109	IL_ILSTATE	project\vine\il\ilstate	ilmacoupinja
ILMACOUPINCT	14004	110	IL_ILSTATE	project\vine\il\ilstate	ilmacoupinct
ILMADISONJA	14004	111	IL_ILSTATE	project\vine\il\ilstate	ilmadisonja
ILMADISONCT	14004	112	IL_ILSTATE	project\vine\il\ilstate	ilmadisonct
ILMARIONJA	14004	113	IL_ILSTATE	project\vine\il\ilstate	ilmarionja
ILMARIONCT	14004	114	IL_ILSTATE	project\vine\il\ilstate	ilmarionct
ILMARSHALLCT	14004	116	IL_ILSTATE	project\vine\il\ilstate	ilmarshallct
ILMASONCT	14004	118	IL_ILSTATE	project\vine\il\ilstate	ilmasonct
ILMASSACJA	14004	119	IL_ILSTATE	project\vine\il\ilstate	ilmassacja
ILMASSACCT	14004	120	IL_ILSTATE	project\vine\il\ilstate	ilmassacct
ILMCDONOUGHJA	14004	121	IL_ILSTATE	project\vine\il\ilstate	ilmcdonoughja
ILMCDONOUGHCT	14004	122	IL_ILSTATE	project\vine\il\ilstate	ilmcdonoughct
ILMCHENRYJA	14004	123	IL_ILSTATE	project\vine\il\ilstate	ilmchenryja
ILMCHENRYCT	14004	124	IL_ILSTATE	project\vine\il\ilstate	ilmchenryct
ILMCLEANJA	14004	125	IL_ILSTATE	project\vine\il\ilstate	ilmcleanja
ILMCLEANCT	14004	126	IL_ILSTATE	project\vine\il\ilstate	
ILMENARDJA	14004	127	IL_ILSTATE	project\vine\il\ilstate	ilmenardja
ILMENARDCT	14004	128	IL_ILSTATE	project\vine\il\ilstate	
ILMERCERJA	14004	129	IL_ILSTATE	project\vine\il\ilstate	ilmercerja
ILMERCERCT	14004	130	IL_ILSTATE	project\vine\il\ilstate	ilmercerct
ILMONROEJA	14004	131	IL_ILSTATE	project\vine\il\ilstate	ilmonroeja
ILMONTGOMERYJA	14004	133	IL_ILSTATE	project\vine\il\ilstate	ilmontgomjl
ILMORGANCT	14004	136	IL_ILSTATE	project\vine\il\ilstate	ilmorganct
ILMOULTRIECT	14004	138	IL_ILSTATE	project\vine\il\ilstate	ilmoultriect
ILOGLEJA	14004	139	IL_ILSTATE	project\vine\il\ilstate	ilogleja
ILPEORIAJA	14004	141	IL_ILSTATE	project\vine\il\ilstate	ilpeoriaja
ILPEORIACT	14004	142	IL_ILSTATE	project\vine\il\ilstate	ilpeoriact
ILPIATTJA	14004	145	IL_ILSTATE	project\vine\il\ilstate	ilpiattja
ILPIATTCT	14004	146	IL_ILSTATE	project\vine\il\ilstate	ilpiattct
ILPIKEJA	14004	147	IL_ILSTATE	project\vine\il\ilstate	
ILPOPEJA	14004	149	IL_ILSTATE	project\vine\il\ilstate	
ILPOPECT	14004	150	IL_ILSTATE	project\vine\il\ilstate	ilpopect
ILPULASKICT	14004	152	IL_ILSTATE	project\vine\il\ilstate	ilpulaskict
ILPUTNAMJA	14004	153	IL_ILSTATE	project\vine\il\ilstate	ilputnamja
ILPUTNAMCT	14004	154	IL_ILSTATE	project\vine\il\ilstate	ilputnamct
ILRICHLANDJA	14004	157	IL_ILSTATE	project\vine\il\ilstate	ilrichlandja
ILRICHLANDCT	14004	158	IL_ILSTATE	project\vine\il\ilstate	ilrichlandct
ILROCKISLANDJA	14004	159	IL_ILSTATE	project\vine\il\ilstate	ilrockislandja
ILROCKISLANDCT	14004	160	IL_ILSTATE	project\vine\il\ilstate	ilrockislandct
ILSALINEJA	14004	161	IL_ILSTATE	project\vine\il\ilstate	ilsalineja
ILSANGAMONJA	14004	163	IL_ILSTATE	project\vine\il\ilstate	ilsangamonja
ILSCHUYLERCT	14004	166	IL_ILSTATE	project\vine\il\ilstate	ilschuylerct
ILSCOTTCT	14004	168	IL_ILSTATE	project\vine\il\ilstate	
ILSHELBYJA	14004	169	IL_ILSTATE	project\vine\il\ilstate	ilshelbyja
ILSTCLAIRCT	14004	172	IL_ILSTATE	project\vine\il\ilstate	ilstclairct
ILSTARKJA	14004	173	IL_ILSTATE	project\vine\il\ilstate	ilstarkja
ILSTEPHENSONJA	14004	175	IL_ILSTATE	project\vine\il\ilstate	ilstephensonja
ILSTEPHENSONCT	14004	176	IL_ILSTATE	project\vine\il\ilstate	ilstephensonct
ILTAZEWELLCT	14004	178	IL_ILSTATE	project\vine\il\ilstate	
ILUNIONJA	14004	179	IL_ILSTATE	project\vine\il\ilstate	
ILVERMILIONCT	14004	182	IL_ILSTATE	project\vine\il\ilstate	ilvermilionct
ILKNOXCT_1	114004	93	IL_ILSTATE_1	project\vine\il\ilstate_1	ilknoxjl_1
ILWASHINGTONJL_1	114004	95	IL_ILSTATE_1	project\vine\il\ilstate_1	illasallecc_1
ILLAKECT_1	114004	97	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILLAWRENCEJL_1	114004	99	IL_ILSTATE_1	project\vine\il\ilstate_1	illawrjl_1
ILLEECT_1	114004	101	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILLIVINGSTONCT_1	114004	103	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILLOGANCT_1	114004	105	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMACONCT_1	114004	107	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMACOUPINCT_1	114004	109	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMADISONJL_1	114004	111	IL_ILSTATE_1	project\vine\il\ilstate_1	ilmadisonjl_1
ILMARIONCT_1	114004	113	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMARSHALLJL_1	114004	115	IL_ILSTATE_1	project\vine\il\ilstate_1	ilmarshalljl_1
ILMASONCT_1	114004	117	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMASSACCT_1	114004	118	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMASSACDET_1	114004	119	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMCDONOUGHCC_1	114004	121	IL_ILSTATE_1	project\vine\il\ilstate_1	ilmcdoncc_1
ILMCHENRYCT_1	114004	123	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMCLEANCT_1	114004	125	IL_ILSTATE_1	project\vine\il\ilstate_1	ilmcleanjl_1
ILMENARDCT_1	114004	127	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMERCERCT_1	114004	129	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMONROECT_1	114004	131	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMONTGOMERYCT_1	114004	133	IL_ILSTATE_1	project\vine\il\ilstate_1	ilmontgomjl_1
ILMORGANCT_1	114004	135	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILMOULTRIECT_1	114004	137	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILOGLEJL_1	114004	139	IL_ILSTATE_1	project\vine\il\ilstate_1	iloglejl_1
ILPEORIAJL_1	114004	141	IL_ILSTATE_1	project\vine\il\ilstate_1	ilpeoriajl_1
ILPERRYCT_1	114004	143	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILPIATTJL_1	114004	145	IL_ILSTATE_1	project\vine\il\ilstate_1	ilpiattjl_1
ILPIKECT_1	114004	147	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILPOPECT_1	114004	149	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILPULASKICT_1	114004	151	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILPUTNAMJL_1	114004	153	IL_ILSTATE_1	project\vine\il\ilstate_1	ilputnamjl_1
ILRANDOLPHCT_1	114004	155	IL_ILSTATE_1	project\vine\il\ilstate_1	ilrandolphjl_1
ILRICHLANDJL_1	114004	157	IL_ILSTATE_1	project\vine\il\ilstate_1	ilrichlandjl_1
ILROCKISLANDCT_1	114004	159	IL_ILSTATE_1	project\vine\il\ilstate_1	ilrockisjl_1
ILSALINECT_1	114004	161	IL_ILSTATE_1	project\vine\il\ilstate_1	ilsalinejl_1
ILSANGAMONJL_1	114004	163	IL_ILSTATE_1	project\vine\il\ilstate_1	ilsangamonjl_1
ILSCHUYLERJL_1	114004	165	IL_ILSTATE_1	project\vine\il\ilstate_1	ilschuylerjl_1
ILSCOTTCT_1	114004	167	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILSHELBYCT_1	114004	169	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILSTCLAIRCT_1	114004	171	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILSTARKCT_1	114004	173	IL_ILSTATE_1	project\vine\il\ilstate_1	ilstarkjl_1
ILSTEPHENSONCT_1	114004	175	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILTAZEWELLCT_1	114004	177	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILUNIONCT_1	114004	179	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILVERMILIONCT_1	114004	181	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWABASHJL_1	114004	183	IL_ILSTATE_1	project\vine\il\ilstate_1	ilwabashjl_1
ILWARRENCT_1	114004	185	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWASHINGTONCT_1	114004	187	IL_ILSTATE_1	project\vine\il\ilstate_1	ilwashjl_1
ILWAYNECT_1	114004	189	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWHITECT_1	114004	191	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWHITESIDECT_1	114004	193	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWILLSO_1	114004	195	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWILLIAMSONCT_1	114004	197	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWINNEBAGOCT_1	114004	199	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILWOODFORDSCT_1	114004	201	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILDOC_1	114004	253	IL_ILSTATE_1	project\vine\il\ilstate_1	ildoc_1
ILTRIDET_1	114004	257	IL_ILSTATE_1	project\vine\il\ilstate_1	iltridet_1
NEADAMJA_1	128000	40	NE_STATE_1	project\vine\ne\nestate_1	neadamja_1
NEANTEJA_1	128000	47	NE_STATE_1	project\vine\ne\nestate_1	neanteja_1
NEBOONJA_1	128000	61	NE_STATE_1	project\vine\ne\nestate_1	neboonja_1
NEBOXBJA_1	128000	69	NE_STATE_1	project\vine\ne\nestate_1	neboxbja_1
NEBROWJA_1	128000	81	NE_STATE_1	project\vine\ne\nestate_1	nebrowja_1
NEBUFFJA_1	128000	86	NE_STATE_1	project\vine\ne\nestate_1	nebuffja_1
NEBUTLJA_1	128000	109	NE_STATE_1	project\vine\ne\nestate_1	nebutlja_1
NECASSJA_1	128000	114	NE_STATE_1	project\vine\ne\nestate_1	necassja_1
NECEDAJA_1	128000	123	NE_STATE_1	project\vine\ne\nestate_1	necedaja_1
NECHASJA_1	128000	131	NE_STATE_1	project\vine\ne\nestate_1	nechasja_1
NECHERJA_1	128000	138	NE_STATE_1	project\vine\ne\nestate_1	necherja_1
NECHEYJA_1	128000	143	NE_STATE_1	project\vine\ne\nestate_1	necheyja_1
NECLAYJA_1	128000	148	NE_STATE_1	project\vine\ne\nestate_1	neclayja_1
NECOLFJA_1	128000	155	NE_STATE_1	project\vine\ne\nestate_1	necolfja_1
NECUSTJA_1	128000	167	NE_STATE_1	project\vine\ne\nestate_1	necustja_1
NEDAKOJA_1	128000	174	NE_STATE_1	project\vine\ne\nestate_1	nedakoja_1
NEDAWEJA_1	128000	182	NE_STATE_1	project\vine\ne\nestate_1	nedaweja_1
NEDAWSJA_1	128000	190	NE_STATE_1	project\vine\ne\nestate_1	nedawsja_1
NEDEUEJA_1	128000	199	NE_STATE_1	project\vine\ne\nestate_1	nedeueja_1
NEDIXOJA_1	128000	204	NE_STATE_1	project\vine\ne\nestate_1	nedixoja_1
NEDODGJA_1	128000	209	NE_STATE_1	project\vine\ne\nestate_1	nedodgja_1
NEDOUGJA_1	128000	220	NE_STATE_1	project\vine\ne\nestate_1	nedougja_1
NEDUNDJA_1	128000	268	NE_STATE_1	project\vine\ne\nestate_1	nedundja_1
NEFILMJA_1	128000	273	NE_STATE_1	project\vine\ne\nestate_1	nefilmja_1
NEFRANJA_1	128000	279	NE_STATE_1	project\vine\ne\nestate_1	nefranja_1
NEFRONJA_1	128000	284	NE_STATE_1	project\vine\ne\nestate_1	nefronja_1
NEFURNJA_1	128000	288	NE_STATE_1	project\vine\ne\nestate_1	nefurnja_1
NEGAGEJA_1	128000	296	NE_STATE_1	project\vine\ne\nestate_1	negageja_1
NEGARDJA_1	128000	304	NE_STATE_1	project\vine\ne\nestate_1	negardja_1
NEHALLJA_1	128000	324	NE_STATE_1	project\vine\ne\nestate_1	nehallja_1
NEHAMIJA_1	128000	335	NE_STATE_1	project\vine\ne\nestate_1	nehamija_1
NEHARLJA_1	128000	339	NE_STATE_1	project\vine\ne\nestate_1	neharlja_1
NEHITCJA_1	128000	347	NE_STATE_1	project\vine\ne\nestate_1	nehitcja_1
NEHOLTJA_1	128000	350	NE_STATE_1	project\vine\ne\nestate_1	neholtja_1
NEJEFFJA_1	128000	367	NE_STATE_1	project\vine\ne\nestate_1	nejeffja_1
NEJOHNJA_1	128000	372	NE_STATE_1	project\vine\ne\nestate_1	nejohnja_1
NEKEARJA_1	128000	378	NE_STATE_1	project\vine\ne\nestate_1	nekearja_1
NEKEITJA_1	128000	383	NE_STATE_1	project\vine\ne\nestate_1	nekeitja_1
NEKIMBJA_1	128000	391	NE_STATE_1	project\vine\ne\nestate_1	nekimbja_1
NEKNOXJA_1	128000	397	NE_STATE_1	project\vine\ne\nestate_1	neknoxja_1
NELANCJA_1	128000	427	NE_STATE_1	project\vine\ne\nestate_1	nelancja_1
NELINCJA_1	128000	438	NE_STATE_1	project\vine\ne\nestate_1	nelincja_1
NEMADIJA_1	128000	455	NE_STATE_1	project\vine\ne\nestate_1	nemadija_1
NENORFJA_1	128000	456	NE_STATE_1	project\vine\ne\nestate_1	nenorfja_1
NEMERRJA_1	128000	467	NE_STATE_1	project\vine\ne\nestate_1	nemerrja_1
NEMORRJA_1	128000	472	NE_STATE_1	project\vine\ne\nestate_1	nemorrja_1
NENEMAJA_1	128000	487	NE_STATE_1	project\vine\ne\nestate_1	nenemaja_1
NENUCKJA_1	128000	494	NE_STATE_1	project\vine\ne\nestate_1	nenuckja_1
NESUPEJA_1	128000	495	NE_STATE_1	project\vine\ne\nestate_1	nesupeja_1
NEOTOEJA_1	128000	499	NE_STATE_1	project\vine\ne\nestate_1	neotoeja_1
NEPHELJA_1	128000	517	NE_STATE_1	project\vine\ne\nestate_1	nephelja_1
NEPIERJA_1	128000	523	NE_STATE_1	project\vine\ne\nestate_1	nepierja_1
NEPLATJA_1	128000	531	NE_STATE_1	project\vine\ne\nestate_1	neplatja_1
NEPOLKJA_1	128000	539	NE_STATE_1	project\vine\ne\nestate_1	nepolkja_1
NEMCCOJA_1	128000	546	NE_STATE_1	project\vine\ne\nestate_1	nemccoja_1
NERICHJA_1	128000	552	NE_STATE_1	project\vine\ne\nestate_1	nerichja_1
NEROCKJA_1	128000	559	NE_STATE_1	project\vine\ne\nestate_1	nerockja_1
NESALIJA_1	128000	563	NE_STATE_1	project\vine\ne\nestate_1	nesalija_1
NESARPJA_1	128000	572	NE_STATE_1	project\vine\ne\nestate_1	nesarpja_1
NESAUNJA_1	128000	587	NE_STATE_1	project\vine\ne\nestate_1	nesaunja_1
NESCOTJA_1	128000	594	NE_STATE_1	project\vine\ne\nestate_1	nescotja_1
NESHERJA_1	128000	618	NE_STATE_1	project\vine\ne\nestate_1	nesherja_1
NETHAYJA_1	128000	638	NE_STATE_1	project\vine\ne\nestate_1	nethayja_1
NETHURJA_1	128000	647	NE_STATE_1	project\vine\ne\nestate_1	nethurja_1
NEVALLJA_1	128000	655	NE_STATE_1	project\vine\ne\nestate_1	nevallja_1
NEWASHJA_1	128000	660	NE_STATE_1	project\vine\ne\nestate_1	newashja_1
NEWEBSJA_1	128000	672	NE_STATE_1	project\vine\ne\nestate_1	newebsja_1
NEYORKJA_1	128000	681	NE_STATE_1	project\vine\ne\nestate_1	neyorkja_1
NDCS_1	128000	763	NE_STATE_1	project\vine\ne\nestate_1	ndcs_1
NELANCCO_1	128000	775	NE_STATE_1	project\vine\ne\nestate_1	nelancco_1
MIONTONAGONPR	23005	837	MI_MISTATE	project\vine\mi\mistate	miontonagonpa
FLDOC_1	110011	1	FL_FLDOC_1	project\vine\fl\fldoc_1	
ARDUMASCITYJA	4999	497	AR_ARSTATE	project\vine\ar\arstate	ardumascityja
MOADAIRCT	26000	300	MO_STATE	project\vine\mo\mostate	moadairct
MOATCHISONCT	26000	302	MO_STATE	project\vine\mo\mostate	moatchisonct
MOAUDRAINCT	26000	303	MO_STATE	project\vine\mo\mostate	moaudrainct
MOBARRYCT	26000	304	MO_STATE	project\vine\mo\mostate	mobarryct
MOBATESCT	26000	306	MO_STATE	project\vine\mo\mostate	mobatesct
MOBENTONCT	26000	307	MO_STATE	project\vine\mo\mostate	mobentonct
MOBOONECT	26000	309	MO_STATE	project\vine\mo\mostate	moboonect
MOBUCHANANCT	26000	310	MO_STATE	project\vine\mo\mostate	mobuchananct
MOCALDWELLCT	26000	312	MO_STATE	project\vine\mo\mostate	mocaldwellct
MOCALLAWAYCT	26000	313	MO_STATE	project\vine\mo\mostate	mocallawayct
MOCAPEGIRARDEAUCT	26000	315	MO_STATE	project\vine\mo\mostate	mocapegirardeauct
MOCARROLLCT	26000	316	MO_STATE	project\vine\mo\mostate	mocarrollct
MOCEDARCT	26000	319	MO_STATE	project\vine\mo\mostate	mocedarct
MOCHARITONCT	26000	320	MO_STATE	project\vine\mo\mostate	mocharitonct
MOCHRISTIANCT	26000	321	MO_STATE	project\vine\mo\mostate	mochristianct
MOCLARKCT	26000	322	MO_STATE	project\vine\mo\mostate	moclarkct
MOCLAYCT	26000	323	MO_STATE	project\vine\mo\mostate	moclayct
MOCOLECT	26000	325	MO_STATE	project\vine\mo\mostate	mocolect
MOCOOPERCT	26000	326	MO_STATE	project\vine\mo\mostate	mocooperct
MOCRAWFORDCT	26000	327	MO_STATE	project\vine\mo\mostate	mocrawfordct
MODADECT	26000	328	MO_STATE	project\vine\mo\mostate	modadect
MODALLASCT	26000	329	MO_STATE	project\vine\mo\mostate	modallasct
MODEKALBCT	26000	331	MO_STATE	project\vine\mo\mostate	modekalbct
MOGASCONADECT	26000	336	MO_STATE	project\vine\mo\mostate	mogasconadect
MOGRUNDYCT	26000	339	MO_STATE	project\vine\mo\mostate	mogrundyct
MOHARRISONCT	26000	340	MO_STATE	project\vine\mo\mostate	moharrisonct
MOHENRYCT	26000	341	MO_STATE	project\vine\mo\mostate	mohenryct
MOHICKORYCT	26000	342	MO_STATE	project\vine\mo\mostate	mohickoryct
MOHOLTCT	26000	343	MO_STATE	project\vine\mo\mostate	moholtct
MOIRONCT	26000	346	MO_STATE	project\vine\mo\mostate	moironct
MOJASPERCT	26000	348	MO_STATE	project\vine\mo\mostate	mojasperct
MOJEFFERSONCT	26000	349	MO_STATE	project\vine\mo\mostate	mojeffersonct
MOLAFAYETTECT	26000	353	MO_STATE	project\vine\mo\mostate	molafayettect
MOLEWISCT	26000	355	MO_STATE	project\vine\mo\mostate	molewisct
MOMACONCT	26000	359	MO_STATE	project\vine\mo\mostate	momaconct
MOMADISONCT	26000	360	MO_STATE	project\vine\mo\mostate	momadisonct
MOMARIONCT	26000	362	MO_STATE	project\vine\mo\mostate	momarionct
MOMCDONALDCT	26000	363	MO_STATE	project\vine\mo\mostate	momcdonaldct
MOMONITEAUCT	26000	367	MO_STATE	project\vine\mo\mostate	momoniteauct
MOMONROECT	26000	368	MO_STATE	project\vine\mo\mostate	momonroect
MONODAWAYCT	26000	373	MO_STATE	project\vine\mo\mostate	monodawayct
MOOSAGECT	26000	375	MO_STATE	project\vine\mo\mostate	moosagect
MOOZARKCT	26000	376	MO_STATE	project\vine\mo\mostate	moozarkct
MOPERRYCT	26000	378	MO_STATE	project\vine\mo\mostate	moperryct
MOPHELPSCT	26000	380	MO_STATE	project\vine\mo\mostate	mophelpsct
MOPIKECT	26000	381	MO_STATE	project\vine\mo\mostate	mopikect
MOPLATTECT	26000	382	MO_STATE	project\vine\mo\mostate	moplattect
MOPOLKCT	26000	383	MO_STATE	project\vine\mo\mostate	mopolkct
MOPULASKICT	26000	384	MO_STATE	project\vine\mo\mostate	mopulaskict
MORALLSCT	26000	386	MO_STATE	project\vine\mo\mostate	morallsct
MORANDOLPHCT	26000	387	MO_STATE	project\vine\mo\mostate	morandolphct
MOREYNOLDSCT	26000	389	MO_STATE	project\vine\mo\mostate	moreynoldsct
MORIPLEYCT	26000	390	MO_STATE	project\vine\mo\mostate	moripleyct
MOSALINECT	26000	391	MO_STATE	project\vine\mo\mostate	mosalinect
MOSCHUYLERCT	26000	392	MO_STATE	project\vine\mo\mostate	moschuylerct
MOSCOTLANDCT	26000	393	MO_STATE	project\vine\mo\mostate	moscotlandct
MOSCOTTCT	26000	394	MO_STATE	project\vine\mo\mostate	moscottct
MOSHANNONCT	26000	395	MO_STATE	project\vine\mo\mostate	moshannonct
MOSTCLAIRCT	26000	398	MO_STATE	project\vine\mo\mostate	mostclairct
MOSTFRANCOISCT	26000	399	MO_STATE	project\vine\mo\mostate	mostfrancoisct
MOSTLOUISCOUNTYCT	26000	401	MO_STATE	project\vine\mo\mostate	mostlouiscountyct
MOSTONECT	26000	403	MO_STATE	project\vine\mo\mostate	mostonect
MOTANEYCT	26000	404	MO_STATE	project\vine\mo\mostate	motaneyct
MOWASHINGTONCT	26000	408	MO_STATE	project\vine\mo\mostate	mowashingtonct
MOWAYNECT	26000	409	MO_STATE	project\vine\mo\mostate	mowaynect
MOWORTHCT	26000	411	MO_STATE	project\vine\mo\mostate	moworthct
MOWRIGHTCT	26000	412	MO_STATE	project\vine\mo\mostate	mowrightct
MODOC	26000	900	MO_STATE	project\vine\mo\mostate	modoc
MOEDCACT	26000	501	MO_STATE	project\vine\mo\mostate	moedcact
MOSDCACT	26000	502	MO_STATE	project\vine\mo\mostate	mosdcact
MOSCMCT	26000	504	MO_STATE	project\vine\mo\mostate	moscmct
MOFCCCT	26000	505	MO_STATE	project\vine\mo\mostate	mofccct
FLALACHUAJA	10000	1	FLState	project\vine\fl\flstate	flalachuaja
FLBRADFORDJA	10000	4	FLState	project\vine\fl\flstate	flbradfordja
FLBREVARDJA	10000	5	FLState	project\vine\fl\flstate	flbrevardja
FLCALHOUNJA	10000	7	FLState	project\vine\fl\flstate	flcalhounja
FLCHARLOTTEJA	10000	8	FLState	project\vine\fl\flstate	flcharlotteja
FLCITRUSJA	10000	9	FLState	project\vine\fl\flstate	flcitrusja
FLCLAYJA	10000	10	FLState	project\vine\fl\flstate	flclayja
FLCOLLIERJA	10000	11	FLState	project\vine\fl\flstate	flcollierja
FLDESOTOJA	10000	13	FLState	project\vine\fl\flstate	fldesotoja
FLDUVALJA	10000	15	FLState	project\vine\fl\flstate	flduvalja
FLESCAMBIAJA	10000	16	FLState	project\vine\fl\flstate	flescambiaja
FLFLAGLERJA	10000	17	FLState	project\vine\fl\flstate	flflaglerja
FLFRANKLINJA	10000	18	FLState	project\vine\fl\flstate	flfranklinja
FLGADSDENJA	10000	19	FLState	project\vine\fl\flstate	flgadsdenja
FLGILCHRISTJA	10000	20	FLState	project\vine\fl\flstate	flgilchristja
FLGLADESJA	10000	21	FLState	project\vine\fl\flstate	flgladesja
FLHARDEEJA	10000	24	FLState	project\vine\fl\flstate	flhardeeja
FLHENDRYJA	10000	25	FLState	project\vine\fl\flstate	flhendryja
FLHERNANDOJA	10000	26	FLState	project\vine\fl\flstate	flhernandoja
FLHILLSBOROUGHJA	10000	28	FLState	project\vine\fl\flstate	flhillsboroughja
FLHOLMESJA	10000	29	FLState	project\vine\fl\flstate	flholmesja
FLINDIANRIVERJA	10000	30	FLState	project\vine\fl\flstate	flindianriverja
FLJACKSONJA	10000	31	FLState	project\vine\fl\flstate	fljacksonja
FLJEFFERSONJA	10000	32	FLState	project\vine\fl\flstate	fljeffersonja
FLLAKEJA	10000	34	FLState	project\vine\fl\flstate	fllakeja
FLLEONJA	10000	36	FLState	project\vine\fl\flstate	flleonja
FLLEVYJA	10000	37	FLState	project\vine\fl\flstate	fllevyja
FLLIBERTYJA	10000	38	FLState	project\vine\fl\flstate	fllibertyja
FLMARIONJA	10000	41	FLState	project\vine\fl\flstate	flmarionja
FLMARTINJA	10000	42	FLState	project\vine\fl\flstate	flmartinja
FLMIAMIDADEJA	10000	43	FLState	project\vine\fl\flstate	flmiamidadeja
FLMONROEJA	10000	44	FLState	project\vine\fl\flstate	flmonroeja
FLNASSAUJA	10000	45	FLState	project\vine\fl\flstate	flnassauja
FLOKEECHOBEEJA	10000	47	FLState	project\vine\fl\flstate	flokeechobeeja
FLORANGEJA	10000	48	FLState	project\vine\fl\flstate	florangeja
FLPALMBEACHJA1	10000	50	FLState	project\vine\fl\flstate	flpalmbeachja
FLPASCOJA	10000	51	FLState	project\vine\fl\flstate	flpascoja
FLPINELLASJA	10000	52	FLState	project\vine\fl\flstate	flpinellasja
FLPOLKJA	10000	53	FLState	project\vine\fl\flstate	flpolkja
FLSANTAROSAJA	10000	55	FLState	project\vine\fl\flstate	flsantarosaja
FLSARASOTAJA	10000	56	FLState	project\vine\fl\flstate	flsarasotaja
FLSEMINOLEJA	10000	57	FLState	project\vine\fl\flstate	flseminoleja
FLSTJOHNSJA	10000	58	FLState	project\vine\fl\flstate	flstjohnsja
FLSTLUCIEJA	10000	59	FLState	project\vine\fl\flstate	flstlucieja
FLTAYLORJA	10000	62	FLState	project\vine\fl\flstate	fltaylorja
FLUNIONJA	10000	63	FLState	project\vine\fl\flstate	flunionja
FLWAKULLAJA	10000	65	FLState	project\vine\fl\flstate	flwakullaja
FLWALTONJA	10000	66	FLState	project\vine\fl\flstate	flwaltonja
FLWASHINGTONJA	10000	67	FLState	project\vine\fl\flstate	flwashingtonja
FLSTATEJU	10000	800	FLState	project\vine\fl\flstate	fldjj
FLDOC	10000	900	FLState	project\vine\fl\flstate	fldoc
ORBAKERJA_1	138000	1	OR_ORSTATE_1	project\vine\or\orstate_1	orbakerja_1
ORBENTONJA_1	138000	2	OR_ORSTATE_1	project\vine\or\orstate_1	orbentonja_1
ORCLACKAMASJA_1	138000	3	OR_ORSTATE_1	project\vine\or\orstate_1	orclackamasja_1
ORCOLUMBIAJA_1	138000	5	OR_ORSTATE_1	project\vine\or\orstate_1	orcolumbiaja_1
ORCOOSJA_1	138000	6	OR_ORSTATE_1	project\vine\or\orstate_1	orcoosja_1
ORCROOKJA_1	138000	7	OR_ORSTATE_1	project\vine\or\orstate_1	orcrookja_1
ORDESCHUTESJA_1	138000	9	OR_ORSTATE_1	project\vine\or\orstate_1	ordeschutesja_1
ORGRANTJA_1	138000	12	OR_ORSTATE_1	project\vine\or\orstate_1	orgrantja_1
ORHARNEYJA_1	138000	13	OR_ORSTATE_1	project\vine\or\orstate_1	orharneyja_1
ORJACKSONJA_1	138000	15	OR_ORSTATE_1	project\vine\or\orstate_1	orjacksonja_1
ORJEFFERSONJA_1	138000	16	OR_ORSTATE_1	project\vine\or\orstate_1	orjeffersonja_1
ORJOSEPHINEJA_1	138000	17	OR_ORSTATE_1	project\vine\or\orstate_1	orjosephineja_1
ORKLAMATHJA_1	138000	18	OR_ORSTATE_1	project\vine\or\orstate_1	orklamathja_1
ORLAKEJA_1	138000	19	OR_ORSTATE_1	project\vine\or\orstate_1	orlakeja_1
ORLINCOLNJA_1	138000	21	OR_ORSTATE_1	project\vine\or\orstate_1	orlincolnja_1
ORLINNJA_1	138000	22	OR_ORSTATE_1	project\vine\or\orstate_1	orlinnja_1
ORMALHEURJA_1	138000	23	OR_ORSTATE_1	project\vine\or\orstate_1	ormalheurja_1
ORMARIONJA_1	138000	24	OR_ORSTATE_1	project\vine\or\orstate_1	ormarionja_1
ORMULTNOMAHJA_1	138000	25	OR_ORSTATE_1	project\vine\or\orstate_1	ormultnomahja_1
ORPOLKJA_1	138000	26	OR_ORSTATE_1	project\vine\or\orstate_1	orpolkja_1
ORTILLAMOOKJA_1	138000	28	OR_ORSTATE_1	project\vine\or\orstate_1	ortillamookja_1
ORUMATILLAJA_1	138000	29	OR_ORSTATE_1	project\vine\or\orstate_1	orumatillja_1
ORUNIONJA_1	138000	30	OR_ORSTATE_1	project\vine\or\orstate_1	orunionja_1
ORWASHINGTONJA_1	138000	32	OR_ORSTATE_1	project\vine\or\orstate_1	orwashingtonja_1
ORYAMHILLJA_1	138000	33	OR_ORSTATE_1	project\vine\or\orstate_1	oryamhillja_1
ORDOC_1	138000	900	OR_ORSTATE_1	project\vine\or\orstate_1	ordoc_1
ORNORCORJA_1	138000	951	OR_ORSTATE_1	project\vine\or\orstate_1	ornorcorja_1
MOSULLIVANCT	26000	420	MO_STATE	project\vine\mo\mostate	mosullivanct
MOJACKSONCT	26000	347	MO_STATE	project\vine\mo\mostate	mojacksonct
MOMISSISSIPPICT	26000	366	MO_STATE	project\vine\mo\mostate	momississippict
MOPEMISCOTTCT	26000	377	MO_STATE	project\vine\mo\mostate	mopemiscottct
MOPETTISCT	26000	379	MO_STATE	project\vine\mo\mostate	mopettisct
MODENTCT	26000	332	MO_STATE	project\vine\mo\mostate	modentct
MOLINNCT	26000	357	MO_STATE	project\vine\mo\mostate	molinnct
MOMERCERCT	26000	364	MO_STATE	project\vine\mo\mostate	momercerct
MOMONTGOMERYCT	26000	369	MO_STATE	project\vine\mo\mostate	momontgomeryct
MOFRANKLINCT	26000	335	MO_STATE	project\vine\mo\mostate	mofranklinct
MOBARTONCT	26000	305	MO_STATE	project\vine\mo\mostate	mobartonct
MOBOLINGERCT	26000	308	MO_STATE	project\vine\mo\mostate	mobollingerct
MOSTODDARDCT	26000	402	MO_STATE	project\vine\mo\mostate	mostoddardct
TXCOLLINGSWORTHJA	44900	1	TX_Statewide	project\vine\tx\txstate	txcollingsworthja
TXCHILDRESSJA	44900	2	TX_Statewide	project\vine\tx\txstate	txchildressja
TXELPASO	44900	5	TX_Statewide	project\vine\tx\txstate	txelpaso
TXTDCJ	44900	58	TX_Statewide	project\vine\tx\txstate	txtdcj
TXHARRIS	44900	59	TX_Statewide	project\vine\tx\txstate	txharris
TXDALLAS	44900	61	TX_Statewide	project\vine\tx\txstate	txdallas
TXBEXARJA	44900	91	TX_Statewide	project\vine\tx\txstate	txbexarja
INRANDOLPHJA	15000	68	IN_INSTATE	project\vine\in\instate	inrandolphja
INRUSHJA	15000	70	IN_INSTATE	project\vine\in\instate	inrushja
INSCOTTJA	15000	71	IN_INSTATE	project\vine\in\instate	inscottja
INSHELBYJA	15000	72	IN_INSTATE	project\vine\in\instate	inshelbyja
INSPENCERJA	15000	73	IN_INSTATE	project\vine\in\instate	inspencerja
INSTEUBENJA	15000	76	IN_INSTATE	project\vine\in\instate	insteubenja
INSULLIVANJA	15000	77	IN_INSTATE	project\vine\in\instate	insullivanja
INSWITZERLANDJA	15000	78	IN_INSTATE	project\vine\in\instate	inswitzerlandja
INTIPPECANOEJA	15000	79	IN_INSTATE	project\vine\in\instate	intippecanoeja
INTIPTONJA	15000	80	IN_INSTATE	project\vine\in\instate	intiptonja
INUNIONJA	15000	81	IN_INSTATE	project\vine\in\instate	inunionja
INVERMILLIONJA	15000	83	IN_INSTATE	project\vine\in\instate	invermillionja
INVIGOJA	15000	84	IN_INSTATE	project\vine\in\instate	invigoja
INWARRENJA	15000	86	IN_INSTATE	project\vine\in\instate	inwarrenja
INWARRICKJA	15000	87	IN_INSTATE	project\vine\in\instate	inwarrickja
INWAYNEJA	15000	89	IN_INSTATE	project\vine\in\instate	inwayneja
INWELLSJA	15000	90	IN_INSTATE	project\vine\in\instate	inwellsja
MOWARRENCT	26000	407	MO_STATE	project\vine\mo\mostate	mowarrenct
MOCAMDENCT	26000	314	MO_STATE	project\vine\mo\mostate	mocamdenct
MOCLINTONCT	26000	324	MO_STATE	project\vine\mo\mostate	moclintonct
MODAVIESSCT	26000	330	MO_STATE	project\vine\mo\mostate	modaviessct
MODOUGLASCT	26000	333	MO_STATE	project\vine\mo\mostate	modouglasct
MOGREENECT	26000	338	MO_STATE	project\vine\mo\mostate	mogreenect
MOHOWARDCT	26000	344	MO_STATE	project\vine\mo\mostate	mohowardct
MOLAWRENCECT	26000	354	MO_STATE	project\vine\mo\mostate	molawrencect
MOMARIESCT	26000	361	MO_STATE	project\vine\mo\mostate	momariesct
MOMILLERCT	26000	365	MO_STATE	project\vine\mo\mostate	momillerct
MOOREGONCT	26000	374	MO_STATE	project\vine\mo\mostate	mooregonct
MOSHELBYCT	26000	396	MO_STATE	project\vine\mo\mostate	moshelbyct
MOSTEGENEVIEVECT	26000	400	MO_STATE	project\vine\mo\mostate	mostegenevievect
MOWEBSTERCT	26000	410	MO_STATE	project\vine\mo\mostate	mowebsterct
WIDOC	50001	26	WI_WIDOC	project\vine\wi\widoc	
FLALACHUAJA_1	110000	1	FLState_1	project\vine\fl\flstate_1	flalachuaja_1
FLBAKERJA_1	110000	2	FLState_1	project\vine\fl\flstate_1	
FLBAYJA_1	110000	3	FLState_1	project\vine\fl\flstate_1	
FLBRADFORDJA_1	110000	4	FLState_1	project\vine\fl\flstate_1	
FLBREVARDJA_1	110000	5	FLState_1	project\vine\fl\flstate_1	
FLBROWARDJA_1	110000	6	FLState_1	project\vine\fl\flstate_1	flbrowardja_1
FLCALHOUNJA_1	110000	7	FLState_1	project\vine\fl\flstate_1	
FLCHARLOTTEJA_1	110000	8	FLState_1	project\vine\fl\flstate_1	
FLCLTRUSJA_1	110000	9	FLState_1	project\vine\fl\flstate_1	
FLCLAYJA_1	110000	10	FLState_1	project\vine\fl\flstate_1	
FLCOLLIERJA_1	110000	11	FLState_1	project\vine\fl\flstate_1	flcollierja_1
FLCOLUMBIAJA_1	110000	12	FLState_1	project\vine\fl\flstate_1	
FLDESOTOJA_1	110000	13	FLState_1	project\vine\fl\flstate_1	
FLDIXIEJA_1	110000	14	FLState_1	project\vine\fl\flstate_1	
FLDUVALJASW_1	110000	15	FLState_1	project\vine\fl\flstate_1	flduvalja_1
FLESCAMBIAJA_1	110000	16	FLState_1	project\vine\fl\flstate_1	
FLFLAGLERJA_1	110000	17	FLState_1	project\vine\fl\flstate_1	
FLFRANKLINJA_1	110000	18	FLState_1	project\vine\fl\flstate_1	
FLGADSDENJA_1	110000	19	FLState_1	project\vine\fl\flstate_1	
FLGILCHRISTJA_1	110000	20	FLState_1	project\vine\fl\flstate_1	
FLGLADESJA_1	110000	21	FLState_1	project\vine\fl\flstate_1	
FLGULFJA_1	110000	22	FLState_1	project\vine\fl\flstate_1	
FLHAMILTONJA_1	110000	23	FLState_1	project\vine\fl\flstate_1	
FLHARDEEJA_1	110000	24	FLState_1	project\vine\fl\flstate_1	
FLHENDRYJA_1	110000	25	FLState_1	project\vine\fl\flstate_1	
FLHERNANDOJA_1	110000	26	FLState_1	project\vine\fl\flstate_1	
FLHIGHLANDSJA_1	110000	27	FLState_1	project\vine\fl\flstate_1	
FLHOLMESJA_1	110000	29	FLState_1	project\vine\fl\flstate_1	
FLINDIANRIVERJA_1	110000	30	FLState_1	project\vine\fl\flstate_1	
FLJACKSONJA_1	110000	31	FLState_1	project\vine\fl\flstate_1	
FLJEFFERSONJA_1	110000	32	FLState_1	project\vine\fl\flstate_1	
FLLAFAYETTEJA_1	110000	33	FLState_1	project\vine\fl\flstate_1	
FLLAKEJA_1	110000	34	FLState_1	project\vine\fl\flstate_1	
FLLEEJA_1	110000	35	FLState_1	project\vine\fl\flstate_1	
FLLEONJA_1	110000	36	FLState_1	project\vine\fl\flstate_1	
FLLEVYJA_1	110000	37	FLState_1	project\vine\fl\flstate_1	
FLLIBERTYJA_1	110000	38	FLState_1	project\vine\fl\flstate_1	
FLMADISONJA_1	110000	39	FLState_1	project\vine\fl\flstate_1	
FLMANATEEJA_1	110000	40	FLState_1	project\vine\fl\flstate_1	
FLMARIONJA_1	110000	41	FLState_1	project\vine\fl\flstate_1	
FLMARTINJA_1	110000	42	FLState_1	project\vine\fl\flstate_1	
FLMIAMIDADEJA_1	110000	43	FLState_1	project\vine\fl\flstate_1	flmiamidadeja_1
FLMONROEJA_1	110000	44	FLState_1	project\vine\fl\flstate_1	flmonroeja_1
FLNASSAUJA_1	110000	45	FLState_1	project\vine\fl\flstate_1	
FLOKALOOSAJA_1	110000	46	FLState_1	project\vine\fl\flstate_1	
FLOKEECHOBEEJA_1	110000	47	FLState_1	project\vine\fl\flstate_1	
FLORANGEJA_1	110000	48	FLState_1	project\vine\fl\flstate_1	florangeja_1
FLOSCEOLAJA_1	110000	49	FLState_1	project\vine\fl\flstate_1	
FLPALMBEACHJA_1	110000	50	FLState_1	project\vine\fl\flstate_1	flpalmbeachja_1
FLPASCOJA_1	110000	51	FLState_1	project\vine\fl\flstate_1	
FLPINELLASJA_1	110000	52	FLState_1	project\vine\fl\flstate_1	
FLPOLKJA_1	110000	53	FLState_1	project\vine\fl\flstate_1	
FLPUTNAMJA_1	110000	54	FLState_1	project\vine\fl\flstate_1	
FLSANTAROSAJA_1	110000	55	FLState_1	project\vine\fl\flstate_1	
FLSARASOTAJA_1	110000	56	FLState_1	project\vine\fl\flstate_1	
FLSEMINOLEJA_1	110000	57	FLState_1	project\vine\fl\flstate_1	
FLSTJOHNSJA_1	110000	58	FLState_1	project\vine\fl\flstate_1	
FLSTLUCIEJA_1	110000	59	FLState_1	project\vine\fl\flstate_1	
FLSUMTERJA_1	110000	60	FLState_1	project\vine\fl\flstate_1	
FLSUWANNEEJA_1	110000	61	FLState_1	project\vine\fl\flstate_1	
FLTAYLORJA_1	110000	62	FLState_1	project\vine\fl\flstate_1	
FLUNIONJA_1	110000	63	FLState_1	project\vine\fl\flstate_1	
FLVOLUSIAJASW_1	110000	64	FLState_1	project\vine\fl\flstate_1	flvolusiaja_1
FLWAKULLAJA_1	110000	65	FLState_1	project\vine\fl\flstate_1	
FLWALTONJA_1	110000	66	FLState_1	project\vine\fl\flstate_1	
FLWASHINGTONJA_1	110000	67	FLState_1	project\vine\fl\flstate_1	
FLSTATEJU_1	110000	800	FLState_1	project\vine\fl\flstate_1	
FLDOCSW_1	110000	900	FLState_1	project\vine\fl\flstate_1	fldoc_1
AKDOC	2001	1	AK_AKDOC	project\vine\ak\akdoc	
FLBAYJA	10000	3	FLState	project\vine\fl\flstate	
TXANDERSONJA	44900	301	TX_Statewide	project\vine\tx\txstate	txandersonja
TXARANSASJA	44900	304	TX_Statewide	project\vine\tx\txstate	txaransasja
TXATASCOSAJA	44900	307	TX_Statewide	project\vine\tx\txstate	txatascosaja
TXAUSTIN	44900	308	TX_Statewide	project\vine\tx\txstate	txaustin
TXBAILEYJA	44900	309	TX_Statewide	project\vine\tx\txstate	txbaileyja
TXBASTROP	44900	311	TX_Statewide	project\vine\tx\txstate	txbastrop
TXBOSQUEJA	44900	316	TX_Statewide	project\vine\tx\txstate	txbosqueja
TXBOWIE	44900	317	TX_Statewide	project\vine\tx\txstate	txbowie
TXBRAZOS	44900	319	TX_Statewide	project\vine\tx\txstate	txbrazos
TXBREWSTERJA	44900	320	TX_Statewide	project\vine\tx\txstate	txbrewsterja
TXBROWN	44900	322	TX_Statewide	project\vine\tx\txstate	txbrown
TXBURLESONJA	44900	323	TX_Statewide	project\vine\tx\txstate	txburlesonja
TXBURNET	44900	324	TX_Statewide	project\vine\tx\txstate	txburnet
TXCALHOUNJA	44900	326	TX_Statewide	project\vine\tx\txstate	txcalhounja
TXCAMERON	44900	328	TX_Statewide	project\vine\tx\txstate	txcameron
TXCARSONJA	44900	330	TX_Statewide	project\vine\tx\txstate	txcarsonja
TXCASTRO	44900	332	TX_Statewide	project\vine\tx\txstate	txcastro
TXCHAMBERSJA	44900	333	TX_Statewide	project\vine\tx\txstate	txchambersja
TXCLAYJA	44900	336	TX_Statewide	project\vine\tx\txstate	txclayja
TXCOCHRANJA	44900	337	TX_Statewide	project\vine\tx\txstate	txcochranja
TXCOLLINJA	44900	339	TX_Statewide	project\vine\tx\txstate	txcollinja
TXCOLORADOJA	44900	341	TX_Statewide	project\vine\tx\txstate	txcoloradoja
TXCOMAL	44900	342	TX_Statewide	project\vine\tx\txstate	txcomal
TXCORYELLJA	44900	344	TX_Statewide	project\vine\tx\txstate	txcoryellja
TXCRANEJA	44900	345	TX_Statewide	project\vine\tx\txstate	txcraneja
TXDEAFSMITHJA	44900	351	TX_Statewide	project\vine\tx\txstate	txdeafsmithja
TXDENTON	44900	352	TX_Statewide	project\vine\tx\txstate	txdenton
TXDEWITTJA	44900	353	TX_Statewide	project\vine\tx\txstate	txdewittja
TXDONLEYJA	44900	356	TX_Statewide	project\vine\tx\txstate	txdonleyja
TXDUVALJA	44900	357	TX_Statewide	project\vine\tx\txstate	txduvalja
TXECTOR	44900	359	TX_Statewide	project\vine\tx\txstate	txector
TXEDWARDSJA	44900	360	TX_Statewide	project\vine\tx\txstate	txedwardsja
TXELLISJA	44900	361	TX_Statewide	project\vine\tx\txstate	txellisja
TXFANNIN	44900	365	TX_Statewide	project\vine\tx\txstate	txfannin
TXFAYETTE	44900	366	TX_Statewide	project\vine\tx\txstate	txfayette
TXFORTBENDJA	44900	370	TX_Statewide	project\vine\tx\txstate	txfortbendja
TXFRANKLIN	44900	371	TX_Statewide	project\vine\tx\txstate	txfranklin
TXGALVESTONJA	44900	375	TX_Statewide	project\vine\tx\txstate	txgalvestonja
TXGILLESPIE	44900	377	TX_Statewide	project\vine\tx\txstate	txgillespie
TXGOLIADJA	44900	379	TX_Statewide	project\vine\tx\txstate	txgoliadja
TXGRAYJA	44900	381	TX_Statewide	project\vine\tx\txstate	txgrayja
TXGRIMES	44900	384	TX_Statewide	project\vine\tx\txstate	txgrimes
TXGUADALUPE	44900	385	TX_Statewide	project\vine\tx\txstate	txguadalupe
TXHALE	44900	386	TX_Statewide	project\vine\tx\txstate	txhale
TXHARDINJA	44900	391	TX_Statewide	project\vine\tx\txstate	txhardinja
TXHARRISON	44900	393	TX_Statewide	project\vine\tx\txstate	txharrison
TXHARTLEYJA	44900	394	TX_Statewide	project\vine\tx\txstate	txhartleyja
TXHASKELLJA	44900	395	TX_Statewide	project\vine\tx\txstate	txhaskellja
TXHAYS	44900	396	TX_Statewide	project\vine\tx\txstate	txhays
TXHEMPHILLJA	44900	397	TX_Statewide	project\vine\tx\txstate	txhemphillja
TXHENDERSON	44900	398	TX_Statewide	project\vine\tx\txstate	txhenderson
TXHIDALGO	44900	399	TX_Statewide	project\vine\tx\txstate	txhidalgo
TXHILL	44900	400	TX_Statewide	project\vine\tx\txstate	txhill
TXHOOD	44900	402	TX_Statewide	project\vine\tx\txstate	txhood
TXHOPKINS	44900	403	TX_Statewide	project\vine\tx\txstate	txhopkins
TXHOUSTONJA	44900	404	TX_Statewide	project\vine\tx\txstate	txhoustonja
TXHOWARDJA	44900	405	TX_Statewide	project\vine\tx\txstate	txhowardja
TXHUDSPETHJA	44900	406	TX_Statewide	project\vine\tx\txstate	txhudspethja
TXHUNT	44900	407	TX_Statewide	project\vine\tx\txstate	txhunt
TXHUTCHINSON	44900	408	TX_Statewide	project\vine\tx\txstate	txhutchinson
TXJEFFERSON	44900	412	TX_Statewide	project\vine\tx\txstate	txjefferson
TXJIMHOGGJA	44900	413	TX_Statewide	project\vine\tx\txstate	txjimhoggja
TXJIMWELLSJA	44900	414	TX_Statewide	project\vine\tx\txstate	txjimwellsja
TXKAUFMANJA	44900	418	TX_Statewide	project\vine\tx\txstate	txkaufmanja
TXKENEDYJA	44900	420	TX_Statewide	project\vine\tx\txstate	txkenedyja
TXKINNEYJA	44900	423	TX_Statewide	project\vine\tx\txstate	txkinneyja
TXKLEBERGJA	44900	424	TX_Statewide	project\vine\tx\txstate	txklebergja
TXLIPSCOMBJA	44900	434	TX_Statewide	project\vine\tx\txstate	txlipscombja
TXLYNNJA	44900	438	TX_Statewide	project\vine\tx\txstate	txlynnja
TXMAVERICKJA	44900	444	TX_Statewide	project\vine\tx\txstate	txmaverickja
TXMCLENNANJA	44900	446	TX_Statewide	project\vine\tx\txstate	txmclennanja
TXMIDLANDJA	44900	449	TX_Statewide	project\vine\tx\txstate	txmidlandja
TXMONTGOMERYJA	44900	454	TX_Statewide	project\vine\tx\txstate	txmontgomeryja
TXMORRISJA	44900	456	TX_Statewide	project\vine\tx\txstate	txmorrisja
TXORANGEJA	44900	464	TX_Statewide	project\vine\tx\txstate	txorangeja
TXPANOLA	44900	466	TX_Statewide	project\vine\tx\txstate	txpanola
TXPARKER	44900	467	TX_Statewide	project\vine\tx\txstate	txparker
TXPECOS	44900	469	TX_Statewide	project\vine\tx\txstate	txpecos
TXPRESIDIOJA	44900	472	TX_Statewide	project\vine\tx\txstate	txpresidioja
TXRANDALL	44900	474	TX_Statewide	project\vine\tx\txstate	txrandall
TXREAGANJA	44900	475	TX_Statewide	project\vine\tx\txstate	txreaganja
TXREFUGIO	44900	478	TX_Statewide	project\vine\tx\txstate	txrefugio
TXSOMMERVELL	44900	494	TX_Statewide	project\vine\tx\txstate	txsommervell
TXSUTTONJA	44900	499	TX_Statewide	project\vine\tx\txstate	txsuttonja
TXTARRANTJA	44900	501	TX_Statewide	project\vine\tx\txstate	txtarrantja
TXTERRYJA	44900	504	TX_Statewide	project\vine\tx\txstate	txterryja
TXTOMGREEN	44900	506	TX_Statewide	project\vine\tx\txstate	txtomgreen
TXTRINITYJA	44900	508	TX_Statewide	project\vine\tx\txstate	txtrinityja
TXTYLERJA	44900	509	TX_Statewide	project\vine\tx\txstate	txtylerja
TXUVALDEJA	44900	512	TX_Statewide	project\vine\tx\txstate	txuvaldeja
TXVANZANDT	44900	514	TX_Statewide	project\vine\tx\txstate	txvanzandt
TXWALKER	44900	516	TX_Statewide	project\vine\tx\txstate	txwalker
TXWASHINGTONJA	44900	519	TX_Statewide	project\vine\tx\txstate	txwashingtonja
TXWEBBJA	44900	520	TX_Statewide	project\vine\tx\txstate	txwebbja
TXWHARTON	44900	521	TX_Statewide	project\vine\tx\txstate	txwharton
TXWICHITAJA	44900	523	TX_Statewide	project\vine\tx\txstate	txwichitaja
TXWILLIAMSON	44900	526	TX_Statewide	project\vine\tx\txstate	txwilliamson
TXWILSON	44900	527	TX_Statewide	project\vine\tx\txstate	txwilson
TXWISEJA	44900	529	TX_Statewide	project\vine\tx\txstate	txwiseja
TXWOOD	44900	530	TX_Statewide	project\vine\tx\txstate	txwood
TXYOAKUM	44900	531	TX_Statewide	project\vine\tx\txstate	txyoakum
TXZAPATAJA	44900	533	TX_Statewide	project\vine\tx\txstate	txzapataja
NJMORRISJA	31002	31002	NJ_MORRIS	project\vine\nj\njmorrisja	project/vine/nj/njmorrisja
KYWARRENJU	18000	270	KY_KYSTATE	project\vine\ky\kystate	kywarrenju
TXFALLS	44900	364	TX_Statewide	project\vine\tx\txstate	txfalls
TXFREESTONEJA	44900	372	TX_Statewide	project\vine\tx\txstate	txfreestoneja
TXLAMB	44900	427	TX_Statewide	project\vine\tx\txstate	txlamb
TXLEEJA	44900	430	TX_Statewide	project\vine\tx\txstate	txleeja
TXLIVEOAKJA	44900	435	TX_Statewide	project\vine\tx\txstate	txliveoakja
TXLUBBOCKJA	44900	437	TX_Statewide	project\vine\tx\txstate	txlubbockja
TXMCCULLOCHJA	44900	445	TX_Statewide	project\vine\tx\txstate	txmccullochja
TXMEDINA	44900	447	TX_Statewide	project\vine\tx\txstate	txmedina
TXMILAM	44900	450	TX_Statewide	project\vine\tx\txstate	txmilam
TXNACOGDOCHES	44900	457	TX_Statewide	project\vine\tx\txstate	txnacogdoches
TXNOLANJA	44900	460	TX_Statewide	project\vine\tx\txstate	txnolanja
TXOCHILTREE	44900	462	TX_Statewide	project\vine\tx\txstate	txochiltree
TXPOLK	44900	470	TX_Statewide	project\vine\tx\txstate	txpolk
TXRAINSJA	44900	473	TX_Statewide	project\vine\tx\txstate	txrainsja
TXROBERTSONJA	44900	479	TX_Statewide	project\vine\tx\txstate	txrobertsonja
TXSCURRY	44900	489	TX_Statewide	project\vine\tx\txstate	txscurry
TXSTARRJA	44900	495	TX_Statewide	project\vine\tx\txstate	txstarrja
TXTAYLOR	44900	502	TX_Statewide	project\vine\tx\txstate	txtaylor
TXTITUS	44900	505	TX_Statewide	project\vine\tx\txstate	txtitus
TXTRAVISJA	44900	507	TX_Statewide	project\vine\tx\txstate	txtravisja
TXUPSHUR	44900	510	TX_Statewide	project\vine\tx\txstate	txupshur
TXVALVERDEJA	44900	513	TX_Statewide	project\vine\tx\txstate	txvalverdeja
TXVICTORIA	44900	515	TX_Statewide	project\vine\tx\txstate	txvictoria
NYALBANYJA	33004	400	NY_NYSTATE	project\vine\ny\nystate	nyalbanyja
NYCHAUTAUQUAJA	33004	406	NY_NYSTATE	project\vine\ny\nystate	nychautauquaja
NYDUTCHESSJA	33004	413	NY_NYSTATE	project\vine\ny\nystate	nydutchessja
NYGREENEJA	33004	419	NY_NYSTATE	project\vine\ny\nystate	nygreeneja
NYLEWISJA	33004	424	NY_NYSTATE	project\vine\ny\nystate	nylewisja
NYLIVINGSTONJA	33004	425	NY_NYSTATE	project\vine\ny\nystate	nylivingstonja
NYONEIDAJA	33004	432	NY_NYSTATE	project\vine\ny\nystate	nyoneidaja
NYOSWEGOJA	33004	437	NY_NYSTATE	project\vine\ny\nystate	nyoswegoja
NYSCHOHARIEJA	33004	447	NY_NYSTATE	project\vine\ny\nystate	nyschoharieja
NYWESTCHESTERRJA	33004	459	NY_NYSTATE	project\vine\ny\nystate	nywestchesterja
ARARKANSASPR	4999	2	AR_ARSTATE	project\vine\ar\arstate	ararkansaspr
ARCALHOUNJA	4999	16	AR_ARSTATE	project\vine\ar\arstate	arcalhounja
ARCLAYJA	4999	27	AR_ARSTATE	project\vine\ar\arstate	arclayja
ARDESHAJA	4999	47	AR_ARSTATE	project\vine\ar\arstate	ardeshaja
ARGRANTJA	4999	61	AR_ARSTATE	project\vine\ar\arstate	argrantja
ARLAWRENCEJA	4999	97	AR_ARSTATE	project\vine\ar\arstate	arlawrenceja
ARMISSISSIPPIJA	4999	122	AR_ARSTATE	project\vine\ar\arstate	armississippija
ARNEVADAPR	4999	131	AR_ARSTATE	project\vine\ar\arstate	arnevadapr
ARPIKEJA	4999	142	AR_ARSTATE	project\vine\ar\arstate	arpikeja
ARSHARPJA	4999	177	AR_ARSTATE	project\vine\ar\arstate	arsharpja
ARYELLPR	4999	193	AR_ARSTATE	project\vine\ar\arstate	aryellpr
ARSILOAMSPRINGSJA	4999	196	AR_ARSTATE	project\vine\ar\arstate	arsiloamspringsja
LAACADIAJA	19000	1	LA_LASTATE	project\vine\la\lastate	laacadiaja
LAALLENJA	19000	2	LA_LASTATE	project\vine\la\lastate	laallenja
LAASCENSIONJA	19000	3	LA_LASTATE	project\vine\la\lastate	laascensionja
LAAVOYELLESJA	19000	5	LA_LASTATE	project\vine\la\lastate	laavoyellesja
LABIENVILLEJA	19000	7	LA_LASTATE	project\vine\la\lastate	labienvilleja
LABOSSIERJA	19000	8	LA_LASTATE	project\vine\la\lastate	labossierja
LACADDOJA	19000	9	LA_LASTATE	project\vine\la\lastate	lacaddoja
LACALCASIEUJA	19000	10	LA_LASTATE	project\vine\la\lastate	lacalcasieuja
LACALDWELLJA	19000	11	LA_LASTATE	project\vine\la\lastate	lacaldwellja
LACATAHOULAJA	19000	13	LA_LASTATE	project\vine\la\lastate	lacatahoulaja
LACLAIBORNEJA	19000	14	LA_LASTATE	project\vine\la\lastate	laclaiborneja
LACONCORDIAJA	19000	15	LA_LASTATE	project\vine\la\lastate	laconcordiaja
LADESOTOJA	19000	16	LA_LASTATE	project\vine\la\lastate	ladesotoja
LAEASTBATONROUGEJA	19000	17	LA_LASTATE	project\vine\la\lastate	laeastbatonrougeja
LAEASTFELICIANAJA	19000	19	LA_LASTATE	project\vine\la\lastate	laeastfelicianaja
LAEVANGELINEJA	19000	20	LA_LASTATE	project\vine\la\lastate	laevangelineja
LAFRANKLINJA	19000	21	LA_LASTATE	project\vine\la\lastate	lafranklinja
LAGRANTJA	19000	22	LA_LASTATE	project\vine\la\lastate	
LAIBERIAJA	19000	23	LA_LASTATE	project\vine\la\lastate	laiberiaja
LAIBERVILLEJA	19000	24	LA_LASTATE	project\vine\la\lastate	laibervilleja
LAJEFFERSONJA	19000	26	LA_LASTATE	project\vine\la\lastate	lajeffersonja
LALAFAYETTEJA	19000	29	LA_LASTATE	project\vine\la\lastate	lalafayetteja
LALINCOLNJA	19000	31	LA_LASTATE	project\vine\la\lastate	lalincolnja
LAMADISONJA	19000	33	LA_LASTATE	project\vine\la\lastate	lamadisonja
LANATCHITOCHESJA	19000	35	LA_LASTATE	project\vine\la\lastate	lanatchitochesja
LAOUACHITAJA	19000	37	LA_LASTATE	project\vine\la\lastate	laouachitaja
LAPLAQUEMINESJA	19000	38	LA_LASTATE	project\vine\la\lastate	laplaqueminesja
LAREDRIVERJA	19000	41	LA_LASTATE	project\vine\la\lastate	laredriverja
LARICHLANDJA	19000	42	LA_LASTATE	project\vine\la\lastate	larichlandja
LASABINEJA	19000	43	LA_LASTATE	project\vine\la\lastate	lasabineja
LASTCHARLESJA	19000	45	LA_LASTATE	project\vine\la\lastate	lastcharlesja
LASTJAMESJA	19000	47	LA_LASTATE	project\vine\la\lastate	lastjamesja
LASTJOHNTHEBAPTISTJA	19000	48	LA_LASTATE	project\vine\la\lastate	lastjohnthebaptistja
LASTLANDRYJA	19000	49	LA_LASTATE	project\vine\la\lastate	lastlandryja
LASTMARYJA	19000	51	LA_LASTATE	project\vine\la\lastate	lastmaryja
LATANGIPAHOAJA	19000	53	LA_LASTATE	project\vine\la\lastate	latangipahoaja
LATERREBONNEJA	19000	55	LA_LASTATE	project\vine\la\lastate	laterrebonneja
LAUNIONJA	19000	56	LA_LASTATE	project\vine\la\lastate	launionja
LAVERMILLIONJA	19000	57	LA_LASTATE	project\vine\la\lastate	lavermillionja
LAWEBSTERJA	19000	60	LA_LASTATE	project\vine\la\lastate	lawebsterja
LAWESTCARROLLJA	19000	62	LA_LASTATE	project\vine\la\lastate	lawestcarrollja
LAWINNJA	19000	64	LA_LASTATE	project\vine\la\lastate	lawinnja
LAALLENCT	19000	302	LA_LASTATE	project\vine\la\lastate	laallenct
LAASCENSIONCT	19000	303	LA_LASTATE	project\vine\la\lastate	laascensionct
LAASSUMPTIONCT	19000	304	LA_LASTATE	project\vine\la\lastate	laassumptionct
LAAVOYELLESCT	19000	305	LA_LASTATE	project\vine\la\lastate	laavoyellesct
LABEAUREGARDCT	19000	306	LA_LASTATE	project\vine\la\lastate	labeauregardct
LABOSSIERCT	19000	308	LA_LASTATE	project\vine\la\lastate	labossierct
LACAMERONCT	19000	312	LA_LASTATE	project\vine\la\lastate	lacameronct
LADESOTOCT	19000	316	LA_LASTATE	project\vine\la\lastate	ladesotoct
LALINCOLNCT	19000	331	LA_LASTATE	project\vine\la\lastate	lalincolnct
LALIVINGSTONCT	19000	332	LA_LASTATE	project\vine\la\lastate	lalivingstonct
LAORLEANSCT	19000	336	LA_LASTATE	project\vine\la\lastate	laorleansct
LAPOINTECOUPEECT	19000	339	LA_LASTATE	project\vine\la\lastate	lapointcoupeect
LASABINECT	19000	343	LA_LASTATE	project\vine\la\lastate	lasabinect
LASTHELENACT	19000	346	LA_LASTATE	project\vine\la\lastate	lasthelenact
LASTMARYCT	19000	351	LA_LASTATE	project\vine\la\lastate	lastmaryct
LATENSASCT	19000	354	LA_LASTATE	project\vine\la\lastate	latensasct
LAUNIONCT	19000	356	LA_LASTATE	project\vine\la\lastate	launionct
LAWEBSTERCT	19000	360	LA_LASTATE	project\vine\la\lastate	lawebsterct
LAWESTBATONROUGECT	19000	361	LA_LASTATE	project\vine\la\lastate	lawestbatonrougect
LAWESTFELICIANACT	19000	363	LA_LASTATE	project\vine\la\lastate	lawestfelicianact
LAWINNCT	19000	364	LA_LASTATE	project\vine\la\lastate	lawinnct
LADOC	19000	900	LA_LASTATE	project\vine\la\lastate	ladoc
TXLASALLEJA	44900	548	TX_Statewide	project\vine\tx\txstate	txlasalleja
GACOBBJA	11010	1	GA_COBB	project\vine\ga\gacobbja	
TESTSITE1	555999	1	Interface Testing	project\vine\interface	test1
TESTSITE2	555999	2	Interface Testing	project\vine\interface	test2
TESTSITE3	555999	3	Interface Testing	project\vine\interface	test3
TESTSITE4	555999	4	Interface Testing	project\vine\interface	test4
TESTSITE6	555999	6	Interface Testing	project\vine\interface	test6
TESTSITE7	555999	7	Interface Testing	project\vine\interface	test7
TESTSITE8	555999	8	Interface Testing	project\vine\interface	test8
TESTSITE9	555999	9	Interface Testing	project\vine\interface	test9
TESTSITE10	555999	10	Interface Testing	project\vine\interface	test10
CAMERCED_1	105099	1	CA_MULTICO_1	project\vine\ca\multico_1	
CAHUMBOLDT_1	105099	24	CA_MULTICO_1	project\vine\ca\multico_1	cahumboldtja_1
CABUTTE_1	105099	25	CA_MULTICO_1	project\vine\ca\multico_1	cabutteja_1
CASANTACRUZ_1	105099	27	CA_MULTICO_1	project\vine\ca\multico_1	casantacruzja_1
CAMONTEREY_1	105099	61	CA_MULTICO_1	project\vine\ca\multico_1	camontereyja_1
CANAPA_1	105099	139	CA_MULTICO_1	project\vine\ca\multico_1	canapaja_1
CASOLANO_1	105099	156	CA_MULTICO_1	project\vine\ca\multico_1	casolanoja_1
CASANTACLARAOLD	5002	2	CA_SANTACLARA	project\vine\ca\casantaclaraja	
FLBAKERJA	10000	2	FLState	project\vine\fl\flstate	flbakerja
MDBALTIMORECYCIRC	21999	128	MD_MDSTATE	project\vine\md\mdstate	mdbaltimorecycirc
IDDOCCOTTONWOOD	13999	1	iddoccottonwood	project\vine\id\iddoccottonwood	
TXTRAVCNTY	44230	1	TX_TRAVIS	tx\travis	
OHPAULDINGJA	36001	197	OH_OHSTATE	project\vine\oh\ohstate	ohpauldingja
NCRICHMONDPR	34003	1077	NC_STATE	project\vine\nc\ncstate	ncrichmondpr
NCSURRYPR	34003	1086	NC_STATE	project\vine\nc\ncstate	ncsurrypr
NYERIEJA	33004	414	NY_NYSTATE	project\vine\ny\nystate	nyerieja
MISAGINAWJA	23005	72	MI_MISTATE	project\vine\mi\mistate	misaginawja
KYBOONEJA	18000	8	KY_KYSTATE	project\vine\ky\kystate	kybooneja
NEOTOEJA	28000	499	NE_NESTATE	project\vine\ne\nestate	neotoeja
NEBOONEJA	28000	61	NE_NESTATE	project\vine\ne\nestate	nebooneja
NCLEEPR	34003	1053	NC_STATE	project\vine\nc\ncstate	ncleepr
NCNORTHHAMPTONPR	34003	1066	NC_STATE	project\vine\nc\ncstate	ncnorthhamptonpr
NCSAMPSONPR	34003	1082	NC_STATE	project\vine\nc\ncstate	ncsampsonpr
ILHAMILTONCT	14004	64	IL_ILSTATE	project\vine\il\ilstate	ilhamiltonct
OHCOPS	36001	3278	OH_OHSTATE	project\vine\oh\ohstate	ohcops
KYTODDJA	18000	110	KY_KYSTATE	project\vine\ky\kystate	kytoddja
SCCHARLESTONJA	41001	1	sccharlestonja	project\vine\sc\sccharlestonja	
MDFREDRICKCIRC	21999	35	MD_MDSTATE	project\vine\md\mdstate	
MIGRATIOTPA	23005	832	MI_MISTATE	project\vine\mi\mistate	migratiotpa
UUNETMON	91	4	TEST2	project\vine\test\voxtest2	
MOATCHISONJA	26000	3	MO_STATE	project\vine\mo\mostate	moatchisonja
ILADAMSCC_1	114004	2	IL_ILSTATE_1	project\vine\il\ilstate_1	
ILCALHOUNJL_1	114004	13	IL_ILSTATE_1	project\vine\il\ilstate_1	ilcalhounjl_1
NESEWAJA_1	128000	610	NE_STATE_1	project\vine\ne\nestate_1	nesewaja_1
MIGOGEPR	23005	127	MI_MISTATE	project\vine\mi\mistate	migogebicpa
FLCOLUMBIAJA	10000	12	FLState	project\vine\fl\flstate	flcolumbiaja
FLHAMILTONJA	10000	23	FLState	project\vine\fl\flstate	flhamiltonja
TXARMSTRONGJA	44900	306	TX_Statewide	project\vine\tx\txstate	txarmstrongja
LAJEFFERSONDAVISJA	19000	27	LA_LASTATE	project\vine\la\lastate	lajeffersondavisja
LAMOREHOUSEJA	19000	34	LA_LASTATE	project\vine\la\lastate	lamorehouseja
LARAPIDESJA	19000	40	LA_LASTATE	project\vine\la\lastate	larapidesja
LASTHELENAJA	19000	46	LA_LASTATE	project\vine\la\lastate	lasthelenaja
LASTTAMMANYJA	19000	52	LA_LASTATE	project\vine\la\lastate	lasttammanyja
LAWASHINGTONJA	19000	59	LA_LASTATE	project\vine\la\lastate	lawashingtonja
LACADDOCT	19000	309	LA_LASTATE	project\vine\la\lastate	lacaddoct
KYJEFFERSONJA	18000	56	KY_KYSTATE	project\vine\ky\kystate	kyjeffersonja
FLLEEJA	10000	35	FLState	project\vine\fl\flstate	flleeja
GACHEROKEEJA	11004	1	GA_CHEROKEE	project\vine\ga\gacherokeeja	
LASHREVEPORTJA	19000	65	LA_LASTATE	project\vine\la\lastate	lashreveportja
TNDAVIDSONCT	43003	153	TN_DAVIDSON	project\vine\tn\tndavidson	tndavidsonct
NCBRUNSWICKJA	34003	11	NC_STATE	project\vine\nc\ncstate	ncbrunswickja
NCBUNCOMBEJA	34003	12	NC_STATE	project\vine\nc\ncstate	ncbuncombeja
NCCARTERETJA	34003	17	NC_STATE	project\vine\nc\ncstate	nccarteretja
NCCRAVENJA	34003	26	NC_STATE	project\vine\nc\ncstate	nccravenja
NCDAVIDSONJA	34003	30	NC_STATE	project\vine\nc\ncstate	ncdavidsonja
NCFORSYTHJA	34003	35	NC_STATE	project\vine\nc\ncstate	ncforsythja
NCHAYWOODJA	34003	45	NC_STATE	project\vine\nc\ncstate	nchaywoodja
NCJACKSONJA	34003	51	NC_STATE	project\vine\nc\ncstate	ncjacksonja
NCMCDOWELLJA	34003	57	NC_STATE	project\vine\nc\ncstate	ncmcdowellja
NCNASHJA	34003	65	NC_STATE	project\vine\nc\ncstate	ncnashja
NCPAMLICOJA	34003	70	NC_STATE	project\vine\nc\ncstate	ncpamlicoja
NCSAMPSONJA	34003	83	NC_STATE	project\vine\nc\ncstate	ncsampsonja
NCWAKEJA	34003	93	NC_STATE	project\vine\nc\ncstate	ncwakeja
NCYADKINJA	34003	100	NC_STATE	project\vine\nc\ncstate	ncyadkinja
ARCROSSJA	4999	43	AR_ARSTATE	project\vine\ar\arstate	arcrossja
ARBAXTERJA	4999	6	AR_ARSTATE	project\vine\ar\arstate	arbaxterja
NCUNKNOWNJA	34003	0	NC_STATE	project\vine\nc\ncstate	
TRAINING3	999003	1	Training3	project\gov\c2c\training3\training3	
TRAINING5	999005	1	training5	project\gov\c2c\training5\training5	
TRAINING2	999002	1	training2	project\goc\c2c\training2\training2	
TRAINING1	999001	999001	training1	project\gov\c2c\training1\training1	
TRAINING4	999004	1	Training 4	project\gov\c2c\training4\training4	project\gov\c2c\training4\training4
TRAINING8	999008	1	Training8	project\gov\c2c\training8\training8	
AZDOC	3004	1	AZ_AZDOC	project\vine\az\azdoc	
TXSWISHERJA	44900	500	TX_Statewide	project\vine\tx\txstate	txswisherja
NCASHEPR	34003	1004	NC_STATE	project\vine\nc\ncstate	ncashepr
TXARCHERJA	44900	305	TX_Statewide	project\vine\tx\txstate	txarcherja
TXDALLAMJA	44900	349	TX_Statewide	project\vine\tx\txstate	txdallamja
TXDAWSONJA	44900	542	TX_Statewide	project\vine\tx\txstate	txdawsonja
ARLOGANJA	4999	109	AR_ARSTATE	project\vine\ar\arstate	arloganja
FLBROWARDJA	10000	6	FLState	project\vine\fl\flstate	flbrowardja
FLDIXIEJA	10000	14	FLState	project\vine\fl\flstate	fldixieja
FLGULFJA	10000	22	FLState	project\vine\fl\flstate	flgulfja
FLHIGHLANDSJA	10000	27	FLState	project\vine\fl\flstate	flhighlandsja
FLLAFAYETTEJA	10000	33	FLState	project\vine\fl\flstate	fllafayetteja
FLMANATEEJA	10000	40	FLState	project\vine\fl\flstate	flmanateeja
FLMADISONJA	10000	39	FLState	project\vine\fl\flstate	flmadisonja
FLOSCEOLAJA	10000	49	FLState	project\vine\fl\flstate	flosceolaja
FLPUTNAMJA	10000	54	FLState	project\vine\fl\flstate	flputnamja
FLSUWANNEEJA	10000	61	FLState	project\vine\fl\flstate	flsuwanneeja
FLSUMTERJA	10000	60	FLState	project\vine\fl\flstate	flsumterja
MNPOLKJA	24002	82	MN_MNSTATE	project\vine\mn\mnstate	mnpolkja
FLOKALOOSAJA	10000	46	FLState	project\vine\fl\flstate	flokaloosaja
INHAMILTONCT	15029	2	IN_HAMILTON	project\vine\in\inhamilton	inhamiltonct
RIDOC	40900	15	RI_RIDOC	project\vine\ri\ridoc	
NCAVERYJA	34003	7	NC_STATE	project\vine\nc\ncstate	ncaveryja
NCDURHAMPR	34003	1031	NC_STATE	project\vine\nc\ncstate	ncdurhampr
NCJONESPR	34003	1052	NC_STATE	project\vine\nc\ncstate	ncjonespr
NCPERQUIMANSPR	34003	1072	NC_STATE	project\vine\nc\ncstate	ncperquimanspr
NCROWANPR	34003	1080	NC_STATE	project\vine\nc\ncstate	ncrowanpr
NCNORTHHAMPTONJA	34003	67	NC_STATE	project\vine\nc\ncstate	ncnorthhamptonja
COLAPLATAC2C	30600	1	CO_LAPLATA_C2C	project\gov\c2c\co\laplata	
UTBEAVERJA	45000	1	UT_UTSTATE	project\vine\ut\utstate	utbeaverja
UTBOXELDERJA	45000	2	UT_UTSTATE	project\vine\ut\utstate	utboxelderja
UTDAGGETTJA	45000	5	UT_UTSTATE	project\vine\ut\utstate	utdaggettja
UTDUCHESNEJA	45000	7	UT_UTSTATE	project\vine\ut\utstate	utduchesneja
UTEMERYJA	45000	8	UT_UTSTATE	project\vine\ut\utstate	utemeryja
UTMILLARDJA	45000	14	UT_UTSTATE	project\vine\ut\utstate	utmillardja
UTCACHEJA	45000	3	UT_UTSTATE	project\vine\ut\utstate	utcacheja
UTCARBONJA	45000	4	UT_UTSTATE	project\vine\ut\utstate	utcarbonja
UTDAVISJA	45000	6	UT_UTSTATE	project\vine\ut\utstate	utdavisja
UTGARFIELDJA	45000	9	UT_UTSTATE	project\vine\ut\utstate	utgarfieldja
UTGRANDJA	45000	10	UT_UTSTATE	project\vine\ut\utstate	utgrandja
UTIRONJA	45000	11	UT_UTSTATE	project\vine\ut\utstate	utironja
UTJUABJA	45000	12	UT_UTSTATE	project\vine\ut\utstate	utjuabja
UTKANEJA	45000	13	UT_UTSTATE	project\vine\ut\utstate	utkaneja
UTRICHJA	45000	15	UT_UTSTATE	project\vine\ut\utstate	utrichja
UTSALTLAKEJA	45000	16	UT_UTSTATE	project\vine\ut\utstate	utsaltlakeja
UTSANJUANJA	45000	17	UT_UTSTATE	project\vine\ut\utstate	utsanjuanja
UTSANPETEJA	45000	18	UT_UTSTATE	project\vine\ut\utstate	utsanpeteja
UTSEVIERJA	45000	19	UT_UTSTATE	project\vine\ut\utstate	utsevierja
UTSUMMITJA	45000	20	UT_UTSTATE	project\vine\ut\utstate	utsummitja
UTTOOELEJA	45000	21	UT_UTSTATE	project\vine\ut\utstate	uttooeleja
UTUINTAHJA	45000	22	UT_UTSTATE	project\vine\ut\utstate	utuintahja
UTUTAHJA	45000	23	UT_UTSTATE	project\vine\ut\utstate	ututahja
UTWASATCHJA	45000	24	UT_UTSTATE	project\vine\ut\utstate	utwasatchja
UTWASHINGTONJA	45000	25	UT_UTSTATE	project\vine\ut\utstate	utwashingtonja
UTWEBERJA	45000	26	UT_UTSTATE	project\vine\ut\utstate	utweberja
MOSTCHARLESJA	26000	99	MO_STATE	project\vine\mo\mostate	mostcharlesja
ARCABOTPD	4999	2036	AR_ARSTATE	project\vine\ar\arstate	arcabotpd
ARCARLISLEPD	4999	2043	AR_ARSTATE	project\vine\ar\arstate	arcarlislepd
ARDERMOTTPD	4999	2068	AR_ARSTATE	project\vine\ar\arstate	ardermottpd
ARENGLANDPD	4999	2085	AR_ARSTATE	project\vine\ar\arstate	arenglandpd
AREUREKAPD	4999	2088	AR_ARSTATE	project\vine\ar\arstate	areurekapd
ARLONOKEPD	4999	2168	AR_ARSTATE	project\vine\ar\arstate	arlonokepd
AROSCEOLAPD	4999	2213	AR_ARSTATE	project\vine\ar\arstate	arosceolapd
ARASHLEYQA	4999	499	AR_ARSTATE	project\vine\ar\arstate	arashlja
MOCRAWFORDJA	26000	28	MO_STATE	project\vine\mo\mostate	mocrawfordja
UTDOC	45000	900	UT_UTSTATE	project\vine\ut\utstate	utdoc
FLTESTJA	10000	9999	FLState	project\vine\fl\flstate	flbakerja
TXWHEELERJA	44900	522	TX_Statewide	project\vine\tx\txstate	txwheelerja
ILJERSEYCT	14004	82	IL_ILSTATE	project\vine\il\ilstate	iljerseyct
LAWESTFELICIANAJA	19000	63	LA_LASTATE	project\vine\la\lastate	lawestfelicianaja
NEPOLKJA	28000	539	NE_NESTATE	project\vine\ne\nestate	nepolkja
TXCHEROKEE	44900	334	TX_Statewide	project\vine\tx\txstate	txcherokee
TXPALOPINTO	44900	465	TX_Statewide	project\vine\tx\txstate	txpalopinto
TXLIMESTONE	44900	433	TX_Statewide	project\vine\tx\txstate	txlimestone
TXGRAYSON	44900	382	TX_Statewide	project\vine\tx\txstate	txgrayson
TXJASPERJA	44900	411	TX_Statewide	project\vine\tx\txstate	txjasperja
TESTSITE5	555999	5	Interface Testing	project\vine\interface	test5
MOCOLEJA	26000	26	MO_STATE	project\vine\mo\mostate	mocoleja
LAJACKSONJA	19000	25	LA_LASTATE	project\vine\la\lastate	lajacksonja
LALAFOURCHEJA	19000	30	LA_LASTATE	project\vine\la\lastate	lalafourcheja
MOCSLCT	26000	434	MO_STATE	project\vine\mo\mostate	mostlouiscity
TXGILLESPIECT	44900	988	TX_Statewide	project\vine\tx\txstate	txgillespiect
TXLIMESTONECT	44900	1047	TX_Statewide	project\vine\tx\txstate	txlimestonect
LAASSUMPTIONJA	19000	4	LA_LASTATE	project\vine\la\lastate	laassumptionja
OHBUTLERJA	36001	141	OH_OHSTATE	project\vine\oh\ohstate	ohbutlerja
OHCLINTONJA	36001	147	OH_OHSTATE	project\vine\oh\ohstate	ohclintonja
OHDARKEJA	36001	152	OH_OHSTATE	project\vine\oh\ohstate	ohdarkeja
OHFULTPR	36001	247	OH_OHSTATE	project\vine\oh\ohstate	ohfultonpr
OHGUERNSEYJA	36001	163	OH_OHSTATE	project\vine\oh\ohstate	ohguernseyja
OHHARRJA	36001	168	OH_OHSTATE	project\vine\oh\ohstate	ohharrisonja
OHHOLMESJA	36001	172	OH_OHSTATE	project\vine\oh\ohstate	ohholmesja
OHKNOXJA	36001	176	OH_OHSTATE	project\vine\oh\ohstate	ohknoxja
OHLICKINGJA	36001	179	OH_OHSTATE	project\vine\oh\ohstate	ohlickingja
OHLUCASJA	36001	182	OH_OHSTATE	project\vine\oh\ohstate	ohlucasja
OHMAHONINGJA	36001	184	OH_OHSTATE	project\vine\oh\ohstate	ohmahoningja
OHMIAMIJA	36001	189	OH_OHSTATE	project\vine\oh\ohstate	ohmiamija
OHMORRPR	36001	277	OH_OHSTATE	project\vine\oh\ohstate	ohmorrowpr
OHPERRJA	36001	198	OH_OHSTATE	project\vine\oh\ohstate	ohperryja
OHPIKEJA	36001	200	OH_OHSTATE	project\vine\oh\ohstate	ohpikeja
OHROSSJA	36001	205	OH_OHSTATE	project\vine\oh\ohstate	ohrossja
OHSERJ	36001	48	OH_OHSTATE	project\vine\oh\ohstate	ohserj
OHSUMMITJA	36001	40	OH_OHSTATE	project\vine\oh\ohstate	ohsummitja
OHWASHINGTONJA	36001	218	OH_OHSTATE	project\vine\oh\ohstate	ohwashingtonja
TXANGELINA	44900	303	TX_Statewide	project\vine\tx\txstate	txangelina
TXARMSTRONGCT	44900	913	TX_Statewide	project\vine\tx\txstate	txarmstrongct
TXATASCOSACT	44900	914	TX_Statewide	project\vine\tx\txstate	txatascosact
TXBAILEYCT	44900	916	TX_Statewide	project\vine\tx\txstate	txbaileyct
TXBEECT	44900	920	TX_Statewide	project\vine\tx\txstate	txbeect
TXBEXARCT	44900	922	TX_Statewide	project\vine\tx\txstate	txbexarct
TXBROOKSCT	44900	931	TX_Statewide	project\vine\tx\txstate	txbrooksct
TXBURLESONCT	44900	933	TX_Statewide	project\vine\tx\txstate	txburlesonct
TXCALDWELLCT	44900	935	TX_Statewide	project\vine\tx\txstate	txcaldwellct
TXCALHOUNCT	44900	936	TX_Statewide	project\vine\tx\txstate	txcalhounct
TXCARSONCT	44900	940	TX_Statewide	project\vine\tx\txstate	txcarsonct
TXCHAMBERSCT	44900	943	TX_Statewide	project\vine\tx\txstate	txchambersct
TXCHILDRESSCT	44900	903	TX_Statewide	project\vine\tx\txstate	txchildressct
TXCOCHRANCT	44900	946	TX_Statewide	project\vine\tx\txstate	txcochranct
TXCOLLINGSWORTHCT	44900	904	TX_Statewide	project\vine\tx\txstate	txcollingsworthct
TXCOLORADOCT	44900	950	TX_Statewide	project\vine\tx\txstate	txcoloradoct
TXCRANECT	44900	957	TX_Statewide	project\vine\tx\txstate	txcranect
TXDALLAMCT	44900	961	TX_Statewide	project\vine\tx\txstate	txdallamct
TXDAWSONCT	44900	962	TX_Statewide	project\vine\tx\txstate	txdawsonct
TXDEAFSMITHCT	44900	963	TX_Statewide	project\vine\tx\txstate	txdeafsmithct
TXDEWITTCT	44900	965	TX_Statewide	project\vine\tx\txstate	txdewittct
TXDONLEYCT	44900	968	TX_Statewide	project\vine\tx\txstate	txdonleyct
TXFRANKLINCT	44900	982	TX_Statewide	project\vine\tx\txstate	txfranklinct
TXGARZACT	44900	987	TX_Statewide	project\vine\tx\txstate	txgarzact
TXGOLIADCT	44900	990	TX_Statewide	project\vine\tx\txstate	txgoliadct
TXHANSFORDCT	44900	1000	TX_Statewide	project\vine\tx\txstate	txhansfordct
TXHOCKLEYCT	44900	1011	TX_Statewide	project\vine\tx\txstate	txhockleyct
TXJASPER	44900	1022	TX_Statewide	project\vine\tx\txstate	txjasper
TXKERRCT	44900	1033	TX_Statewide	project\vine\tx\txstate	txkerrct
TXKLEBERGCT	44900	1037	TX_Statewide	project\vine\tx\txstate	txklebergct
TXLASALLECT	44900	1039	TX_Statewide	project\vine\tx\txstate	txlasallect
TXLIPSCOMBCT	44900	1048	TX_Statewide	project\vine\tx\txstate	txlipscombct
TXLYNNCT	44900	1053	TX_Statewide	project\vine\tx\txstate	txlynnct
TXMAVERICKCT	44900	1059	TX_Statewide	project\vine\tx\txstate	txmaverickct
TXMCCULLOCHCT	44900	1060	TX_Statewide	project\vine\tx\txstate	txmccullochct
TXMONTGOMERYCT	44900	1070	TX_Statewide	project\vine\tx\txstate	txmontgomeryct
TXNAVARROCT	44900	1075	TX_Statewide	project\vine\tx\txstate	txnavarroct
TXPRESIDIOCT	44900	1088	TX_Statewide	project\vine\tx\txstate	txpresidioct
TXSANPATRICIOCT	44900	1105	TX_Statewide	project\vine\tx\txstate	txsanpatricioct
TXSWISHERCT	44900	1118	TX_Statewide	project\vine\tx\txstate	txswisherct
TXTERRYCT	44900	1122	TX_Statewide	project\vine\tx\txstate	txterryct
TXTRINITYCT	44900	1127	TX_Statewide	project\vine\tx\txstate	txtrinityct
TXWASHINGTONCT	44900	1138	TX_Statewide	project\vine\tx\txstate	txwashingtonct
TXWEBBCT	44900	1139	TX_Statewide	project\vine\tx\txstate	txwebbct
TXWHEELERCT	44900	1141	TX_Statewide	project\vine\tx\txstate	txwheelerct
TXBANDERAJA	44900	310	TX_Statewide	project\vine\tx\txstate	txbanderaja
TXBEEJA	44900	535	TX_Statewide	project\vine\tx\txstate	txbeeja
TXBRAZORIA	44900	318	TX_Statewide	project\vine\tx\txstate	txbrazoria
TXCALDWELLJA	44900	325	TX_Statewide	project\vine\tx\txstate	txcaldwellja
TXCASS	44900	331	TX_Statewide	project\vine\tx\txstate	txcass
TXCOOKEJA	44900	343	TX_Statewide	project\vine\tx\txstate	txcookeja
TXDICKENSJA	44900	354	TX_Statewide	project\vine\tx\txstate	txdickensja
TXEASTLANDJA	44900	358	TX_Statewide	project\vine\tx\txstate	txeastlandja
TXGARZAJA	44900	376	TX_Statewide	project\vine\tx\txstate	txgarzaja
TXGREGG	44900	383	TX_Statewide	project\vine\tx\txstate	txgregg
TXHOCKLEYJA	44900	401	TX_Statewide	project\vine\tx\txstate	txhockleyja
TXJOHNSON	44900	415	TX_Statewide	project\vine\tx\txstate	txjohnson
TXKERR	44900	421	TX_Statewide	project\vine\tx\txstate	txkerr
TXLAMARJA	44900	426	TX_Statewide	project\vine\tx\txstate	txlamarja
TXLIBERTY	44900	432	TX_Statewide	project\vine\tx\txstate	txliberty
TXMARION	44900	440	TX_Statewide	project\vine\tx\txstate	txmarion
TXNUECESJA	44900	461	TX_Statewide	project\vine\tx\txstate	txnuecesja
TXPOTTER	44900	471	TX_Statewide	project\vine\tx\txstate	txpotter
TXREDRIVER	44900	476	TX_Statewide	project\vine\tx\txstate	txredriver
TXROCKWALL	44900	480	TX_Statewide	project\vine\tx\txstate	txrockwall
TXSMITH	44900	493	TX_Statewide	project\vine\tx\txstate	txsmith
TXUPTONJA	44900	511	TX_Statewide	project\vine\tx\txstate	txuptonja
TXYOUNG	44900	532	TX_Statewide	project\vine\tx\txstate	txyoung
TXERATH	44900	363	TX_Statewide	project\vine\tx\txstate	txerath
TXMCMULLENJA	44900	550	TX_Statewide	project\vine\tx\txstate	txmcmullenja
TXMOOREJA	44900	455	TX_Statewide	project\vine\tx\txstate	txmooreja
TXELPASOCT	44900	906	TX_Statewide	project\vine\tx\txstate	
CAHUMBOLDTJA	5099	24	CA_MULTICO	project\vine\ca\multico	cahumboldtja
CAELDORADO_1	105099	79	CA_MULTICO_1	project\vine\ca\multico_1	caeldoradoja_1
CASOLANOJA	5099	156	CA_MULTICO	project\vine\ca\multico	casolanoja
NYHAMILTONJA	33004	420	NY_NYSTATE	project\vine\ny\nystate	nyhamiltonja
NYSUFFOLKJA	33004	451	NY_NYSTATE	project\vine\ny\nystate	nysuffolkja
ILGREENEJA	14004	59	IL_ILSTATE	project\vine\il\ilstate	ilgreeneja
ILLAKEJA	14004	97	IL_ILSTATE	project\vine\il\ilstate	illakeja
ILPERRYJA	14004	143	IL_ILSTATE	project\vine\il\ilstate	ilperryja
ILSCHUYLERJA	14004	165	IL_ILSTATE	project\vine\il\ilstate	ilschuylerja
MNSIBLEYJA	24002	62	MN_MNSTATE	project\vine\mn\mnstate	mnsibleyja
MONEWTONCT	26000	372	MO_STATE	project\vine\mo\mostate	monewtonct
UTD1BOXELDERCT	45000	301	UT_UTSTATE	project\vine\ut\utstate	utd1boxelderct
MOPUTNAMJA	26000	87	MO_STATE	project\vine\mo\mostate	moputnamja
UTD1CACHECT	45000	302	UT_UTSTATE	project\vine\ut\utstate	utd1cachect
UTD1RICHCT	45000	303	UT_UTSTATE	project\vine\ut\utstate	utd1richct
UTD2BOUNTIFULCT	45000	304	UT_UTSTATE	project\vine\ut\utstate	utd2bountifulct
UTD2FARMINGTONCT	45000	305	UT_UTSTATE	project\vine\ut\utstate	utd2farmingtonct
UTD2LAYTONCT	45000	306	UT_UTSTATE	project\vine\ut\utstate	utd2laytonct
UTD2MORGANCT	45000	307	UT_UTSTATE	project\vine\ut\utstate	utd2morganct
UTD2OGDENCT	45000	308	UT_UTSTATE	project\vine\ut\utstate	utd2ogdenct
UTD3SALTLAKECT	45000	309	UT_UTSTATE	project\vine\ut\utstate	utd3saltlakect
UTD3SANDYCT	45000	310	UT_UTSTATE	project\vine\ut\utstate	utd3sandyct
UTD3SILVERSUMMITCT	45000	311	UT_UTSTATE	project\vine\ut\utstate	utd3silversummitct
UTD3TOOELECT	45000	312	UT_UTSTATE	project\vine\ut\utstate	utd3tooelect
UTD3WESTVALLEYCT	45000	313	UT_UTSTATE	project\vine\ut\utstate	utd3westvalleyct
UTD4AMERICANFORKCT	45000	314	UT_UTSTATE	project\vine\ut\utstate	utd4americanforkct
UTD4HEBERCT	45000	315	UT_UTSTATE	project\vine\ut\utstate	utd4heberct
UTD4JUABCT	45000	316	UT_UTSTATE	project\vine\ut\utstate	utd4juabct
UTD4MILLARDCT	45000	317	UT_UTSTATE	project\vine\ut\utstate	utd4millardct
UTD4OREMCT	45000	318	UT_UTSTATE	project\vine\ut\utstate	utd4oremct
UTD4PROVOCT	45000	319	UT_UTSTATE	project\vine\ut\utstate	utd4provoct
UTD4SPANISHFORKCT	45000	320	UT_UTSTATE	project\vine\ut\utstate	utd4spanishforkct
UTD5BEAVERCT	45000	321	UT_UTSTATE	project\vine\ut\utstate	utd5beaverct
UTD5CEDARCT	45000	322	UT_UTSTATE	project\vine\ut\utstate	utd5cedarct
UTD5STGEORGECT	45000	323	UT_UTSTATE	project\vine\ut\utstate	utd5stgeorgect
UTD6JUNCTIONCT	45000	324	UT_UTSTATE	project\vine\ut\utstate	utd6junctionct
UTD6KANABCT	45000	325	UT_UTSTATE	project\vine\ut\utstate	utd6kanabct
UTD6LOACT	45000	326	UT_UTSTATE	project\vine\ut\utstate	utd6loact
UTD6MANTICT	45000	327	UT_UTSTATE	project\vine\ut\utstate	utd6mantict
UTD6PANGUITCHCT	45000	328	UT_UTSTATE	project\vine\ut\utstate	utd6panguitchct
UTD6SEVIERCT	45000	329	UT_UTSTATE	project\vine\ut\utstate	utd6sevierct
UTD7CASTLEDALECT	45000	330	UT_UTSTATE	project\vine\ut\utstate	utd7castledalect
UTD7MOABCT	45000	331	UT_UTSTATE	project\vine\ut\utstate	utd7moabct
UTD7MONTICELLOCT	45000	332	UT_UTSTATE	project\vine\ut\utstate	utd7monticelloct
UTD7PRICECT	45000	333	UT_UTSTATE	project\vine\ut\utstate	utd7pricect
UTD8DUCHESNECT	45000	334	UT_UTSTATE	project\vine\ut\utstate	utd8duchesnect
UTD8MANILACT	45000	335	UT_UTSTATE	project\vine\ut\utstate	utd8manilact
UTD8ROOSEVELTCT	45000	336	UT_UTSTATE	project\vine\ut\utstate	utd8rooseveltct
UTD8VERNALCT	45000	337	UT_UTSTATE	project\vine\ut\utstate	utd8vernalct
ILFULTONJA	14004	55	IL_ILSTATE	project\vine\il\ilstate	ilfultonja
ARCRAWFORDPR	4999	40	AR_ARSTATE	project\vine\ar\arstate	arcrawfordpr
NVWASHOEJA	29017	1	NV_WASHOE	project\vine\nv\nvwashoeja	
CASANTACRUZJA	5099	27	CA_MULTICO	project\vine\ca\multico	casantacruzja
NEBOXBUTTEJA	28000	69	NE_NESTATE	project\vine\ne\nestate	neboxbutteja
MADOC	20000	1	MA_MADOC	project\vine\ma\madoc	
MIKEWEENAWPA	23005	142	MI_MISTATE	project\vine\mi\mistate	mikeweenawpa
MILIVINGSTONPA	23005	147	MI_MISTATE	project\vine\mi\mistate	milivingstonpa
MITUSCOLAPA	23005	178	MI_MISTATE	project\vine\mi\mistate	mituscolapa
MIWASHTENAWPA	23005	180	MI_MISTATE	project\vine\mi\mistate	miwashtenawpa
MIOCEANAJA	23005	64	MI_MISTATE	project\vine\mi\mistate	mioceanaja
MIBAYPR	23005	109	MI_MISTATE	project\vine\mi\mistate	mibaypa
MIEMMETPA	23005	124	MI_MISTATE	project\vine\mi\mistate	miemmetpa
MICHEBOYGANJA	23005	16	MI_MISTATE	project\vine\mi\mistate	micheboyganja
MDBALTCITYDIST	21999	51	MD_MDSTATE	project\vine\md\mdstate	
MDTALBOTDIST	21999	69	MD_MDSTATE	project\vine\md\mdstate	
MDCHARLESJA	21999	9	MD_MDSTATE	project\vine\md\mdstate	mdcharlesja
MDGARRETTCIRC	21999	36	MD_MDSTATE	project\vine\md\mdstate	
LAJEFFERSON	19002	1	LA_JEFFERSON	project\vine\la\lajefferson	
KYMADISONJA	18000	76	KY_KYSTATE	project\vine\ky\kystate	kymadisonja
KYBELLJA	18000	7	KY_KYSTATE	project\vine\ky\kystate	kybellja
KYCARTERJA	18000	22	KY_KYSTATE	project\vine\ky\kystate	kycarterja
KYESTILLJA	18000	33	KY_KYSTATE	project\vine\ky\kystate	kyestillja
KYHANCOCKJA	18000	46	KY_KYSTATE	project\vine\ky\kystate	kyhancockja
KYBREATHITTJA	18000	13	KY_KYSTATE	project\vine\ky\kystate	kybreathittja
KYCAMPBELLJU	18000	241	KY_KYSTATE	project\vine\ky\kystate	kycampbellju
NESALINEJA	28000	563	NE_NESTATE	project\vine\ne\nestate	nesalineja
NEPHELPSJA	28000	517	NE_NESTATE	project\vine\ne\nestate	nephelpsja
NEKEARNEYJA	28000	378	NE_NESTATE	project\vine\ne\nestate	nekearneyja
NEHALLJA	28000	324	NE_NESTATE	project\vine\ne\nestate	nehallja
NECEDARJA	28000	123	NE_NESTATE	project\vine\ne\nestate	necedarja
ARPOPEPR	4999	150	AR_ARSTATE	project\vine\ar\arstate	arpopepr
ARWASHINGTONPR	4999	186	AR_ARSTATE	project\vine\ar\arstate	arwashingtonpr
ILCARROLLJA	14004	15	IL_ILSTATE	project\vine\il\ilstate	ilcarrollja
ILDOUGLASJA	14004	39	IL_ILSTATE	project\vine\il\ilstate	ildouglasja
ILLOGANJA	14004	105	IL_ILSTATE	project\vine\il\ilstate	illoganja
ILMASONJA	14004	117	IL_ILSTATE	project\vine\il\ilstate	ilmasonja
ILMORGANJA	14004	135	IL_ILSTATE	project\vine\il\ilstate	ilmorganja
ILSTCLAIRJA	14004	171	IL_ILSTATE	project\vine\il\ilstate	ilstclairja
ILTAZEWELLJA	14004	177	IL_ILSTATE	project\vine\il\ilstate	iltazewellja
ILCOLESCT	14004	30	IL_ILSTATE	project\vine\il\ilstate	ilcolesct
ILMONTGOMERYCT	14004	134	IL_ILSTATE	project\vine\il\ilstate	ilmontgomeryct
ILSANGAMONCT	14004	164	IL_ILSTATE	project\vine\il\ilstate	ilsangamonct
ILSTARKCT	14004	174	IL_ILSTATE	project\vine\il\ilstate	ilstarkct
ILTRIDET	14004	257	IL_ILSTATE	project\vine\il\ilstate	iltridet
ORYAMHILLJA	38000	33	OR_ORSTATE	project\vine\or\orstate	oryamhillja
OROYAJU	38000	950	OR_ORSTATE	project\vine\or\orstate	oroyaju
MICALHOUNJA	23005	13	MI_MISTATE	project\vine\mi\mistate	micalhounja
MIMACOMBJA	23005	50	MI_MISTATE	project\vine\mi\mistate	mimacombja
MIOSCEOLAPA	23005	843	MI_MISTATE	project\vine\mi\mistate	miosceolapa
TARRANT	44001	1	TX_TARRANT	tx\tarrant	
AZYAVAPAIJA	3007	1	AZ_YAVAPAI	project\vine\az\azyavapaija	
COLLIER	10004	1	FL_COLLIER	fl\collier	
LACADDO	19001	2	LA_CADDO	la\caddo	
MOBOONEJA	26000	10	MO_STATE	project\vine\mo\mostate	mobooneja
MOCHRISTIANJA	26000	22	MO_STATE	project\vine\mo\mostate	mochristianja
MODUNKLINJA	26000	35	MO_STATE	project\vine\mo\mostate	modunklinja
MOJOHNSONJA	26000	52	MO_STATE	project\vine\mo\mostate	mojohnsonja
MOMCDONALDJA	26000	65	MO_STATE	project\vine\mo\mostate	momcdonaldja
MORANDOLPHJA	26000	89	MO_STATE	project\vine\mo\mostate	morandolphja
MOSTODDARDJA	26000	109	MO_STATE	project\vine\mo\mostate	mostoddardja
MOWAYNEJA	26000	116	MO_STATE	project\vine\mo\mostate	mowayneja
MOANDREWCT	26000	301	MO_STATE	project\vine\mo\mostate	moandrewct
MOCARTERCT	26000	317	MO_STATE	project\vine\mo\mostate	mocarterct
MODUNKLINCT	26000	334	MO_STATE	project\vine\mo\mostate	modunklinct
MOHOWELLCT	26000	345	MO_STATE	project\vine\mo\mostate	mohowellct
MOLINCOLNCT	26000	356	MO_STATE	project\vine\mo\mostate	molincolnct
MOPUTNAMCT	26000	385	MO_STATE	project\vine\mo\mostate	moputnamct
MOSTCHARLESCT	26000	397	MO_STATE	project\vine\mo\mostate	mostcharlesct
MOVERNONCT	26000	406	MO_STATE	project\vine\mo\mostate	movernonct
MOSULLIVANJA	26000	120	MO_STATE	project\vine\mo\mostate	mosullivanja
KYLAURELJU	18000	242	KY_KYSTATE	project\vine\ky\kystate	kylaurelju
LACAMERONJA	19000	12	LA_LASTATE	project\vine\la\lastate	lacameronja
LAVERNONJA	19000	58	LA_LASTATE	project\vine\la\lastate	lavernonja
KINGC2C	48500	12	WA_KING_C2C	project\gov\c2c\wa\kingc2c	
LAACADIACT	19000	301	LA_LASTATE	project\vine\la\lastate	laacadiact
KYEVERCOM	18000	800	KY_KYSTATE	project\vine\ky\kystate	kyevercom
TXNAVARROJA	44900	458	TX_Statewide	project\vine\tx\txstate	txnavarroja
ILHENRYCT	14004	72	IL_ILSTATE	project\vine\il\ilstate	ilhenryct
LATENSASJA	19000	54	LA_LASTATE	project\vine\la\lastate	latensasja
LALIVINGSTONJA	19000	32	LA_LASTATE	project\vine\la\lastate	lalivingstonja
LABEAUREGARDJA	19000	6	LA_LASTATE	project\vine\la\lastate	labeauregardja
MOLIVINGSTONJA	26000	60	MO_STATE	project\vine\mo\mostate	molivingstonja
MOWRIGHTJA	26000	119	MO_STATE	project\vine\mo\mostate	mowrightja
DCDOC	9900	1	DC_DCDOC	project\vine\dc\dcdoc	
LAWESTBATONROUGEJA	19000	61	LA_LASTATE	project\vine\la\lastate	lawestbatonrougeja
NEW640XX	34003	1310	NC_STATE	project\vine\nc\ncstate	
LACOURTS	19000	800	LA_LASTATE	project\vine\la\lastate	lacourts
UTCOURTS	45000	338	UT_UTSTATE	project\vine\ut\utstate	utcourts
NORTHHAMPTON650XX	34003	1311	NC_STATE	project\vine\nc\ncstate	
ONSLOW660XX	34003	1312	NC_STATE	project\vine\nc\ncstate	
ORANGE670XX	34003	1313	NC_STATE	project\vine\nc\ncstate	
PAMLICO680XX	34003	1314	NC_STATE	project\vine\nc\ncstate	
PASQUOTANK690XX	34003	1315	NC_STATE	project\vine\nc\ncstate	
PENDER700XX	34003	1316	NC_STATE	project\vine\nc\ncstate	
NCPERQUI	34003	1317	NC_STATE	project\vine\nc\ncstate	
PERSON720XX	34003	1318	NC_STATE	project\vine\nc\ncstate	
PITT730XX	34003	1319	NC_STATE	project\vine\nc\ncstate	
POLK740XX	34003	1320	NC_STATE	project\vine\nc\ncstate	
RANDOLPH750XX	34003	1321	NC_STATE	project\vine\nc\ncstate	
RICHMOND760XX	34003	1322	NC_STATE	project\vine\nc\ncstate	
ROBESON770XX	34003	1323	NC_STATE	project\vine\nc\ncstate	
ROCKINGHAM780XX	34003	1324	NC_STATE	project\vine\nc\ncstate	
ROWAN790XX	34003	1325	NC_STATE	project\vine\nc\ncstate	
RUTHERFORD800XX	34003	1326	NC_STATE	project\vine\nc\ncstate	
SAMPSON810XX	34003	1327	NC_STATE	project\vine\nc\ncstate	
SCOTLAND820XX	34003	1328	NC_STATE	project\vine\nc\ncstate	
STANLY830XX	34003	1329	NC_STATE	project\vine\nc\ncstate	
STOKES840XX	34003	1330	NC_STATE	project\vine\nc\ncstate	
SURRY850XX	34003	1331	NC_STATE	project\vine\nc\ncstate	
SWAIN860XX	34003	1332	NC_STATE	project\vine\nc\ncstate	
TRANSYLVANIA870XX	34003	1333	NC_STATE	project\vine\nc\ncstate	
TYRRELL880XX	34003	1334	NC_STATE	project\vine\nc\ncstate	
UNION890XX	34003	1335	NC_STATE	project\vine\nc\ncstate	
VANCE900XX	34003	1336	NC_STATE	project\vine\nc\ncstate	
WAKE910XX	34003	1337	NC_STATE	project\vine\nc\ncstate	
WARREN920XX	34003	1338	NC_STATE	project\vine\nc\ncstate	
WASHINGTON930XX	34003	1339	NC_STATE	project\vine\nc\ncstate	
WATAUGA940XX	34003	1340	NC_STATE	project\vine\nc\ncstate	
WAYNE950XX	34003	1341	NC_STATE	project\vine\nc\ncstate	
WILKES960XX	34003	1342	NC_STATE	project\vine\nc\ncstate	
WILSON970XX	34003	1343	NC_STATE	project\vine\nc\ncstate	
YADKIN980XX	34003	1344	NC_STATE	project\vine\nc\ncstate	
YANCEY990XX	34003	1345	NC_STATE	project\vine\nc\ncstate	
NCALAMANCEXX	34003	1246	NC_STATE	project\vine\nc\ncstate	
ALEXANDER010XX	34003	1247	NC_STATE	project\vine\nc\ncstate	
ALLEGHANY020XX	34003	1248	NC_STATE	project\vine\nc\ncstate	
ANSON030XX	34003	1249	NC_STATE	project\vine\nc\ncstate	
ASHE040XX	34003	1250	NC_STATE	project\vine\nc\ncstate	
AVERY050XX	34003	1251	NC_STATE	project\vine\nc\ncstate	
BEAUFORT060XX	34003	1252	NC_STATE	project\vine\nc\ncstate	
BERTIE070XX	34003	1253	NC_STATE	project\vine\nc\ncstate	
BLADEN080XX	34003	1254	NC_STATE	project\vine\nc\ncstate	
BRUNSWICK090XX	34003	1255	NC_STATE	project\vine\nc\ncstate	
BUNCOMBE100XX	34003	1256	NC_STATE	project\vine\nc\ncstate	
BURKE110XX	34003	1257	NC_STATE	project\vine\nc\ncstate	
CABARRUS120XX	34003	1258	NC_STATE	project\vine\nc\ncstate	
CALDWELL130XX	34003	1259	NC_STATE	project\vine\nc\ncstate	
CAMDEN140XX	34003	1260	NC_STATE	project\vine\nc\ncstate	
CARTERET150XX	34003	1261	NC_STATE	project\vine\nc\ncstate	
CASWELL160XX	34003	1262	NC_STATE	project\vine\nc\ncstate	
CATAWBA170XX	34003	1263	NC_STATE	project\vine\nc\ncstate	
CHATHAM180XX	34003	1264	NC_STATE	project\vine\nc\ncstate	
CHEROKEE190XX	34003	1265	NC_STATE	project\vine\nc\ncstate	
CHOWAN200XX	34003	1266	NC_STATE	project\vine\nc\ncstate	
CLAY210XX	34003	1267	NC_STATE	project\vine\nc\ncstate	
CLEVELAND220XX	34003	1268	NC_STATE	project\vine\nc\ncstate	
COLUMBUS230XX	34003	1269	NC_STATE	project\vine\nc\ncstate	
CRAVEN240XX	34003	1270	NC_STATE	project\vine\nc\ncstate	
CUMBERLAND250XX	34003	1271	NC_STATE	project\vine\nc\ncstate	
CURRITUCK260XX	34003	1272	NC_STATE	project\vine\nc\ncstate	
DARE270XX	34003	1273	NC_STATE	project\vine\nc\ncstate	
DAVIDSON280XX	34003	1274	NC_STATE	project\vine\nc\ncstate	
DAVIE290XX	34003	1275	NC_STATE	project\vine\nc\ncstate	
DUPLIN300XX	34003	1276	NC_STATE	project\vine\nc\ncstate	
DURHAM310XX	34003	1277	NC_STATE	project\vine\nc\ncstate	
EDGECOMBE320XX	34003	1278	NC_STATE	project\vine\nc\ncstate	
FORSYTH330XX	34003	1279	NC_STATE	project\vine\nc\ncstate	
FRANKLIN340XX	34003	1280	NC_STATE	project\vine\nc\ncstate	
GASTON350XX	34003	1281	NC_STATE	project\vine\nc\ncstate	
NCGATES	34003	1282	NC_STATE	project\vine\nc\ncstate	
GRAHAM370XX	34003	1283	NC_STATE	project\vine\nc\ncstate	
GRANVILLE380XX	34003	1284	NC_STATE	project\vine\nc\ncstate	
GREENE390XX	34003	1285	NC_STATE	project\vine\nc\ncstate	
GUILFORD400XX	34003	1286	NC_STATE	project\vine\nc\ncstate	
HALIFAX410XX	34003	1287	NC_STATE	project\vine\nc\ncstate	
HARNETT420XX	34003	1288	NC_STATE	project\vine\nc\ncstate	
HAYWOOD430XX	34003	1289	NC_STATE	project\vine\nc\ncstate	
HENDERSON440XX	34003	1290	NC_STATE	project\vine\nc\ncstate	
HERTFORD450XX	34003	1291	NC_STATE	project\vine\nc\ncstate	
HOKE460XX	34003	1292	NC_STATE	project\vine\nc\ncstate	
HYDE470XX	34003	1293	NC_STATE	project\vine\nc\ncstate	
IREDELL480XX	34003	1294	NC_STATE	project\vine\nc\ncstate	
JACKSON490XX	34003	1295	NC_STATE	project\vine\nc\ncstate	
JOHNSTON500XX	34003	1296	NC_STATE	project\vine\nc\ncstate	
JONES510XX	34003	1297	NC_STATE	project\vine\nc\ncstate	
LEE520XX	34003	1298	NC_STATE	project\vine\nc\ncstate	
LENOIR530XX	34003	1299	NC_STATE	project\vine\nc\ncstate	
LINCOLN540XX	34003	1300	NC_STATE	project\vine\nc\ncstate	
MACON560XX	34003	1301	NC_STATE	project\vine\nc\ncstate	
NCMARTIN	34003	1303	NC_STATE	project\vine\nc\ncstate	
MECKLENBURG590XX	34003	1304	NC_STATE	project\vine\nc\ncstate	
MCDOWELL550XX	34003	1305	NC_STATE	project\vine\nc\ncstate	
MITCHELL600XX	34003	1306	NC_STATE	project\vine\nc\ncstate	
MONTGOMERY610XX	34003	1307	NC_STATE	project\vine\nc\ncstate	
MOORE620XX	34003	1308	NC_STATE	project\vine\nc\ncstate	
NASH630XX	34003	1309	NC_STATE	project\vine\nc\ncstate	
FLVOLUSIAJA	10000	64	FLState	project\vine\fl\flstate	flvolusiaja
TXBELLJA	44900	313	TX_Statewide	project\vine\tx\txstate	txbellja
TXCROCKETTJA	44900	346	TX_Statewide	project\vine\tx\txstate	txcrockettja
TXHANSFORDJA	44900	389	TX_Statewide	project\vine\tx\txstate	txhansfordja
LASTMARTINJA	19000	50	LA_LASTATE	project\vine\la\lastate	lastmartinja
LACALDWELLCT	19000	311	LA_LASTATE	project\vine\la\lastate	lacaldwellct
LAEASTCARROLLCT	19000	318	LA_LASTATE	project\vine\la\lastate	laeastcarrollct
LAIBERIACT	19000	323	LA_LASTATE	project\vine\la\lastate	laiberiact
LAMADISONCT	19000	333	LA_LASTATE	project\vine\la\lastate	lamadisonct
LASTCHARLESCT	19000	345	LA_LASTATE	project\vine\la\lastate	lastcharlesct
LASTMARTINCT	19000	350	LA_LASTATE	project\vine\la\lastate	lastmartinct
LATANGIPAHOACT	19000	353	LA_LASTATE	project\vine\la\lastate	latangipahoact
LAWASHINGTONCT	19000	359	LA_LASTATE	project\vine\la\lastate	lawashingtonct
NELANCASTERJUVEJA	28000	781	NE_NESTATE	project\vine\ne\nestate	nelancasterjuveja
NELANCASTERJUVEJA_1	128000	781	NE_STATE_1	project\vine\ne\nestate_1	nelancasterjuveja_1
NESARPYJUVEJA_1	128000	782	NE_STATE_1	project\vine\ne\nestate_1	nesarpyjuveja_1
MIGOGEJA	23005	27	MI_MISTATE	project\vine\mi\mistate	migogebicja
MILENAWEEPR	23005	146	MI_MISTATE	project\vine\mi\mistate	milenaweepa
MILUCEJA	23005	48	MI_MISTATE	project\vine\mi\mistate	miluceja
MIMACOMBPA	23005	150	MI_MISTATE	project\vine\mi\mistate	mimacombpa
MIMONTCALMJA	23005	59	MI_MISTATE	project\vine\mi\mistate	mimontcalmja
MIMONTMORENCYPR	23005	160	MI_MISTATE	project\vine\mi\mistate	mimontmorencypa
MIOAKLPR	23005	163	MI_MISTATE	project\vine\mi\mistate	mioaklandpa
MIOSCOJA	23005	67	MI_MISTATE	project\vine\mi\mistate	mioscodaja
MISCHOOLCRAFTPR	23005	841	MI_MISTATE	project\vine\mi\mistate	mischoolcraftpa
MIVANBURENPA	23005	179	MI_MISTATE	project\vine\mi\mistate	mivanburenpa
MIWEXFORDPR	23005	182	MI_MISTATE	project\vine\mi\mistate	miwexfordpr
ILRANDOLPHCT	14004	156	IL_ILSTATE	project\vine\il\ilstate	ilrandolphct
NJCAMDENJA	31000	4	NJ_STATE	project\vine\nj\njstate	njcamdenja
MIKALKASKAPR	23005	834	MI_MISTATE	project\vine\mi\mistate	mikalkaskapa
NJCAPEMAYJA	31000	5	NJ_STATE	project\vine\nj\njstate	njcapemayja
NJCUMBERLANDJA	31000	6	NJ_STATE	project\vine\nj\njstate	njcumberlandja
NJESSEXJA	31000	7	NJ_STATE	project\vine\nj\njstate	njessexja
NJGLOUCESTERJA	31000	8	NJ_STATE	project\vine\nj\njstate	njgloucesterja
NJHUDSONJA	31000	9	NJ_STATE	project\vine\nj\njstate	njhudsonja
NJHUNTERDONJA	31000	10	NJ_STATE	project\vine\nj\njstate	njhunterdonja
NJMERCERJA	31000	11	NJ_STATE	project\vine\nj\njstate	njmercerja
NJMIDDLESEXJA	31000	12	NJ_STATE	project\vine\nj\njstate	njmiddlesexja
NJMONMOUTHJA	31000	13	NJ_STATE	project\vine\nj\njstate	njmonmouthja
NJMORRISJA1	31000	14	NJ_STATE	project\vine\nj\njstate	njmorrisja
NJOCEANJA	31000	15	NJ_STATE	project\vine\nj\njstate	njoceanja
NJPASSAICJA	31000	16	NJ_STATE	project\vine\nj\njstate	njpassaicja
NJSALEMJA	31000	17	NJ_STATE	project\vine\nj\njstate	njsalemja
NJSOMERSETJA	31000	18	NJ_STATE	project\vine\nj\njstate	njsomersetja
NJSUSSEXJA	31000	19	NJ_STATE	project\vine\nj\njstate	njsussexja
NJUNIONJA1	31000	20	NJ_STATE	project\vine\nj\njstate	njunionja
NJWARRENJA	31000	21	NJ_STATE	project\vine\nj\njstate	njwarrenja
UTD4SPANISHFORKCT_TTS	96	320	TTS DEMO	project\vine\ttsdemo	utd4spanishforkct
UTD5BEAVERCT_TTS	96	321	TTS DEMO	project\vine\ttsdemo	utd5beaverct
UTD5CEDARCT_TTS	96	322	TTS DEMO	project\vine\ttsdemo	utd5cedarct
UTD5STGEORGECT_TTS	96	323	TTS DEMO	project\vine\ttsdemo	utd5stgeorgect
UTD6JUNCTIONCT_TTS	96	324	TTS DEMO	project\vine\ttsdemo	utd6junctionct
UTD6KANABCT_TTS	96	325	TTS DEMO	project\vine\ttsdemo	utd6kanabct
UTD6LOACT_TTS	96	326	TTS DEMO	project\vine\ttsdemo	utd6loact
UTD6MANTICT_TTS	96	327	TTS DEMO	project\vine\ttsdemo	utd6mantict
UTD6PANGUITCHCT_TTS	96	328	TTS DEMO	project\vine\ttsdemo	utd6panguitchct
UTD6SEVIERCT_TTS	96	329	TTS DEMO	project\vine\ttsdemo	utd6sevierct
UTD7CASTLEDALECT_TTS	96	330	TTS DEMO	project\vine\ttsdemo	utd7castledalect
UTD7MOABCT_TTS	96	331	TTS DEMO	project\vine\ttsdemo	utd7moabct
UTD7MONTICELLOCT_TTS	96	332	TTS DEMO	project\vine\ttsdemo	utd7monticelloct
UTD7PRICECT_TTS	96	333	TTS DEMO	project\vine\ttsdemo	utd7pricect
UTD8DUCHESNECT_TTS	96	334	TTS DEMO	project\vine\ttsdemo	utd8duchesnect
UTD8MANILACT_TTS	96	335	TTS DEMO	project\vine\ttsdemo	utd8manilact
UTD8ROOSEVELTCT_TTS	96	336	TTS DEMO	project\vine\ttsdemo	utd8rooseveltct
UTD8VERNALCT_TTS	96	337	TTS DEMO	project\vine\ttsdemo	utd8vernalct
UTCOURTS_TTS	96	338	TTS DEMO	project\vine\ttsdemo	utcourts
UTDOC_TTS	96	900	TTS DEMO	project\vine\ttsdemo	utdoc
ILRANDOLPHJA	14004	155	IL_ILSTATE	project\vine\il\ilstate	ilrandolphja
MIANTRPR	23005	105	MI_MISTATE	project\vine\mi\mistate	miantrimpa
MIBARRYPR	23005	108	MI_MISTATE	project\vine\mi\mistate	mibarrypa
MICASSPA	23005	114	MI_MISTATE	project\vine\mi\mistate	micasspa
MICHEBOYGANPA	23005	116	MI_MISTATE	project\vine\mi\mistate	micheboyganpa
MIDICKINSONPA	23005	122	MI_MISTATE	project\vine\mi\mistate	midickinsonpa
MIGENESEEJA	23005	25	MI_MISTATE	project\vine\mi\mistate	migeneseeja
MIGLADJA	23005	26	MI_MISTATE	project\vine\mi\mistate	migladwinja
NCAOC	34003	800	NC_STATE	project\vine\nc\ncstate	ncaoc
UTBEAVERJA_DEMO	200	1	STDVINEDEMO	project\vine\sv\stdvinedemo	utbeaverja
UTBOXELDERJA_DEMO	200	2	STDVINEDEMO	project\vine\sv\stdvinedemo	utboxelderja
UTCACHEJA_DEMO	200	3	STDVINEDEMO	project\vine\sv\stdvinedemo	utcacheja
UTCARBONJA_DEMO	200	4	STDVINEDEMO	project\vine\sv\stdvinedemo	utcarbonja
UTDAGGETTJA_DEMO	200	5	STDVINEDEMO	project\vine\sv\stdvinedemo	utdaggettja
UTDAVISJA_DEMO	200	6	STDVINEDEMO	project\vine\sv\stdvinedemo	utdavisja
UTDUCHESNEJA_DEMO	200	7	STDVINEDEMO	project\vine\sv\stdvinedemo	utduchesneja
UTEMERYJA_DEMO	200	8	STDVINEDEMO	project\vine\sv\stdvinedemo	utemeryja
UTGARFIELDJA_DEMO	200	9	STDVINEDEMO	project\vine\sv\stdvinedemo	utgarfieldja
UTGRANDJA_DEMO	200	10	STDVINEDEMO	project\vine\sv\stdvinedemo	utgrandja
UTIRONJA_DEMO	200	11	STDVINEDEMO	project\vine\sv\stdvinedemo	utironja
UTJUABJA_DEMO	200	12	STDVINEDEMO	project\vine\sv\stdvinedemo	utjuabja
UTKANEJA_DEMO	200	13	STDVINEDEMO	project\vine\sv\stdvinedemo	utkaneja
UTMILLARDJA_DEMO	200	14	STDVINEDEMO	project\vine\sv\stdvinedemo	utmillardja
UTRICHJA_DEMO	200	15	STDVINEDEMO	project\vine\sv\stdvinedemo	utrichja
UTSALTLAKEJA_DEMO	200	16	STDVINEDEMO	project\vine\sv\stdvinedemo	utsaltlakeja
UTSANJUANJA_DEMO	200	17	STDVINEDEMO	project\vine\sv\stdvinedemo	utsanjuanja
UTSANPETEJA_DEMO	200	18	STDVINEDEMO	project\vine\sv\stdvinedemo	utsanpeteja
UTSEVIERJA_DEMO	200	19	STDVINEDEMO	project\vine\sv\stdvinedemo	utsevierja
UTSUMMITJA_DEMO	200	20	STDVINEDEMO	project\vine\sv\stdvinedemo	utsummitja
UTTOOELEJA_DEMO	200	21	STDVINEDEMO	project\vine\sv\stdvinedemo	uttooeleja
UTUINTAHJA_DEMO	200	22	STDVINEDEMO	project\vine\sv\stdvinedemo	utuintahja
UTUTAHJA_DEMO	200	23	STDVINEDEMO	project\vine\sv\stdvinedemo	ututahja
UTWASATCHJA_DEMO	200	24	STDVINEDEMO	project\vine\sv\stdvinedemo	utwasatchja
UTWASHINGTONJA_DEMO	200	25	STDVINEDEMO	project\vine\sv\stdvinedemo	utwashingtonja
UTWEBERJA_DEMO	200	26	STDVINEDEMO	project\vine\sv\stdvinedemo	utweberja
UTD1BOXELDERCT_DEMO	200	301	STDVINEDEMO	project\vine\sv\stdvinedemo	utd1boxelderct
UTD1CACHECT_DEMO	200	302	STDVINEDEMO	project\vine\sv\stdvinedemo	utd1cachect
UTD1RICHCT_DEMO	200	303	STDVINEDEMO	project\vine\sv\stdvinedemo	utd1richct
UTD2BOUNTIFULCT_DEMO	200	304	STDVINEDEMO	project\vine\sv\stdvinedemo	utd2bountifulct
UTD2FARMINGTONCT_DEMO	200	305	STDVINEDEMO	project\vine\sv\stdvinedemo	utd2farmingtonct
UTD2LAYTONCT_DEMO	200	306	STDVINEDEMO	project\vine\sv\stdvinedemo	utd2laytonct
UTD2MORGANCT_DEMO	200	307	STDVINEDEMO	project\vine\sv\stdvinedemo	utd2morganct
UTD2OGDENCT_DEMO	200	308	STDVINEDEMO	project\vine\sv\stdvinedemo	utd2ogdenct
UTD3SALTLAKECT_DEMO	200	309	STDVINEDEMO	project\vine\sv\stdvinedemo	utd3saltlakect
UTD3SANDYCT_DEMO	200	310	STDVINEDEMO	project\vine\sv\stdvinedemo	utd3sandyct
UTD3SILVERSUMMITCT_DEMO	200	311	STDVINEDEMO	project\vine\sv\stdvinedemo	utd3silversummitct
UTD3TOOELECT_DEMO	200	312	STDVINEDEMO	project\vine\sv\stdvinedemo	utd3tooelect
UTD3WESTVALLEYCT_DEMO	200	313	STDVINEDEMO	project\vine\sv\stdvinedemo	utd3westvalleyct
UTD4AMERICANFORKCT_DEMO	200	314	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4americanforkct
UTD4HEBERCT_DEMO	200	315	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4heberct
UTD4JUABCT_DEMO	200	316	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4juabct
UTD4MILLARDCT_DEMO	200	317	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4millardct
UTD4OREMCT_DEMO	200	318	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4oremct
UTD4PROVOCT_DEMO	200	319	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4provoct
UTD4SPANISHFORKCT_DEMO	200	320	STDVINEDEMO	project\vine\sv\stdvinedemo	utd4spanishforkct
UTD5BEAVERCT_DEMO	200	321	STDVINEDEMO	project\vine\sv\stdvinedemo	utd5beaverct
UTD5CEDERCT_DEMO	200	322	STDVINEDEMO	project\vine\sv\stdvinedemo	utd5cederct
UTD5STGEORGECT_DEMO	200	323	STDVINEDEMO	project\vine\sv\stdvinedemo	utd5stgeorgect
UTD6FUNCTIONCT_DEMO	200	324	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6functionct
UTD6KANABCT_DEMO	200	325	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6kanabct
UTD6LOACT_DEMO	200	326	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6loact
UTD6MANTICT_DEMO	200	327	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6mantict
UTD6PANGUITCHCT_DEMO	200	328	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6panguitchct
UTD6SEVIERCT_DEMO	200	329	STDVINEDEMO	project\vine\sv\stdvinedemo	utd6sevierct
UTD7CASTLEDALECT_DEMO	200	330	STDVINEDEMO	project\vine\sv\stdvinedemo	utd7castledalect
UTD7MOABCT_DEMO	200	331	STDVINEDEMO	project\vine\sv\stdvinedemo	utd7moabct
UTD7MONTICELLOCT_DEMO	200	332	STDVINEDEMO	project\vine\sv\stdvinedemo	utd7monticelloct
UTD7PRICECT_DEMO	200	333	STDVINEDEMO	project\vine\sv\stdvinedemo	utd7pricect
UTD8DUCHESNECT_DEMO	200	334	STDVINEDEMO	project\vine\sv\stdvinedemo	utd8duchesnect
UTD8MANILACT_DEMO	200	335	STDVINEDEMO	project\vine\sv\stdvinedemo	utd8manilact
UTD8ROOSEVELTCT_DEMO	200	336	STDVINEDEMO	project\vine\sv\stdvinedemo	utd8rooseveltct
UTD8VERNALCT_DEMO	200	337	STDVINEDEMO	project\vine\sv\stdvinedemo	utd8vernalct
UTDOC_DEMO	200	900	STDVINEDEMO	project\vine\sv\stdvinedemo	utdoc
KYDJJFALSE	18000	299	KY_KYSTATE	project\vine\ky\kystate	kydjjfalse
ILMACONCT	14004	108	IL_ILSTATE	project\vine\il\ilstate	ilmaconct
KYARHMH	18000	170	KY_KYSTATE	project\vine\ky\kystate	kyarhmh
NJATLANTICJA1	31000	1	NJ_STATE	project\vine\nj\njstate	njatlanticja
NJBERGENJA	31000	2	NJ_STATE	project\vine\nj\njstate	njbergenja
NJBURLINGTONJA	31000	3	NJ_STATE	project\vine\nj\njstate	njburlingtonja
ILCOOKPR	14003	3	IL_COOK	project\vine\il\ilcook	ilcookpr
LATERREBONNECT	19000	355	LA_LASTATE	project\vine\la\lastate	laterrebonnect
LAEVANGELINECT	19000	320	LA_LASTATE	project\vine\la\lastate	laevangelinect
LALAFOURCHECT	19000	330	LA_LASTATE	project\vine\la\lastate	lalafourchect
LAEASTFELICIANACT	19000	319	LA_LASTATE	project\vine\la\lastate	laeastfelicianact
LASTJAMESCT	19000	347	LA_LASTATE	project\vine\la\lastate	lastjamesct
LASTTAMMANYCT	19000	352	LA_LASTATE	project\vine\la\lastate	lasttammanyct
LALASALLEJA	19000	28	LA_LASTATE	project\vine\la\lastate	lalasalleja
UTBEAVERJA_TTS	96	1	TTS DEMO	project\vine\ttsdemo	utbeaverja
UTBOXELDERJA_TTS	96	2	TTS DEMO	project\vine\ttsdemo	utboxelderja
UTCACHEJA_TTS	96	3	TTS DEMO	project\vine\ttsdemo	utcacheja
UTCARBONJA_TTS	96	4	TTS DEMO	project\vine\ttsdemo	utcarbonja
UTDAGGETTJA_TTS	96	5	TTS DEMO	project\vine\ttsdemo	utdaggettja
UTDAVISJA_TTS	96	6	TTS DEMO	project\vine\ttsdemo	utdavisja
UTDUCHESNEJA_TTS	96	7	TTS DEMO	project\vine\ttsdemo	utduchesneja
UTEMERYJA_TTS	96	8	TTS DEMO	project\vine\ttsdemo	utemeryja
UTGARFIELDJA_TTS	96	9	TTS DEMO	project\vine\ttsdemo	utgarfieldja
UTGRANDJA_TTS	96	10	TTS DEMO	project\vine\ttsdemo	utgrandja
UTIRONJA_TTS	96	11	TTS DEMO	project\vine\ttsdemo	utironja
UTJUABJA_TTS	96	12	TTS DEMO	project\vine\ttsdemo	utjuabja
UTKANEJA_TTS	96	13	TTS DEMO	project\vine\ttsdemo	utkaneja
UTMILLARDJA_TTS	96	14	TTS DEMO	project\vine\ttsdemo	utmillardja
UTRICHJA_TTS	96	15	TTS DEMO	project\vine\ttsdemo	utrichja
UTSALTLAKEJA_TTS	96	16	TTS DEMO	project\vine\ttsdemo	utsaltlakeja
UTSANJUANJA_TTS	96	17	TTS DEMO	project\vine\ttsdemo	utsanjuanja
UTSANPETEJA_TTS	96	18	TTS DEMO	project\vine\ttsdemo	utsanpeteja
UTSEVIERJA_TTS	96	19	TTS DEMO	project\vine\ttsdemo	utsevierja
UTSUMMITJA_TTS	96	20	TTS DEMO	project\vine\ttsdemo	utsummitja
UTTOOELEJA_TTS	96	21	TTS DEMO	project\vine\ttsdemo	uttooeleja
UTUINTAHJA_TTS	96	22	TTS DEMO	project\vine\ttsdemo	utuintahja
UTUTAHJA_TTS	96	23	TTS DEMO	project\vine\ttsdemo	ututahja
UTWASATCHJA_TTS	96	24	TTS DEMO	project\vine\ttsdemo	utwasatchja
UTWASHINGTONJA_TTS	96	25	TTS DEMO	project\vine\ttsdemo	utwashingtonja
UTWEBERJA_TTS	96	26	TTS DEMO	project\vine\ttsdemo	utweberja
UTD1BOXELDERCT_TTS	96	301	TTS DEMO	project\vine\ttsdemo	utd1boxelderct
UTD1CACHECT_TTS	96	302	TTS DEMO	project\vine\ttsdemo	utd1cachect
UTD1RICHCT_TTS	96	303	TTS DEMO	project\vine\ttsdemo	utd1richct
UTD2BOUNTIFULCT_TTS	96	304	TTS DEMO	project\vine\ttsdemo	utd2bountifulct
UTD2FARMINGTONCT_TTS	96	305	TTS DEMO	project\vine\ttsdemo	utd2farmingtonct
UTD2LAYTONCT_TTS	96	306	TTS DEMO	project\vine\ttsdemo	utd2laytonct
UTD2MORGANCT_TTS	96	307	TTS DEMO	project\vine\ttsdemo	utd2morganct
UTD2OGDENCT_TTS	96	308	TTS DEMO	project\vine\ttsdemo	utd2ogdenct
UTD3SALTLAKECT_TTS	96	309	TTS DEMO	project\vine\ttsdemo	utd3saltlakect
UTD3SANDYCT_TTS	96	310	TTS DEMO	project\vine\ttsdemo	utd3sandyct
UTD3SILVERSUMMITCT_TTS	96	311	TTS DEMO	project\vine\ttsdemo	utd3silversummitct
UTD3TOOELECT_TTS	96	312	TTS DEMO	project\vine\ttsdemo	utd3tooelect
UTD3WESTVALLEYCT_TTS	96	313	TTS DEMO	project\vine\ttsdemo	utd3westvalleyct
UTD4AMERICANFORKCT_TTS	96	314	TTS DEMO	project\vine\ttsdemo	utd4americanforkct
UTD4HEBERCT_TTS	96	315	TTS DEMO	project\vine\ttsdemo	utd4heberct
UTD4JUABCT_TTS	96	316	TTS DEMO	project\vine\ttsdemo	utd4juabct
UTD4MILLARDCT_TTS	96	317	TTS DEMO	project\vine\ttsdemo	utd4millardct
UTD4OREMCT_TTS	96	318	TTS DEMO	project\vine\ttsdemo	utd4oremct
UTD4PROVOCT_TTS	96	319	TTS DEMO	project\vine\ttsdemo	utd4provoct
CAIMPERIALJA	5011	1	CA_IMPERIAL	project\vine\ca\caimperialja	
LAIBERVILLECT	19000	324	LA_LASTATE	project\vine\la\lastate	laibervillect
KYESCAPE	18500	100	KY_ESCAPE	project\vine\ky\kyescape	kyescape
ILGALLATINCT	14004	58	IL_ILSTATE	project\vine\il\ilstate	ilgallatinct
MADISON570XX	34003	1302	NC_STATE	project\vine\nc\ncstate	
AZTUCSONJA	3003	1	AZ_TUCSON	project\vine\az\aztucsonja	
GAGWINNETTJA	11002	6	GA_GWINNETT	project\vine\ga\gagwinnettja	
VWAUSTIN	201	308	VINEWatch DEMO	project\vine\sv\vwdemo	vwaustin
VWHENDERSON	201	398	VINEWatch DEMO	project\vine\sv\vwdemo	vwhenderson
TXWALLER	44900	517	TX_Statewide	project\vine\tx\txstate	txwaller
TXSCHLEICHERJA	44900	488	TX_Statewide	project\vine\tx\txstate	txschleicherja
MOCASSCT	26000	318	MO_STATE	project\vine\mo\mostate	mocassct
MOBUCHANANJA	26000	11	MO_STATE	project\vine\mo\mostate	mobuchananja
MOFRANKLINJA	26000	36	MO_STATE	project\vine\mo\mostate	mofranklinja
MOMERCERJA	26000	66	MO_STATE	project\vine\mo\mostate	momercerja
MOPHELPSJA	26000	82	MO_STATE	project\vine\mo\mostate	mophelpsja
MOSHELBYJA	26000	98	MO_STATE	project\vine\mo\mostate	moshelbyja
MOBUTLERCT	26000	311	MO_STATE	project\vine\mo\mostate	mobutlerct
MOGENTRYCT	26000	337	MO_STATE	project\vine\mo\mostate	mogentryct
MOKNOXCT	26000	351	MO_STATE	project\vine\mo\mostate	moknoxct
MOLACLEDECT	26000	352	MO_STATE	project\vine\mo\mostate	molacledect
MOMORGANCT	26000	370	MO_STATE	project\vine\mo\mostate	momorganct
MONEWMADRIDCT	26000	371	MO_STATE	project\vine\mo\mostate	monewmadridct
MORAYCT	26000	388	MO_STATE	project\vine\mo\mostate	morayct
MOTEXASCT	26000	405	MO_STATE	project\vine\mo\mostate	motexasct
MOWDCACT	26000	503	MO_STATE	project\vine\mo\mostate	mowdcact
CAORANGEJA	5004	1	CA_ORANGE	project\vine\ca\caorangeja	
MOJOHNSONCT	26000	350	MO_STATE	project\vine\mo\mostate	mojohnsonct
MOLIVINGSTONCT	26000	358	MO_STATE	project\vine\mo\mostate	molivingstonct
LABIENVILLEJA_TEST	19000	365	LA_LASTATE	project\vine\la\lastate	labienvilleja_test
ILVERMILIONJA	14004	181	IL_ILSTATE	project\vine\il\ilstate	ilvermilionja
ORLANEJA	38000	20	OR_ORSTATE	project\vine\or\orstate	orlaneja
ORDOC	38000	900	OR_ORSTATE	project\vine\or\orstate	ordoc
ILCRAWFORDCT	14004	32	IL_ILSTATE	project\vine\il\ilstate	ilcrawfordct
SCDOC_1	141900	1	SC_DOC_1	project\vine\sc\scdoc_1	
KYTRAININGJA	999100	1	Script Training	/project/vine/training/cmarion	kytrainingja
ARIZARDPR	4999	74	AR_ARSTATE	project\vine\ar\arstate	arizardpr
ARMONTGOMERYPR	4999	128	AR_ARSTATE	project\vine\ar\arstate	armontgomerypr
ARNEWTONPR	4999	133	AR_ARSTATE	project\vine\ar\arstate	arnewtonpr
ARSEVIERPR	4999	176	AR_ARSTATE	project\vine\ar\arstate	arsevierpr
FLEVERCOM	10000	1000	FLState	project\vine\fl\flstate	
NMDONAANAJA	32001	1	NM_DONA_ANA	project\vine\nm\nmdonaana	nmdonaanaja
AREVERCOM	4999	500	AR_ARSTATE	project\vine\ar\arstate	arevercom
MSHANCOCKJA	25600	1	MS - Pegasus Project	project\gov\pegasus\ms	mshancockja
MSHARRISONJA	25600	2	MS - Pegasus Project	project\gov\pegasus\ms	msharrisonja
MSJACKSONJA	25600	3	MS - Pegasus Project	project\gov\pegasus\ms	msjacksonja
SCFAIRFIELDJA	41600	1	SC - Pegasus Project	project/gov/pegasus/sc	scfairfieldja
MOJHS	26000	951	MO_STATE	project\vine\mo\mostate	mojhs
MSTRICOUNTYJA	25600	4	MS - Pegasus Project	project\gov\pegasus\ms	mstricountyja
MSDOC	25600	900	MS - Pegasus Project	project\gov\pegasus\ms	msdoc
ARUNIOJA_3	204999	181	AR_ARSTATE_3	project\vine\ar\arstate_3	arunioja_3
ARUNIOPR_3	204999	182	AR_ARSTATE_3	project\vine\ar\arstate_3	aruniopr_3
ARPOLKJA_3	204999	146	AR_ARSTATE_3	project\vine\ar\arstate_3	arpolkja_3
ARPOLKPR_3	204999	147	AR_ARSTATE_3	project\vine\ar\arstate_3	arpolkpr_3
ARPOPEJA_3	204999	149	AR_ARSTATE_3	project\vine\ar\arstate_3	arpopeja_3
ARPOPEPR_3	204999	150	AR_ARSTATE_3	project\vine\ar\arstate_3	arpopepr_3
ARPULAJA_3	204999	154	AR_ARSTATE_3	project\vine\ar\arstate_3	arpulaja_3
ARPULAPR_3	204999	156	AR_ARSTATE_3	project\vine\ar\arstate_3	arpulapr_3
ARGREEJA_3	204999	63	AR_ARSTATE_3	project\vine\ar\arstate_3	argreeja_3
ARGREEPR_3	204999	64	AR_ARSTATE_3	project\vine\ar\arstate_3	argreepr_3
ARHOTSJA_3	204999	67	AR_ARSTATE_3	project\vine\ar\arstate_3	arhotsja_3
ARHOTSPR_3	204999	68	AR_ARSTATE_3	project\vine\ar\arstate_3	arhotspr_3
ARAG_3	204999	81	AR_ARSTATE_3	project\vine\ar\arstate_3	arag_3
ARJEFFJA_3	204999	82	AR_ARSTATE_3	project\vine\ar\arstate_3	arjeffja_3
ARJEFFPR_3	204999	84	AR_ARSTATE_3	project\vine\ar\arstate_3	arjeffpr_3
ARDOC_3	204999	86	AR_ARSTATE_3	project\vine\ar\arstate_3	ardoc_3
ARARKAJA_3	204999	1	AR_ARSTATE_3	project\vine\ar\arstate_3	ararkaja_3
ARASHLJA_3	204999	4	AR_ARSTATE_3	project\vine\ar\arstate_3	arashlja_3
ARASHLPR_3	204999	5	AR_ARSTATE_3	project\vine\ar\arstate_3	arashlpr_3
ARBENTJA_3	204999	9	AR_ARSTATE_3	project\vine\ar\arstate_3	arbentja_3
ARBENTPR_3	204999	10	AR_ARSTATE_3	project\vine\ar\arstate_3	arbentpr_3
ARBOONJA_3	204999	11	AR_ARSTATE_3	project\vine\ar\arstate_3	arboonja_3
ARBOONPR_3	204999	12	AR_ARSTATE_3	project\vine\ar\arstate_3	arboonpr_3
ARCLARJA_3	204999	23	AR_ARSTATE_3	project\vine\ar\arstate_3	arclarja_3
ARCLARPR_3	204999	24	AR_ARSTATE_3	project\vine\ar\arstate_3	arclarpr_3
ARCLAYJA_3	204999	27	AR_ARSTATE_3	project\vine\ar\arstate_3	arclayja_3
ARCRAIJA_3	204999	36	AR_ARSTATE_3	project\vine\ar\arstate_3	arcraija_3
ARCRAIPR_3	204999	37	AR_ARSTATE_3	project\vine\ar\arstate_3	arcraipr_3
ARDALLPR_3	204999	45	AR_ARSTATE_3	project\vine\ar\arstate_3	ardallpr_3
ARDALLJA_3	204999	46	AR_ARSTATE_3	project\vine\ar\arstate_3	ardallja_3
NJDOC	31000	900	NJ_STATE	project\vine\nj\njstate	njdoc
NJJJC	31000	800	NJ_STATE	project\vine\nj\njstate	njjjc
CCIS	31000	100	NJ_STATE	project\vine\nj\njstate	ccis
MNRAMSEYCF	24002	93	MN_MNSTATE	project\vine\mn\mnstate	mnramseycf
UTCACHERMS	45000	2500	UT_UTSTATE	project\vine\ut\utstate	utcacherms
MSHINDSJA	25600	5	MS - Pegasus Project	project\gov\pegasus\ms	mshindsja
IATESTJA	16001	9	IA_STORY	project\vine\ia\iastoryja	iatestja
MOKANSASCITYPD	26000	121	MO_STATE	project\vine\mo\mostate	mokansascitypd
MSJACKSONPD	25600	6	MS - Pegasus Project	project\gov\pegasus\ms	msjacksonpd
UTWASATCHRMS	45000	2502	UT_UTSTATE	project\vine\ut\utstate	utwasatchrms
UTMILLARDRMS	45000	2503	UT_UTSTATE	project\vine\ut\utstate	utmillardrms
UTSEVIERRMS	45000	2504	UT_UTSTATE	project\vine\ut\utstate	utsevierrms
MICOURTS	23005	905	MI_MISTATE	project\vine\mi\mistate	micourts
WAABERDEENPD	48626	1	WA_WASTATE	project\vine\wa\wastate	waaberdeenpd
WAADAMSJA	48626	2	WA_WASTATE	project\vine\wa\wastate	waadamsja
WAAUBURNPD	48626	4	WA_WASTATE	project\vine\wa\wastate	waauburnpd
WABENTONJA	48626	5	WA_WASTATE	project\vine\wa\wastate	wabentonja
WABUCKLEYPD	48626	6	WA_WASTATE	project\vine\wa\wastate	wabuckleypd
WACLALLAMJA	48626	9	WA_WASTATE	project\vine\wa\wastate	waclallamja
WACLARKJA	48626	10	WA_WASTATE	project\vine\wa\wastate	waclarkja
WACOLUMBIAJA	48626	11	WA_WASTATE	project\vine\wa\wastate	wacolumbiaja
WAFORKSPD	48626	15	WA_WASTATE	project\vine\wa\wastate	waforkspd
WAGARFIELDJA	48626	17	WA_WASTATE	project\vine\wa\wastate	wagarfieldja
WAGRAYSHARBORJA	48626	20	WA_WASTATE	project\vine\wa\wastate	wagraysharborja
WAISLANDJA	48626	22	WA_WASTATE	project\vine\wa\wastate	waislandja
WAISSAQUAHPD	48626	23	WA_WASTATE	project\vine\wa\wastate	waissaquahpd
WAJEFFERSONJA	48626	24	WA_WASTATE	project\vine\wa\wastate	wajeffersonja
WAKENTCC	48626	25	WA_WASTATE	project\vine\wa\wastate	wakentcc
WAKIRKLANDPD	48626	27	WA_WASTATE	project\vine\wa\wastate	wakirklandpd
WAKITSAPJA	48626	28	WA_WASTATE	project\vine\wa\wastate	wakitsapja
WAKITTITASJA	48626	29	WA_WASTATE	project\vine\wa\wastate	wakittitasja
WALEWISJA	48626	31	WA_WASTATE	project\vine\wa\wastate	walewisja
WALINCOLNJA	48626	32	WA_WASTATE	project\vine\wa\wastate	walincolnja
WALYNNWOODPD	48626	33	WA_WASTATE	project\vine\wa\wastate	walynnwoodpd
WAMARYSVILLEPD	48626	34	WA_WASTATE	project\vine\wa\wastate	wamarysvillepd
WAMASONJA	48626	35	WA_WASTATE	project\vine\wa\wastate	wamasonja
WAOAKHARBORPD	48626	36	WA_WASTATE	project\vine\wa\wastate	waoakharborpd
WAOKANOGANJA	48626	37	WA_WASTATE	project\vine\wa\wastate	waokanoganja
WAPACIFICJA	48626	39	WA_WASTATE	project\vine\wa\wastate	wapacificja
WAPENDOREILLEJA	48626	40	WA_WASTATE	project\vine\wa\wastate	wapendoreilleja
WAPIERCEJA	48626	41	WA_WASTATE	project\vine\wa\wastate	wapierceja
WAPUYALLUPPD	48626	42	WA_WASTATE	project\vine\wa\wastate	wapuyalluppd
WARENTONPD	48626	43	WA_WASTATE	project\vine\wa\wastate	warentonpd
WASANJUANJA	48626	44	WA_WASTATE	project\vine\wa\wastate	wasanjuanja
WASKAGITJA	48626	45	WA_WASTATE	project\vine\wa\wastate	waskagitja
WASKAMANIAJA	48626	46	WA_WASTATE	project\vine\wa\wastate	waskamaniaja
WASPOKANEJA	48626	48	WA_WASTATE	project\vine\wa\wastate	waspokaneja
WASTEVENSJA	48626	49	WA_WASTATE	project\vine\wa\wastate	wastevensja
WASUNNYSIDEPD	48626	50	WA_WASTATE	project\vine\wa\wastate	wasunnysidepd
WAWAHKIAKUMJA	48626	52	WA_WASTATE	project\vine\wa\wastate	wawahkiakumja
WATHURSTONJA	48626	51	WA_WASTATE	project\vine\wa\wastate	wathurstonja
WAWALLAWALLAJA	48626	53	WA_WASTATE	project\vine\wa\wastate	wawallawallaja
WAWHATCOMJA	48626	55	WA_WASTATE	project\vine\wa\wastate	wawhatcomja
WAWHITMANJA	48626	56	WA_WASTATE	project\vine\wa\wastate	wawhitmanja
WAYAKIMAJA	48626	57	WA_WASTATE	project\vine\wa\wastate	wayakimaja
WAYAKIMAPD	48626	58	WA_WASTATE	project\vine\wa\wastate	wayakimapd
TXEVERCOM	44900	1200	TX_Statewide	project\vine\tx\txstate	txevercom
MIAGO	23005	906	MI_MISTATE	project\vine\mi\mistate	miago
TESTAGENCY1	888888	1	VINETEST	project\vine\vinetest\testsite	testagency1
ARDCC	4999	2502	AR_ARSTATE	project\vine\ar\arstate	ardcc
ORLOCKWORKS	38000	800	OR_ORSTATE	project\vine\or\orstate	orlockworks
MSHINDSRMS	25600	7	MS - Pegasus Project	project\gov\pegasus\ms	mshindsrms
ALCALHOUNJA	1600	1	AL - Pegasus Project	project/gov/pegasus/al	alcalhounja
SDHUGHESJA	42600	2	SD - Pegasus Project	project/gov/pegasus/sd	sdhughesja
ORMULTNOMAHC2C	38003	1	OR_Multnomah_C2C	project\gov\c2c\or\multnomah	
NCHENDERSONPR	34003	1045	NC_STATE	project\vine\nc\ncstate	nchendersonpr
NCCHEROKEEPR	34003	1019	NC_STATE	project\vine\nc\ncstate	nccherokeepr
IAMARSHALLJA	16600	1	IA - Pegasus Project	project/gov/pegasus/ia	iamarshallja
WATOPPENISHPD	48626	66	WA_WASTATE	project\vine\wa\wastate	watoppenishpd
LAPOINTECOUPEEJA	19000	39	LA_LASTATE	project\vine\la\lastate	lapointecoupeeja
NCSTOKESRMS	34003	2500	NC_STATE	project\vine\nc\ncstate	ncstokesrms
NMDONAANACT	32001	14	NM_DONA_ANA	project\vine\nm\nmdonaana	nmdonaanact
MIALCOJA_1	123005	1	MI_MISTATE_1	project\vine\mi\mistate_1	mialconaja_1
MIALGEJA_1	123005	2	MI_MISTATE_1	project\vine\mi\mistate_1	mialgerja_1
MIALLEJA_1	123005	3	MI_MISTATE_1	project\vine\mi\mistate_1	mialleganja_1
MIALPEJA_1	123005	4	MI_MISTATE_1	project\vine\mi\mistate_1	mialpenaja_1
MIANTRJA_1	123005	5	MI_MISTATE_1	project\vine\mi\mistate_1	miantrimja_1
MIARENJA_1	123005	6	MI_MISTATE_1	project\vine\mi\mistate_1	miarenacja_1
MIBARAJA_1	123005	7	MI_MISTATE_1	project\vine\mi\mistate_1	mibaragaja_1
MIBARRJA_1	123005	8	MI_MISTATE_1	project\vine\mi\mistate_1	mibarryja_1
MIBAYJA_1	123005	9	MI_MISTATE_1	project\vine\mi\mistate_1	mibayja_1
MIBENZJA_1	123005	10	MI_MISTATE_1	project\vine\mi\mistate_1	mibenzieja_1
MIBERRIANJA_1	123005	11	MI_MISTATE_1	project\vine\mi\mistate_1	miberrianja_1
MIBRANJA_1	123005	12	MI_MISTATE_1	project\vine\mi\mistate_1	mibranchja_1
MICALHJA_1	123005	13	MI_MISTATE_1	project\vine\mi\mistate_1	micalhounja_1
MICASSJA_1	123005	14	MI_MISTATE_1	project\vine\mi\mistate_1	micassja_1
MICHARJA_1	123005	15	MI_MISTATE_1	project\vine\mi\mistate_1	micharlevoixja_1
MICHEBJA_1	123005	16	MI_MISTATE_1	project\vine\mi\mistate_1	micheboyganja_1
MICHIPJA_1	123005	17	MI_MISTATE_1	project\vine\mi\mistate_1	michippewaja_1
MICLARJA_1	123005	18	MI_MISTATE_1	project\vine\mi\mistate_1	miclareja_1
MICLINJA_1	123005	19	MI_MISTATE_1	project\vine\mi\mistate_1	miclintonja_1
MICRAWJA_1	123005	20	MI_MISTATE_1	project\vine\mi\mistate_1	micrawfordja_1
MIDELTJA_1	123005	21	MI_MISTATE_1	project\vine\mi\mistate_1	mideltaja_1
MIDICKJA_1	123005	22	MI_MISTATE_1	project\vine\mi\mistate_1	midickinsonja_1
MIEATOJA_1	123005	23	MI_MISTATE_1	project\vine\mi\mistate_1	mieatonja_1
MIEMMEJA_1	123005	24	MI_MISTATE_1	project\vine\mi\mistate_1	miemmetja_1
MIGENESEEJA_1	123005	25	MI_MISTATE_1	project\vine\mi\mistate_1	migeneseeja_1
MIGLADJA_1	123005	26	MI_MISTATE_1	project\vine\mi\mistate_1	migladwinja_1
MIGOGEJA_1	123005	27	MI_MISTATE_1	project\vine\mi\mistate_1	migogebicja_1
MIGRANJA_1	123005	28	MI_MISTATE_1	project\vine\mi\mistate_1	migrandtraverseja_1
MIGRATJA_1	123005	29	MI_MISTATE_1	project\vine\mi\mistate_1	migratiotja_1
MIHILLJA_1	123005	30	MI_MISTATE_1	project\vine\mi\mistate_1	mihillsdaleja_1
MIHOUGJA_1	123005	31	MI_MISTATE_1	project\vine\mi\mistate_1	mihoughtonja_1
MIHUROJA_1	123005	32	MI_MISTATE_1	project\vine\mi\mistate_1	mihuronja_1
MIINGHJA_1	123005	33	MI_MISTATE_1	project\vine\mi\mistate_1	miinghamja_1
MIIONIJA_1	123005	34	MI_MISTATE_1	project\vine\mi\mistate_1	miioniaja_1
MIIOSCJA_1	123005	35	MI_MISTATE_1	project\vine\mi\mistate_1	miioscoja_1
MIIRONJA_1	123005	36	MI_MISTATE_1	project\vine\mi\mistate_1	miironja_1
MIISABELLAJA_1	123005	37	MI_MISTATE_1	project\vine\mi\mistate_1	miisabellaja_1
MIJACKJA_1	123005	38	MI_MISTATE_1	project\vine\mi\mistate_1	mijacksonja_1
MIKALAJA_1	123005	39	MI_MISTATE_1	project\vine\mi\mistate_1	mikalamazooja_1
MIKALKJA_1	123005	40	MI_MISTATE_1	project\vine\mi\mistate_1	mikalkaskaja_1
MIKENTJA_1	123005	41	MI_MISTATE_1	project\vine\mi\mistate_1	mikentja_1
MIKEWEJA_1	123005	42	MI_MISTATE_1	project\vine\mi\mistate_1	mikeweenawja_1
MILAKEJA_1	123005	43	MI_MISTATE_1	project\vine\mi\mistate_1	milakeja_1
MILAPEJA_1	123005	44	MI_MISTATE_1	project\vine\mi\mistate_1	milapeerja_1
MILEELJA_1	123005	45	MI_MISTATE_1	project\vine\mi\mistate_1	mileelanauja_1
MILENAJA_1	123005	46	MI_MISTATE_1	project\vine\mi\mistate_1	milenaweeja_1
MILIVIJA_1	123005	47	MI_MISTATE_1	project\vine\mi\mistate_1	milivingstonja_1
MILUCEJA_1	123005	48	MI_MISTATE_1	project\vine\mi\mistate_1	miluceja_1
MIMACKINACJA_1	123005	49	MI_MISTATE_1	project\vine\mi\mistate_1	mimackinacja_1
MIMACOJA_1	123005	50	MI_MISTATE_1	project\vine\mi\mistate_1	mimacombja_1
MIMANIJA_1	123005	51	MI_MISTATE_1	project\vine\mi\mistate_1	mimanisteeja_1
MIMARQJA_1	123005	52	MI_MISTATE_1	project\vine\mi\mistate_1	mimarquetteja_1
MIMASOJA_1	123005	53	MI_MISTATE_1	project\vine\mi\mistate_1	mimasonja_1
MIMECOSTAJA_1	123005	54	MI_MISTATE_1	project\vine\mi\mistate_1	mimecostaja_1
MIMENOJA_1	123005	55	MI_MISTATE_1	project\vine\mi\mistate_1	mimenomineeja_1
MIMIDLJA_1	123005	56	MI_MISTATE_1	project\vine\mi\mistate_1	mimidlandja_1
MIMISSJA_1	123005	57	MI_MISTATE_1	project\vine\mi\mistate_1	mimissaukeeja_1
MIMONRJA_1	123005	58	MI_MISTATE_1	project\vine\mi\mistate_1	mimonroeja_1
MIMONCJA_1	123005	59	MI_MISTATE_1	project\vine\mi\mistate_1	mimontcalmja_1
MIMONTJA_1	123005	60	MI_MISTATE_1	project\vine\mi\mistate_1	mimontmorencyja_1
MIMUSKJA_1	123005	61	MI_MISTATE_1	project\vine\mi\mistate_1	mimuskegonja_1
MINEWAJA_1	123005	62	MI_MISTATE_1	project\vine\mi\mistate_1	minewagoja_1
MIOAKLJA_1	123005	63	MI_MISTATE_1	project\vine\mi\mistate_1	mioaklandja_1
MIOCEAJA_1	123005	64	MI_MISTATE_1	project\vine\mi\mistate_1	mioceanaja_1
MIOGEMJA_1	123005	65	MI_MISTATE_1	project\vine\mi\mistate_1	miogemawja_1
MIONTOJA_1	123005	66	MI_MISTATE_1	project\vine\mi\mistate_1	miontonagonja_1
MIOSCOJA_1	123005	67	MI_MISTATE_1	project\vine\mi\mistate_1	mioscodaja_1
MIOTSEJA_1	123005	68	MI_MISTATE_1	project\vine\mi\mistate_1	miotsegoja_1
MIOTTAJA_1	123005	69	MI_MISTATE_1	project\vine\mi\mistate_1	miottawaja_1
MIPRESJA_1	123005	70	MI_MISTATE_1	project\vine\mi\mistate_1	mipresqueisleja_1
MIROSCOMMONJA_1	123005	71	MI_MISTATE_1	project\vine\mi\mistate_1	miroscommonja_1
MISAGIJA_1	123005	72	MI_MISTATE_1	project\vine\mi\mistate_1	misaginawja_1
MISTCLJA_1	123005	73	MI_MISTATE_1	project\vine\mi\mistate_1	mistclairja_1
MISTJOJA_1	123005	74	MI_MISTATE_1	project\vine\mi\mistate_1	mistjosephja_1
MISANIJA_1	123005	75	MI_MISTATE_1	project\vine\mi\mistate_1	misanilacja_1
MISCHOJA_1	123005	76	MI_MISTATE_1	project\vine\mi\mistate_1	mischoolcraftja_1
MISHIAJA_1	123005	77	MI_MISTATE_1	project\vine\mi\mistate_1	mishiawasseeja_1
MITUSCJA_1	123005	78	MI_MISTATE_1	project\vine\mi\mistate_1	mituscolaja_1
MIVANBJA_1	123005	79	MI_MISTATE_1	project\vine\mi\mistate_1	mivanburenja_1
MIWASHJA_1	123005	80	MI_MISTATE_1	project\vine\mi\mistate_1	miwashtenawja_1
MIWAYNEJA_1	123005	81	MI_MISTATE_1	project\vine\mi\mistate_1	miwayneja_1
MIWEXFJA_1	123005	82	MI_MISTATE_1	project\vine\mi\mistate_1	miwexfordja_1
MIOSCEJA_1	123005	83	MI_MISTATE_1	project\vine\mi\mistate_1	miosceolaja_1
MIDOC_1	123005	100	MI_MISTATE_1	project\vine\mi\mistate_1	midoc_1
MIALCOPR_1	123005	101	MI_MISTATE_1	project\vine\mi\mistate_1	mialconapa_1
MIALGEPR_1	123005	102	MI_MISTATE_1	project\vine\mi\mistate_1	mialgerpa_1
MIALLEPR_1	123005	103	MI_MISTATE_1	project\vine\mi\mistate_1	mialleganpa_1
MIALPEPR_1	123005	104	MI_MISTATE_1	project\vine\mi\mistate_1	mialpenapa_1
MIANTRPR_1	123005	105	MI_MISTATE_1	project\vine\mi\mistate_1	miantrimpa_1
MIARENPR_1	123005	106	MI_MISTATE_1	project\vine\mi\mistate_1	miarenacpa_1
MIBARRPR_1	123005	108	MI_MISTATE_1	project\vine\mi\mistate_1	mibarrypa_1
MIBAYPR_1	123005	109	MI_MISTATE_1	project\vine\mi\mistate_1	mibaypa_1
MIBENZPR_1	123005	110	MI_MISTATE_1	project\vine\mi\mistate_1	mibenziepa_1
MIBRANPR_1	123005	112	MI_MISTATE_1	project\vine\mi\mistate_1	mibranchpa_1
MICALHPR_1	123005	113	MI_MISTATE_1	project\vine\mi\mistate_1	micalhounpa_1
MICASSPR_1	123005	114	MI_MISTATE_1	project\vine\mi\mistate_1	micasspa_1
MICHARPR_1	123005	115	MI_MISTATE_1	project\vine\mi\mistate_1	micharlevoixpa_1
MICHEBPR_1	123005	116	MI_MISTATE_1	project\vine\mi\mistate_1	micheboyganpa_1
MICHIPPR_1	123005	117	MI_MISTATE_1	project\vine\mi\mistate_1	michippewapa_1
MICLARPR_1	123005	118	MI_MISTATE_1	project\vine\mi\mistate_1	miclarepa_1
MICRAWPR_1	123005	120	MI_MISTATE_1	project\vine\mi\mistate_1	micrawfordpa_1
MIDICKPR_1	123005	122	MI_MISTATE_1	project\vine\mi\mistate_1	midickinsonpa_1
MIEATOPR_1	123005	123	MI_MISTATE_1	project\vine\mi\mistate_1	mieatonpa_1
MIEMMEPR_1	123005	124	MI_MISTATE_1	project\vine\mi\mistate_1	miemmetpa_1
MIGENEPR_1	123005	125	MI_MISTATE_1	project\vine\mi\mistate_1	migeneseepa_1
MIGLADPR_1	123005	126	MI_MISTATE_1	project\vine\mi\mistate_1	migladwinpa_1
MIGOGEPR_1	123005	127	MI_MISTATE_1	project\vine\mi\mistate_1	migogebicpa_1
MIGRANPR_1	123005	128	MI_MISTATE_1	project\vine\mi\mistate_1	migrandtraversepa_1
MIHILLPR_1	123005	130	MI_MISTATE_1	project\vine\mi\mistate_1	mihillsdalepa_1
MIHOUGPR_1	123005	131	MI_MISTATE_1	project\vine\mi\mistate_1	mihoughtonpa_1
MIINGHAMPA_1	123005	133	MI_MISTATE_1	project\vine\mi\mistate_1	miinghampa_1
MIIONIPR_1	123005	134	MI_MISTATE_1	project\vine\mi\mistate_1	miioniapa_1
MIIOSCPR_1	123005	135	MI_MISTATE_1	project\vine\mi\mistate_1	miisocopa_1
MIIRONPR_1	123005	136	MI_MISTATE_1	project\vine\mi\mistate_1	miironpa_1
MIISABPR_1	123005	137	MI_MISTATE_1	project\vine\mi\mistate_1	miisabellapa_1
MIJACKPR_1	123005	138	MI_MISTATE_1	project\vine\mi\mistate_1	mijacksonpa_1
MIKALAPR_1	123005	139	MI_MISTATE_1	project\vine\mi\mistate_1	mikalamazoopa_1
MIKENTPR_1	123005	141	MI_MISTATE_1	project\vine\mi\mistate_1	mikentpa_1
MIKEWEPR_1	123005	142	MI_MISTATE_1	project\vine\mi\mistate_1	mikeweenawpa_1
MILAKEPR_1	123005	143	MI_MISTATE_1	project\vine\mi\mistate_1	milakepa_1
MILAPEPR_1	123005	144	MI_MISTATE_1	project\vine\mi\mistate_1	milapeerpa_1
MILEELPR_1	123005	145	MI_MISTATE_1	project\vine\mi\mistate_1	mileelanaupa_1
MILENAPR_1	123005	146	MI_MISTATE_1	project\vine\mi\mistate_1	milenaweepa_1
MILIVIPR_1	123005	147	MI_MISTATE_1	project\vine\mi\mistate_1	milivingstonpa_1
MIMACKPR_1	123005	149	MI_MISTATE_1	project\vine\mi\mistate_1	mimackinacpa_1
MIMACOMBPR_1	123005	150	MI_MISTATE_1	project\vine\mi\mistate_1	mimacombpa_1
MIMANIPR_1	123005	151	MI_MISTATE_1	project\vine\mi\mistate_1	mimanisteepa_1
MIMARQPR_1	123005	152	MI_MISTATE_1	project\vine\mi\mistate_1	mimarquettepa_1
MIMASOPR_1	123005	153	MI_MISTATE_1	project\vine\mi\mistate_1	mimasonpa_1
MIMENOPR_1	123005	155	MI_MISTATE_1	project\vine\mi\mistate_1	mimenomineepa_1
MIMIDLPR_1	123005	156	MI_MISTATE_1	project\vine\mi\mistate_1	mimidlandpa_1
MIMISSPR_1	123005	157	MI_MISTATE_1	project\vine\mi\mistate_1	mimissaukeepa_1
MIMONRPR_1	123005	158	MI_MISTATE_1	project\vine\mi\mistate_1	mimonroepa_1
MIMONCPR_1	123005	159	MI_MISTATE_1	project\vine\mi\mistate_1	mimontcalmpa_1
MIMONTPR_1	123005	160	MI_MISTATE_1	project\vine\mi\mistate_1	mimontmorencypa_1
MIMUSKPR_1	123005	161	MI_MISTATE_1	project\vine\mi\mistate_1	mimuskegonpa_1
MINEWAPR_1	123005	162	MI_MISTATE_1	project\vine\mi\mistate_1	minewagopa_1
MIOAKLPR_1	123005	163	MI_MISTATE_1	project\vine\mi\mistate_1	mioaklandpa_1
MIOCEAPR_1	123005	164	MI_MISTATE_1	project\vine\mi\mistate_1	mioceanapa_1
MIOGEMPR_1	123005	165	MI_MISTATE_1	project\vine\mi\mistate_1	miogemawpa_1
MIOTSEPR_1	123005	168	MI_MISTATE_1	project\vine\mi\mistate_1	miotsegopa_1
MIOTTAPR_1	123005	169	MI_MISTATE_1	project\vine\mi\mistate_1	miottawapa_1
MIPRESPR_1	123005	170	MI_MISTATE_1	project\vine\mi\mistate_1	mipresqueislepa_1
MISAGIPR_1	123005	172	MI_MISTATE_1	project\vine\mi\mistate_1	misaginawpa_1
MISTJOPR_1	123005	174	MI_MISTATE_1	project\vine\mi\mistate_1	mistjosephpa_1
MISHIAPR_1	123005	177	MI_MISTATE_1	project\vine\mi\mistate_1	mishiawasseepa_1
MITUSCPR_1	123005	178	MI_MISTATE_1	project\vine\mi\mistate_1	mituscolapa_1
MIVANBPR_1	123005	179	MI_MISTATE_1	project\vine\mi\mistate_1	mivanburenpa_1
MIWASHPR_1	123005	180	MI_MISTATE_1	project\vine\mi\mistate_1	miwashtenawpa_1
MIWAYNPR_1	123005	181	MI_MISTATE_1	project\vine\mi\mistate_1	miwaynepa_1
MIWEXFPR_1	123005	182	MI_MISTATE_1	project\vine\mi\mistate_1	miwexfordpa_1
MIBARAPR_1	123005	828	MI_MISTATE_1	project\vine\mi\mistate_1	mibaragapa_1
MICLINPR_1	123005	829	MI_MISTATE_1	project\vine\mi\mistate_1	miclintonpa_1
MIDELTPR_1	123005	831	MI_MISTATE_1	project\vine\mi\mistate_1	mideltapa_1
MIGRATPR_1	123005	832	MI_MISTATE_1	project\vine\mi\mistate_1	migratiotpa_1
MIHUROPR_1	123005	833	MI_MISTATE_1	project\vine\mi\mistate_1	mihuronpa_1
MIKALKPR_1	123005	834	MI_MISTATE_1	project\vine\mi\mistate_1	mikalkaskapa_1
MILUCEPR_1	123005	835	MI_MISTATE_1	project\vine\mi\mistate_1	milucepa_1
MIMECOPR_1	123005	836	MI_MISTATE_1	project\vine\mi\mistate_1	mimecostapa_1
MIONTOPR_1	123005	837	MI_MISTATE_1	project\vine\mi\mistate_1	miontonagonpa_1
MIOSCOPR_1	123005	838	MI_MISTATE_1	project\vine\mi\mistate_1	mioscodapa_1
MIROSCPR_1	123005	839	MI_MISTATE_1	project\vine\mi\mistate_1	miroscommonpa_1
MISANIPR_1	123005	840	MI_MISTATE_1	project\vine\mi\mistate_1	misanilacpa_1
MISCHOPR_1	123005	841	MI_MISTATE_1	project\vine\mi\mistate_1	mischoolcraftpa_1
MISTCLPR_1	123005	842	MI_MISTATE_1	project\vine\mi\mistate_1	mistclairpa_1
MIOSCEPR_1	123005	843	MI_MISTATE_1	project\vine\mi\mistate_1	miosceolapa_1
MIPUTNJA_1	123005	880	MI_MISTATE_1	project\vine\mi\mistate_1	miputnamja_1
MISCHUPR_1	123005	886	MI_MISTATE_1	project\vine\mi\mistate_1	mischuylerpa_1
MISEVIJA_1	123005	887	MI_MISTATE_1	project\vine\mi\mistate_1	misevierja_1
MISULLJA_1	123005	890	MI_MISTATE_1	project\vine\mi\mistate_1	misullivanja_1
MICOURTS_1	123005	905	MI_MISTATE_1	project\vine\mi\mistate_1	micourts_1
MIAGO_1	123005	906	MI_MISTATE_1	project\vine\mi\mistate_1	miago_1
TXMONTGOMERYCT2	44900	1155	TX_Statewide	project\vine\tx\txstate	txmontgomeryct
                      	47600	600	VA - Pegasus Project	project/gov/pegasus/va	
WAENUMCLAWPD	48626	13	WA_WASTATE	project\vine\wa\wastate	waenumclawpd
MIFSG	23005	1000	MI_MISTATE	project\vine\mi\mistate	mifsg
TXARLINGTONPD	44900	3001	TX_Statewide	project\vine\tx\txstate	txarlingtonpd
TXDENTONPD	44900	3003	TX_Statewide	project\vine\tx\txstate	txdentonpd
TXFRISCOPD	44900	3004	TX_Statewide	project\vine\tx\txstate	txfriscopd
TXLEWISVILLEPD	44900	3005	TX_Statewide	project\vine\tx\txstate	txlewisvillepd
TXDALLASPD	44900	3008	TX_Statewide	project\vine\tx\txstate	txdallaspd
TXGARLANDPD	44900	3009	TX_Statewide	project\vine\tx\txstate	txgarlandpd
TXRICHARDSONPD	44900	3010	TX_Statewide	project\vine\tx\txstate	txrichardsonpd
ILFSG	14004	266	IL_ILSTATE	project\vine\il\ilstate	ilfsg
TXFORTWORTHPD	44900	201	TX_Statewide	project\vine\tx\txstate	txfortworthpd
WAGRANTJA	48626	19	WA_WASTATE	project\vine\wa\wastate	wagrantja
ARDSIHOSTJA	4999	515	AR_ARSTATE	project\vine\ar\arstate	ardsihostja
WACHELANJA	48626	7	WA_WASTATE	project\vine\wa\wastate	wachelanja
KYBOYDJU	18000	231	KY_KYSTATE	project\vine\ky\kystate	kyboydju
KYLINCOLNJU	18000	232	KY_KYSTATE	project\vine\ky\kystate	kylincolnju
TNBLOUNTJA	43000	3	TN_TNSTATE	project\vine\tn\tnstate	tnblountja
TXCLE	44900	3012	TX_Statewide	project\vine\tx\txstate	txcle
TXHOUSTONPD	44900	3013	TX_Statewide	project\vine\tx\txstate	txhoustonpd
TXALVINCCPD	44900	3049	TX_Statewide	project\vine\tx\txstate	txalvinccpd
TXRANGERS	44900	3046	TX_Statewide	project\vine\tx\txstate	txrangers
TXHP	44900	3076	TX_Statewide	project\vine\tx\txstate	txhp
TXSANANTONIOPD	44900	3179	TX_Statewide	project\vine\tx\txstate	txsanantoniopd
TXPALESTINEPD	44900	3182	TX_Statewide	project\vine\tx\txstate	txpalestinepd
TXARANSASPASSPD	44900	3223	TX_Statewide	project\vine\tx\txstate	txaransaspasspd
TXPLEASANTONPD	44900	3247	TX_Statewide	project\vine\tx\txstate	txpleasantonpd
TXJOURDANTONPD	44900	3249	TX_Statewide	project\vine\tx\txstate	txjourdantonpd
TXBELLVILLEPD	44900	3254	TX_Statewide	project\vine\tx\txstate	txbellvillepd
TXSEALYPD	44900	3258	TX_Statewide	project\vine\tx\txstate	txsealypd
TXBANDERAPD	44900	3274	TX_Statewide	project\vine\tx\txstate	txbanderapd
TXBASTROPPD	44900	3284	TX_Statewide	project\vine\tx\txstate	txbastroppd
TXBARTLETTPD	44900	3312	TX_Statewide	project\vine\tx\txstate	txbartlettpd
TXKILLEENPD	44900	3328	TX_Statewide	project\vine\tx\txstate	txkilleenpd
NEPHOTOCHERRY	28500	2	NE_PHOTO	project\vine\ne\nephoto	nephotocherry
NEPHOTOADAMS	28500	3	NE_PHOTO	project\vine\ne\nephoto	nephotoadams
NEPHOTOANTELOPE	28500	4	NE_PHOTO	project\vine\ne\nephoto	nephotoantelope
NEPHOTOBROWN	28500	5	NE_PHOTO	project\vine\ne\nephoto	nephotobrown
NEPHOTOBUFFALO	28500	6	NE_PHOTO	project\vine\ne\nephoto	nephotobuffalo
NEPHOTOCLAY	28500	7	NE_PHOTO	project\vine\ne\nephoto	nephotoclay
NEPHOTOCASS	28500	8	NE_PHOTO	project\vine\ne\nephoto	nephotocass
TXALAMOHEIGHTSPD	44900	3346	TX_Statewide	project\vine\tx\txstate	txalamoheightspd
TXCASTLEHILLSPD	44900	3362	TX_Statewide	project\vine\tx\txstate	txcastlehillspd
TXCONVERSEPD	44900	3369	TX_Statewide	project\vine\tx\txstate	txconversepd
TXELMENDORFPD	44900	3371	TX_Statewide	project\vine\tx\txstate	txelmendorfpd
TXHILLCOUNTRYVILLAGEPD	44900	3372	TX_Statewide	project\vine\tx\txstate	txhillcountryvillagepd
TXHOLLEYWOODPARKPD	44900	3375	TX_Statewide	project\vine\tx\txstate	txhollywoodparkpd
TXKIRBYPD	44900	3377	TX_Statewide	project\vine\tx\txstate	txkirbypd
TXLEONVALLEYPD	44900	3378	TX_Statewide	project\vine\tx\txstate	txleonvalleypd
TXOLMOSPARPD	44900	3379	TX_Statewide	project\vine\tx\txstate	txolmosparkpd
TXSHAVANOPARKPD	44900	3380	TX_Statewide	project\vine\tx\txstate	txshavanoparkpd
TXTERRELLHILLSPD	44900	3382	TX_Statewide	project\vine\tx\txstate	txterrellhillspd
TXUNIVERSALCITYPD	44900	3383	TX_Statewide	project\vine\tx\txstate	txuniversalcitypd
TXWINDCRESTPD	44900	3384	TX_Statewide	project\vine\tx\txstate	txwindcrestpd
TXLIVEOAKPD	44900	3385	TX_Statewide	project\vine\tx\txstate	txliveoakpd
TXSELMAPD	44900	3397	TX_Statewide	project\vine\tx\txstate	txselmapd
TXHELOTESPD	44900	3404	TX_Statewide	project\vine\tx\txstate	txhelotespd
TXFAIROAKSPD	44900	3413	TX_Statewide	project\vine\tx\txstate	txfairoakspd
TXANGLETONPD	44900	3469	TX_Statewide	project\vine\tx\txstate	txangletonpd
TXCLUTEPD	44900	3473	TX_Statewide	project\vine\tx\txstate	txclutepd
TXFREEPORTPD	44900	3479	TX_Statewide	project\vine\tx\txstate	txfreeportpd
TXMANVELPD	44900	3484	TX_Statewide	project\vine\tx\txstate	txmanvelpd
TXRICHWOODPD	44900	3486	TX_Statewide	project\vine\tx\txstate	txrichwoodpd
TXBRAZORIAPD	44900	3494	TX_Statewide	project\vine\tx\txstate	txbrazoriapd
TXOYSTERCREEKPD	44900	3501	TX_Statewide	project\vine\tx\txstate	txoystercreekpd
TXBURNETPD	44900	3563	TX_Statewide	project\vine\tx\txstate	txburnetpd
TXBROWNSVILLEPD	44900	3613	TX_Statewide	project\vine\tx\txstate	txbrownsvillepd
TXCOMBESPD	44900	3620	TX_Statewide	project\vine\tx\txstate	txcombespd
TXLAFERIAPD	44900	3629	TX_Statewide	project\vine\tx\txstate	txlaferiapd
TXLOSFRESNOSPD	44900	3632	TX_Statewide	project\vine\tx\txstate	txlosfresnospd
TXPRIMERAPD	44900	3636	TX_Statewide	project\vine\tx\txstate	txprimerapd
TXRIOHONDOPD	44900	3637	TX_Statewide	project\vine\tx\txstate	txriohondopd
TXSANBENITOPD	44900	3638	TX_Statewide	project\vine\tx\txstate	txsanbenitopd
TXSOUTHPADREISLANDPD	44900	3642	TX_Statewide	project\vine\tx\txstate	txsouthpadreislandpd
TXLAGUNAVISTAPD	44900	3658	TX_Statewide	project\vine\tx\txstate	txlagunavistapd
TXMONTBELVIEUPD	44900	3704	TX_Statewide	project\vine\tx\txstate	txmontbelvieupd
TXJACKSONVILLEPD	44900	3708	TX_Statewide	project\vine\tx\txstate	txjacksonvillepd
TXWYLIEPD	44900	3771	TX_Statewide	project\vine\tx\txstate	txwyliepd
TXMELISSAPD	44900	3781	TX_Statewide	project\vine\tx\txstate	txmelissapd
TXWEIMARPD	44900	3797	TX_Statewide	project\vine\tx\txstate	txweimarpd
TXADDISONPD	44900	3890	TX_Statewide	project\vine\tx\txstate	txaddisonpd
TXBALCHSPRINGSPD	44900	3901	TX_Statewide	project\vine\tx\txstate	txbalchspringspd
TXGRANDPRAIRIEPD	44900	3926	TX_Statewide	project\vine\tx\txstate	txgrandprairiepd
TXLANCASTERPD	44900	3933	TX_Statewide	project\vine\tx\txstate	txlancasterpd
TXMESQUITEPD	44900	3935	TX_Statewide	project\vine\tx\txstate	txmesquitepd
TXSEAGOVILLEPD	44900	3937	TX_Statewide	project\vine\tx\txstate	txseagovillepd
TXROWLETTPD	44900	3950	TX_Statewide	project\vine\tx\txstate	txrowlettpd
TXGLENNHEIGHTSPD	44900	3967	TX_Statewide	project\vine\tx\txstate	txglennheightspd
TXKRUMPD	44900	4007	TX_Statewide	project\vine\tx\txstate	txkrumpd
TXPILOTPOINTPD	44900	4010	TX_Statewide	project\vine\tx\txstate	txpilotpointpd
TXCORINTHPD	44900	4028	TX_Statewide	project\vine\tx\txstate	txcorinthpd
TXROANOKEPD	44900	4032	TX_Statewide	project\vine\tx\txstate	txroanokepd
TXBARTONVILLEPD	44900	4040	TX_Statewide	project\vine\tx\txstate	txbartonvillepd
TXNORTHLAKEPD	44900	4041	TX_Statewide	project\vine\tx\txstate	txnorthlakepd
TXFREERPD	44900	4074	TX_Statewide	project\vine\tx\txstate	txfreerpd
TXEASTLANDPD	44900	4085	TX_Statewide	project\vine\tx\txstate	txeastlandpd
TXRANGERPD	44900	4087	TX_Statewide	project\vine\tx\txstate	txrangerpd
TXFERRISPD	44900	4112	TX_Statewide	project\vine\tx\txstate	txferrispd
TXMILFORDPD	44900	4121	TX_Statewide	project\vine\tx\txstate	txmilfordpd
TXPALMERPD	44900	4122	TX_Statewide	project\vine\tx\txstate	txpalmerpd
TXWAXAHACHIEPD	44900	4125	TX_Statewide	project\vine\tx\txstate	txwaxahachiepd
TXCLINTPD	44900	4163	TX_Statewide	project\vine\tx\txstate	txclintpd
TXHORIZONPD	44900	4167	TX_Statewide	project\vine\tx\txstate	txhorizonpd
TXMISSOURICITYPD	44900	4244	TX_Statewide	project\vine\tx\txstate	txmissouricitypd
TXSTAFFORDPD	44900	4255	TX_Statewide	project\vine\tx\txstate	txstaffordpd
TXSUGARLANDPD	44900	4256	TX_Statewide	project\vine\tx\txstate	txsugarlandpd
TXCLEARLAKESHORESPD	44900	4306	TX_Statewide	project\vine\tx\txstate	txclearlakeshorespd
TXHITCHCOCKPD	44900	4320	TX_Statewide	project\vine\tx\txstate	txhitchcockpd
TXKEMAHPD	44900	4321	TX_Statewide	project\vine\tx\txstate	txkemahpd
TXTEXASCITYPD	44900	4325	TX_Statewide	project\vine\tx\txstate	txtexascitypd
TXFREDPD	44900	4352	TX_Statewide	project\vine\tx\txstate	txfredpd
TXGONZALESPD	44900	4366	TX_Statewide	project\vine\tx\txstate	txgonzalespd
TXPAMPAPD	44900	4378	TX_Statewide	project\vine\tx\txstate	txpampapd
TXGLADEWATER	44900	4412	TX_Statewide	project\vine\tx\txstate	txgladewaterpd
TXCIBOLOPD	44900	4452	TX_Statewide	project\vine\tx\txstate	txcibolopd
TXBAYTOWNPD	44900	4509	TX_Statewide	project\vine\tx\txstate	txbaytownpd
TXGALENAPARKPD	44900	4534	TX_Statewide	project\vine\tx\txstate	txgalenaparkpd
TXJACINTOCITYPD	44900	4539	TX_Statewide	project\vine\tx\txstate	txjacintocitypd
TXLAPORTEPD	44900	4541	TX_Statewide	project\vine\tx\txstate	txlaportepd
TXMORGANSPOINTPD	44900	4543	TX_Statewide	project\vine\tx\txstate	txmorganspointpd
TXPASADENAPD	44900	4544	TX_Statewide	project\vine\tx\txstate	txpasadenapd
TXSEABROOKPD	44900	4545	TX_Statewide	project\vine\tx\txstate	txseabrookpd
TXSPRINGVALLEYPD	44900	4549	TX_Statewide	project\vine\tx\txstate	txangletonpd
TXTOMBALLPD	44900	4550	TX_Statewide	project\vine\tx\txstate	txtomballpd
TXDONNAPD	44900	4685	TX_Statewide	project\vine\tx\txstate	txdonnapd
TXMERCEDESPD	44900	4699	TX_Statewide	project\vine\tx\txstate	txmercedespd
TXPHARRPD	44900	4701	TX_Statewide	project\vine\tx\txstate	txpharrpd
TXWESLACOPD	44900	4703	TX_Statewide	project\vine\tx\txstate	txweslacopd
TXPALMVIEWPD	44900	4712	TX_Statewide	project\vine\tx\txstate	txpalmviewpd
TXWHITNEYPD	44900	4733	TX_Statewide	project\vine\tx\txstate	txwhitneypd
TXSULPHURSPRINGSPD	44900	4763	TX_Statewide	project\vine\tx\txstate	txsulphurspringspd
TXBIGSPRINGPD	44900	4779	TX_Statewide	project\vine\tx\txstate	txbigspringpd
TXALICEPD	44900	4897	TX_Statewide	project\vine\tx\txstate	txalicepd
TXGRANDVIEWPD	44900	4918	TX_Statewide	project\vine\tx\txstate	txgrandviewpd
TXVENUSPD	44900	4927	TX_Statewide	project\vine\tx\txstate	txvenuspd
TXKAUFMANPD	44900	4962	TX_Statewide	project\vine\tx\txstate	txkaufmanpd
TXBOERNEPD	44900	4976	TX_Statewide	project\vine\tx\txstate	txboernepd
TXKERRVILLEPD	44900	4997	TX_Statewide	project\vine\tx\txstate	txkerrvillepd
TXKINGSVILLEPD	44900	5022	TX_Statewide	project\vine\tx\txstate	txkingsvillepd
TXHALLETTSVILLEPD	44900	5080	TX_Statewide	project\vine\tx\txstate	txhallettsvillepd
TXIDALOUPD	44900	5172	TX_Statewide	project\vine\tx\txstate	txidaloupd
TXLUBBOCKPD	44900	5179	TX_Statewide	project\vine\tx\txstate	txlubbockpd
TXSLATONPD	44900	5185	TX_Statewide	project\vine\tx\txstate	txslatonpd
TXBELLMEADPD	44900	5211	TX_Statewide	project\vine\tx\txstate	txbellmeadpd
TXBEVERLYHILLSPD	44900	5219	TX_Statewide	project\vine\tx\txstate	txbeverlyhillspd
TXLACYLAKEVIEWPD	44900	5230	TX_Statewide	project\vine\tx\txstate	txlacylakeviewpd
TXLORENAPD	44900	5232	TX_Statewide	project\vine\tx\txstate	txlorenapd
TXMCGREGORPD	44900	5234	TX_Statewide	project\vine\tx\txstate	txmcgregorpd
TXROBINSONPD	44900	5238	TX_Statewide	project\vine\tx\txstate	txrobinsonpd
TXWOODWAYPD	44900	5244	TX_Statewide	project\vine\tx\txstate	txwoodwaypd
TXBRUCEVILLEEDDYPD	44900	5255	TX_Statewide	project\vine\tx\txstate	txbrucevilleeddypd
TXBAYCITYPD	44900	5290	TX_Statewide	project\vine\tx\txstate	txbaycitypd
TXPALACIOSPD	44900	5295	TX_Statewide	project\vine\tx\txstate	txpalaciospd
TXCASTROVILLEPD	44900	5314	TX_Statewide	project\vine\tx\txstate	txcastrovillepd
TXHONDOPD	44900	5324	TX_Statewide	project\vine\tx\txstate	txhondopd
TXCONROEPD	44900	5384	TX_Statewide	project\vine\tx\txstate	txconroepd
TXSPLENDORAPD	44900	5391	TX_Statewide	project\vine\tx\txstate	txsplendorapd
TXPANORAMAPD	44900	5402	TX_Statewide	project\vine\tx\txstate	txpanoramapd
TXWILLISPD	44900	5405	TX_Statewide	project\vine\tx\txstate	txwillispd
TXBISHOPPD	44900	5483	TX_Statewide	project\vine\tx\txstate	txbishoppd
TXCORPUSCHRISTIPD	44900	5491	TX_Statewide	project\vine\tx\txstate	txcorpuschristipd
TXPERRYTONPD	44900	5511	TX_Statewide	project\vine\tx\txstate	txperrytonpd
TXHUDSONOAKSPD	44900	5565	TX_Statewide	project\vine\tx\txstate	txhudsonoakspd
TXFORTSTOCKTONPD	44900	5576	TX_Statewide	project\vine\tx\txstate	txfortstocktonpd
TXLIVINGSTONPD	44900	5590	TX_Statewide	project\vine\tx\txstate	txlivingstonpd
TXCANYONPD	44900	5622	TX_Statewide	project\vine\tx\txstate	txcanyonpd
TXROYSECITYPD	44900	5685	TX_Statewide	project\vine\tx\txstate	txroysecitypd
TXHEATHDPS	44900	5687	TX_Statewide	project\vine\tx\txstate	txheathdps
TXMATHISPD	44900	5741	TX_Statewide	project\vine\tx\txstate	txmathispd
TXPORTLANDPD	44900	5742	TX_Statewide	project\vine\tx\txstate	txportlandpd
TXSINTONPD	44900	5744	TX_Statewide	project\vine\tx\txstate	txsintonpd
TXGREGORYPD	44900	5748	TX_Statewide	project\vine\tx\txstate	txgregorypd
TXRIOGRANDEPD	44900	5842	TX_Statewide	project\vine\tx\txstate	txriograndepd
TXROMAPD	44900	5846	TX_Statewide	project\vine\tx\txstate	txromapd
TXSONORAPD	44900	5867	TX_Statewide	project\vine\tx\txstate	txsonorapd
TXDALWORTHINGTONPD	44900	5911	TX_Statewide	project\vine\tx\txstate	txdalworthingtonpd
TXEULESSPD	44900	5915	TX_Statewide	project\vine\tx\txstate	txeulesspd
TX	44900	5917	TX_Statewide	project\vine\tx\txstate	txevermanpd
TXGRAPEVINEPD	44900	5923	TX_Statewide	project\vine\tx\txstate	txgrapevinepd
TXHURSTPD	44900	5927	TX_Statewide	project\vine\tx\txstate	txhurstpd
TXLAKEWORTHPD	44900	5933	TX_Statewide	project\vine\tx\txstate	txlakeworthpd
TXNRHPD	44900	5937	TX_Statewide	project\vine\tx\txstate	txnrhpd
TXWESTWORTHVILLAGEPD	44900	5950	TX_Statewide	project\vine\tx\txstate	txwestworthvillagepd
TXKELLERPD	44900	5954	TX_Statewide	project\vine\tx\txstate	txkellerpd
TXPANTEGOPD	44900	5955	TX_Statewide	project\vine\tx\txstate	txpantegopd
TXCOLLEYVILLEPD	44900	5962	TX_Statewide	project\vine\tx\txstate	txcolleyvillepd
TXABILENEPD	44900	5979	TX_Statewide	project\vine\tx\txstate	txabilenepd
TXTDCJCJAD	44900	6041	TX_Statewide	project\vine\tx\txstate	txtdcjcjad
TXMANORPD	44900	6047	TX_Statewide	project\vine\tx\txstate	txmanorpd
TXWESTLAKEHILLSPD	44900	6060	TX_Statewide	project\vine\tx\txstate	txwestlakehillspd
TXUTPD	44900	6064	TX_Statewide	project\vine\tx\txstate	txutpd
TXPFLUGERVILLEPD	44900	6073	TX_Statewide	project\vine\tx\txstate	txpflugervillepd
TXLAKEWAYPD	44900	6076	TX_Statewide	project\vine\tx\txstate	txlakewaypd
TXSUNSETVALLEYPD	44900	6088	TX_Statewide	project\vine\tx\txstate	txsunsetvalleypd
TXUVALDEPD	44900	6145	TX_Statewide	project\vine\tx\txstate	txuvaldepd
TXGRANDSALINEPD	44900	6174	TX_Statewide	project\vine\tx\txstate	txgrandsalinepd
TXMONAHANSPD	44900	6229	TX_Statewide	project\vine\tx\txstate	txmonahanspd
TXRAYMONDVILLEPD	44900	6313	TX_Statewide	project\vine\tx\txstate	txraymondvillepd
TXFLORENCEPD	44900	6319	TX_Statewide	project\vine\tx\txstate	txflorencepd
TXGEORGETOWNPD	44900	6324	TX_Statewide	project\vine\tx\txstate	txgeorgetownpd
TXROUNDROCKPD	44900	6330	TX_Statewide	project\vine\tx\txstate	txroundrockpd
TXTAYLORPD	44900	6332	TX_Statewide	project\vine\tx\txstate	txtaylorpd
TXCEDARPARKPD	44900	6335	TX_Statewide	project\vine\tx\txstate	txcedarparkpd
TXLEANDERPD	44900	6340	TX_Statewide	project\vine\tx\txstate	txleanderpd
 TXLAVERNIAPD	44900	6354	TX_Statewide	project\vine\tx\txstate	txlaverniapd
TXBRIDGEPORTPD	44900	6362	TX_Statewide	project\vine\tx\txstate	txbridgeportpd
TXTEMPLECOLLEGE	44900	6424	TX_Statewide	project\vine\tx\txstate	txtemplecollege
TXBULVERDEPD	44900	6491	TX_Statewide	project\vine\tx\txstate	txbulverdepd
TXANNAPD	44900	6540	TX_Statewide	project\vine\tx\txstate	txannapd
NEPHOTOCEDAR	28500	9	NE_PHOTO	project\vine\ne\nephoto	nephotocedar
NEPHOTOHALL	28500	10	NE_PHOTO	project\vine\ne\nephoto	nephotohall
NEPHOTOHAMILTON	28500	11	NE_PHOTO	project\vine\ne\nephoto	nephotohamilton
NEPHOTOHARLAN	28500	12	NE_PHOTO	project\vine\ne\nephoto	nephotoharlan
NEPHOTOCOLFAX	28500	13	NE_PHOTO	project\vine\ne\nephoto	nephotocolfax
NEPHOTOCUSTER	28500	14	NE_PHOTO	project\vine\ne\nephoto	nephotocuster
NEPHOTODAKOTA	28500	15	NE_PHOTO	project\vine\ne\nephoto	nephotodakota
NEPHOTODIXON	28500	16	NE_PHOTO	project\vine\ne\nephoto	nephotodixon
NEPHOTODOUGLAS	28500	17	NE_PHOTO	project\vine\ne\nephoto	nephotodouglas
NEPHOTOLINCOLN	28500	18	NE_PHOTO	project\vine\ne\nephoto	nephotolincoln
NEPHOTOFRANKLIN	28500	19	NE_PHOTO	project\vine\ne\nephoto	nephotofranklin
NEPHOTOFURNAS	28500	20	NE_PHOTO	project\vine\ne\nephoto	nephotofurnas
NEPHOTOGAGE	28500	21	NE_PHOTO	project\vine\ne\nephoto	nephotogage
NEPHOTOPHELPS	28500	22	NE_PHOTO	project\vine\ne\nephoto	nephotophelps
NEPHOTOPOLK	28500	23	NE_PHOTO	project\vine\ne\nephoto	nephotopolk
NEPHOTONEMAHA	28500	24	NE_PHOTO	project\vine\ne\nephoto	nephotonemaha
LAORLEANSJA	19000	36	LA_LASTATE	project\vine\la\lastate	laorleansja
NEPHOTOMCCOOK	28500	25	NE_PHOTO	project\vine\ne\nephoto	nephotomccook
NEPHOTORICHARDSON	28500	26	NE_PHOTO	project\vine\ne\nephoto	nephotorichardson
NEPHOTOMADISON	28500	27	NE_PHOTO	project\vine\ne\nephoto	nephotomadison
NEPHOTONORFOLK	28500	28	NE_PHOTO	project\vine\ne\nephoto	nephotonorfolk
NEPHOTOJEFFERSON	28500	29	NE_PHOTO	project\vine\ne\nephoto	nephotojefferson
NEPHOTONUCKOLLS	28500	30	NE_PHOTO	project\vine\ne\nephoto	nephotonuckolls
NEPHOTOSEWARD	28500	31	NE_PHOTO	project\vine\ne\nephoto	nephotoseward
NEPHOTOTHAYER	28500	32	NE_PHOTO	project\vine\ne\nephoto	nephotothayer
NEPHOTOVALLEY	28500	33	NE_PHOTO	project\vine\ne\nephoto	nephotovalley
NEPHOTOMERRICK	28500	34	NE_PHOTO	project\vine\ne\nephoto	nephotomerrick
NEPHOTOSARPY	28500	35	NE_PHOTO	project\vine\ne\nephoto	nephotosarpy
NEPHOTOWASHINGTON	28500	36	NE_PHOTO	project\vine\ne\nephoto	nephotowashington
NEPHOTOSALINE	28500	37	NE_PHOTO	project\vine\ne\nephoto	nephotosaline
NEPHOTOWEBSTER	28500	38	NE_PHOTO	project\vine\ne\nephoto	nephotowebster
NEPHOTOCHASE	28500	39	NE_PHOTO	project\vine\ne\nephoto	nephotochase
NEPHOTODAWES	28500	40	NE_PHOTO	project\vine\ne\nephoto	nephotodawes
NEPHOTODEUEL	28500	41	NE_PHOTO	project\vine\ne\nephoto	nephotodeuel
NEPHOTOKEITH	28500	42	NE_PHOTO	project\vine\ne\nephoto	nephotokeith
NEPHOTOSHERIDAN	28500	43	NE_PHOTO	project\vine\ne\nephoto	nephotosheridan
NEPHOTOOTOE	28500	44	NE_PHOTO	project\vine\ne\nephoto	nephotootoe
NEPHOTOKEARNEY	28500	45	NE_PHOTO	project\vine\ne\nephoto	nephotokearney
NEPHOTOBOXBUTTE	28500	46	NE_PHOTO	project\vine\ne\nephoto	nephotoboxbutte
NEPHOTODUNDY	28500	47	NE_PHOTO	project\vine\ne\nephoto	nephotodundy
NEPHOTOCHEYENNE	28500	48	NE_PHOTO	project\vine\ne\nephoto	nephotocheyenne
NEPHOTOROCK	28500	49	NE_PHOTO	project\vine\ne\nephoto	nephotorock
NEPHOTOFRONTIER	28500	50	NE_PHOTO	project\vine\ne\nephoto	nephotofrontier
NEPHOTOKNOX	28500	51	NE_PHOTO	project\vine\ne\nephoto	nephotoknox
NEPHOTOBUTLER	28500	52	NE_PHOTO	project\vine\ne\nephoto	nephotobutler
NEPHOTOFILMORE	28500	53	NE_PHOTO	project\vine\ne\nephoto	nephotofilmore
NEPHOTODOC	28500	54	NE_PHOTO	project\vine\ne\nephoto	nephotodoc
NEPHOTODAWSON	28500	55	NE_PHOTO	project\vine\ne\nephoto	nephotodawson
NEPHOTOJOHNSON	28500	56	NE_PHOTO	project\vine\ne\nephoto	nephotojohnson
NEPHOTOTHURSTON	28500	57	NE_PHOTO	project\vine\ne\nephoto	nephotothurston
NEPHOTOSCOTTSBLUFF	28500	58	NE_PHOTO	project\vine\ne\nephoto	nephotoscottsbluff
NEPHOTOPIERCE	28500	59	NE_PHOTO	project\vine\ne\nephoto	nephotopierce
NEPHOTOHOLT	28500	60	NE_PHOTO	project\vine\ne\nephoto	nephotoholt
NEPHOTOKIMBALL	28500	63	NE_PHOTO	project\vine\ne\nephoto	nephotokimball
NEPHTOLANCASTERJUVE	28500	64	NE_PHOTO	project\vine\ne\nephoto	nephtolancasterjuve
NEPHOTOSARPYJUVE	28500	65	NE_PHOTO	project\vine\ne\nephoto	nephotosarpyjuve
NEPHOTOGARDEN	28500	66	NE_PHOTO	project\vine\ne\nephoto	nephotogarden
NEPHOTOBOONE	28500	67	NE_PHOTO	project\vine\ne\nephoto	nephotoboone
NEPHOTOPLATTE	28500	68	NE_PHOTO	project\vine\ne\nephoto	nephotoplatte
NEPHOTOYORK	28500	69	NE_PHOTO	project\vine\ne\nephoto	nephotoyork
NEPHOTOLANCASTERCT	28500	70	NE_PHOTO	project\vine\ne\nephoto	nephotolancasterct
NEPHOTOMORRILL	28500	71	NE_PHOTO	project\vine\ne\nephoto	nephotomorrill
NEPHOTOSAUNDERS	28500	72	NE_PHOTO	project\vine\ne\nephoto	nephotosaunders
NEPHOTOLANCASTER	28500	61	NE_PHOTO	project\vine\ne\nephoto	nephotolancaster
NEPHOTOHITCHCOCK	28500	62	NE_PHOTO	project\vine\ne\nephoto	nephotohitchcock
NCCHOWANPR	34003	1020	NC_STATE	project\vine\nc\ncstate	ncchowanpr
WACOWLITZJA	48626	12	WA_WASTATE	project\vine\wa\wastate	wacowlitzja
WAOLYMPIAPD	48626	38	WA_WASTATE	project\vine\wa\wastate	waolympiapd
NCCLAYPR	34003	1021	NC_STATE	project\vine\nc\ncstate	ncclaypr
LAEASTCARROLLJA	19000	18	LA_LASTATE	project\vine\la\lastate	laeastcarrollja
WAFRANKLINJA	48626	16	WA_WASTATE	project\vine\wa\wastate	wafranklinja
UTAPP	45000	2505	UT_UTSTATE	project\vine\ut\utstate	utapp
OKADAIRJA	37000	1	OK_OKSTATE	project\vine\ok\okstate	okadairja
OKALFALFAJA	37000	2	OK_OKSTATE	project\vine\ok\okstate	okalfalfaja
OKATOKAJA	37000	3	OK_OKSTATE	project\vine\ok\okstate	okatokaja
OKBEAVERJA	37000	4	OK_OKSTATE	project\vine\ok\okstate	okbeaverja
OKBECKHAMJA	37000	5	OK_OKSTATE	project\vine\ok\okstate	okbeckhamja
OKBLAINEJA	37000	6	OK_OKSTATE	project\vine\ok\okstate	okblaineja
OKBRYANJA	37000	7	OK_OKSTATE	project\vine\ok\okstate	okbryanja
OKCADDOJA	37000	8	OK_OKSTATE	project\vine\ok\okstate	okcaddoja
OKCANADIANJA	37000	9	OK_OKSTATE	project\vine\ok\okstate	okcanadianja
OKCARTERJA	37000	10	OK_OKSTATE	project\vine\ok\okstate	okcarterja
OKCHEROKEEJA	37000	11	OK_OKSTATE	project\vine\ok\okstate	okcherokeeja
OKCHOCTAWJA	37000	12	OK_OKSTATE	project\vine\ok\okstate	okchoctawja
OKCIMARRONJA	37000	13	OK_OKSTATE	project\vine\ok\okstate	okcimarronja
OKCLEVELANDJA	37000	14	OK_OKSTATE	project\vine\ok\okstate	okclevelandja
OKCOALJA	37000	15	OK_OKSTATE	project\vine\ok\okstate	okcoalja
OKCOTTONJA	37000	16	OK_OKSTATE	project\vine\ok\okstate	okcottonja
OKCOMANCHEJA	37000	17	OK_OKSTATE	project\vine\ok\okstate	okcomancheja
OKCRAIGJA	37000	18	OK_OKSTATE	project\vine\ok\okstate	okcraigja
OKCREEKJA	37000	19	OK_OKSTATE	project\vine\ok\okstate	okcreekja
OKCUSTERJA	37000	20	OK_OKSTATE	project\vine\ok\okstate	okcusterja
OKDELAWAREJA	37000	21	OK_OKSTATE	project\vine\ok\okstate	okdelawareja
OKDEWEYJA	37000	22	OK_OKSTATE	project\vine\ok\okstate	okdeweyja
OKELLISJA	37000	23	OK_OKSTATE	project\vine\ok\okstate	okellisja
OKGARFIELDJA	37000	24	OK_OKSTATE	project\vine\ok\okstate	okgarfieldja
OKGARVINJA	37000	25	OK_OKSTATE	project\vine\ok\okstate	okgarvinja
OKGRADYJA	37000	26	OK_OKSTATE	project\vine\ok\okstate	okgradyja
OKGRANTJA	37000	27	OK_OKSTATE	project\vine\ok\okstate	okgrantja
OKGREERJA	37000	28	OK_OKSTATE	project\vine\ok\okstate	okgreerja
OKHARMONJA	37000	29	OK_OKSTATE	project\vine\ok\okstate	okharmonja
OKHARPERJA	37000	30	OK_OKSTATE	project\vine\ok\okstate	okharperja
OKHASKELLJA	37000	31	OK_OKSTATE	project\vine\ok\okstate	okhaskellja
OKHUGHESJA	37000	32	OK_OKSTATE	project\vine\ok\okstate	okhughesja
OKJACKSONJA	37000	33	OK_OKSTATE	project\vine\ok\okstate	okjacksonja
OKJEFFERSONJA	37000	34	OK_OKSTATE	project\vine\ok\okstate	okjeffersonja
OKJOHNSTONJA	37000	35	OK_OKSTATE	project\vine\ok\okstate	okjohnstonja
OKKAYJA	37000	36	OK_OKSTATE	project\vine\ok\okstate	okkayja
OKKINGFISHERJA	37000	37	OK_OKSTATE	project\vine\ok\okstate	okkingfisherja
OKKIOWAJA	37000	38	OK_OKSTATE	project\vine\ok\okstate	okkiowaja
OKLATIMERJA	37000	39	OK_OKSTATE	project\vine\ok\okstate	oklatimerja
OKLEFLOREJA	37000	40	OK_OKSTATE	project\vine\ok\okstate	oklefloreja
OKLINCOLNJA	37000	41	OK_OKSTATE	project\vine\ok\okstate	oklincolnja
OKLOGANJA	37000	42	OK_OKSTATE	project\vine\ok\okstate	okloganja
OKLOVEJA	37000	43	OK_OKSTATE	project\vine\ok\okstate	okloveja
OKMAJORJA	37000	44	OK_OKSTATE	project\vine\ok\okstate	okmajorja
OKMARSHALLJA	37000	45	OK_OKSTATE	project\vine\ok\okstate	okmarshallja
OKMAYESJA	37000	46	OK_OKSTATE	project\vine\ok\okstate	okmayesja
OKMCCLAINJA	37000	47	OK_OKSTATE	project\vine\ok\okstate	okmcclainja
OKMCCURTAINJA	37000	48	OK_OKSTATE	project\vine\ok\okstate	okmccurtainja
OKMURRAYJA	37000	50	OK_OKSTATE	project\vine\ok\okstate	okmurrayja
OKMUSKOGEEJA	37000	51	OK_OKSTATE	project\vine\ok\okstate	okmuskogeeja
OKNOBLEJA	37000	52	OK_OKSTATE	project\vine\ok\okstate	oknobleja
OKNOWATAJA	37000	53	OK_OKSTATE	project\vine\ok\okstate	oknowataja
OKOKFUSKEEJA	37000	54	OK_OKSTATE	project\vine\ok\okstate	okokfuskeeja
OKOKLAHOMAJA	37000	55	OK_OKSTATE	project\vine\ok\okstate	okoklahomaja
OKOKMULGEEJA	37000	56	OK_OKSTATE	project\vine\ok\okstate	okokmulgeeja
OKOSAGEJA	37000	57	OK_OKSTATE	project\vine\ok\okstate	okosageja
OKOTTAWAJA	37000	58	OK_OKSTATE	project\vine\ok\okstate	okottawaja
OKPAWNEEJA	37000	59	OK_OKSTATE	project\vine\ok\okstate	okpawneeja
OKPAYNEJA	37000	60	OK_OKSTATE	project\vine\ok\okstate	okpayneja
OKPITTSBURGJA	37000	61	OK_OKSTATE	project\vine\ok\okstate	okpittsburgja
OKPONTOTOCJA	37000	62	OK_OKSTATE	project\vine\ok\okstate	okpontotocja
OKPOTTAWATOMIJA	37000	63	OK_OKSTATE	project\vine\ok\okstate	okpottawatomija
OKPUSHMATAHAJA	37000	64	OK_OKSTATE	project\vine\ok\okstate	okpushmatahaja
OKROGERSJA	37000	66	OK_OKSTATE	project\vine\ok\okstate	okrogersja
OKROGERMILLSJA	37000	67	OK_OKSTATE	project\vine\ok\okstate	okrogermillsja
OKSEMINOLEJA	37000	68	OK_OKSTATE	project\vine\ok\okstate	okseminoleja
OKSEQUOYAHJA	37000	69	OK_OKSTATE	project\vine\ok\okstate	oksequoyahja
OKSEQUOYAHCC	37000	70	OK_OKSTATE	project\vine\ok\okstate	oksequoyahcc
OKSTEPHENSJA	37000	71	OK_OKSTATE	project\vine\ok\okstate	okstephensja
OKTEXASJA	37000	72	OK_OKSTATE	project\vine\ok\okstate	oktexasja
OKTILLMANJA	37000	73	OK_OKSTATE	project\vine\ok\okstate	oktillmanja
OKTULSA	37000	74	OK_OKSTATE	project\vine\ok\okstate	oktulsa
OKWAGONERJA	37000	75	OK_OKSTATE	project\vine\ok\okstate	okwagonerja
OKWASHINGTONJA	37000	76	OK_OKSTATE	project\vine\ok\okstate	okwashingtonja
OKWASHITAJA	37000	77	OK_OKSTATE	project\vine\ok\okstate	okwashitaja
OKWOODSJA	37000	78	OK_OKSTATE	project\vine\ok\okstate	okwoodsja
OKWOODWARDJA	37000	79	OK_OKSTATE	project\vine\ok\okstate	okwoodwardja
FLFDLESO	10000	20001	FLState	project\vine\fl\flstate	flfdleso
FLDOCWATCH	10000	20002	FLState	project\vine\fl\flstate	fldocwatch
ARDUMASCITYJA_1	104999	497	AR_ARSTATE_1	project\vine\ar\arstate_1	ardumascityja
ARASHLEYQA_1	104999	499	AR_ARSTATE_1	project\vine\ar\arstate_1	arashlja
ARSECURUS_1	104999	500	AR_ARSTATE_1	project\vine\ar\arstate_1	arsecurus
ARDSIHOSTJA_1	104999	515	AR_ARSTATE_1	project\vine\ar\arstate_1	ardsihostja
ARCABOTPD_1	104999	2036	AR_ARSTATE_1	project\vine\ar\arstate_1	arcabotpd
FLMIAMIDADESAO	10012	1	FL_MIAMIDADESAO	project\vine\fl\flmiamidadesao	
VARICHMONDJA	47000	123	VA_VASTATE	project\vine\va\vastate	varichmondja
VASUFFOLKCITYJA	47000	126	VA_VASTATE	project\vine\va\vastate	vasuffolkcityja
VAVABEACHCITYJA	47000	127	VA_VASTATE	project\vine\va\vastate	vavabeachcityja
VAHAMPTONROADSJA	47000	131	VA_VASTATE	project\vine\va\vastate	vahamptonroadsja
VADANVILLEJF	47000	134	VA_VASTATE	project\vine\va\vastate	vadanvillejf
ARDCC_1	104999	2502	AR_ARSTATE_1	project\vine\ar\arstate_1	ardcc
ARCARLISLEPD_1	104999	2043	AR_ARSTATE_1	project\vine\ar\arstate_1	arcarlislepd
ARDERMOTTPD_1	104999	2068	AR_ARSTATE_1	project\vine\ar\arstate_1	ardermottpd
ARENGLANDPD_1	104999	2085	AR_ARSTATE_1	project\vine\ar\arstate_1	arenglandpd
AREUREKAPD_1	104999	2088	AR_ARSTATE_1	project\vine\ar\arstate_1	areurekapd
ARLONOKEPD_1	104999	2168	AR_ARSTATE_1	project\vine\ar\arstate_1	arlonokepd
AROSCEOLAPD_1	104999	2213	AR_ARSTATE_1	project\vine\ar\arstate_1	arosceolapd
ARWASHINGTONJA	4999	185	AR_ARSTATE	project\vine\ar\arstate	arwashingtonja
TAGENCYONE	99999950	1	Test Site Zero	project\vine\test\testsitezero	
TAGENCYTWO	99999950	2	Test Site Zero	project\vine\test\testsitezero	
TAGENCYTHREE	99999950	3	Test Site Zero	project\vine\test\testsitezero	
TAGENCYFOUR	99999950	4	Test Site Zero	project\vine\test\testsitezero	
TAGENCYFIVE	99999950	5	Test Site Zero	project\vine\test\testsitezero	
TAGENCYSIX	99999950	6	Test Site Zero	project\vine\test\testsitezero	
TAGENCYSEVEN	99999950	7	Test Site Zero	project\vine\test\testsitezero	
TAGENCYEIGHT	99999950	8	Test Site Zero	project\vine\test\testsitezero	
TAGENCYNINE	99999950	9	Test Site Zero	project\vine\test\testsitezero	
TAGENCYTEN	99999950	10	Test Site Zero	project\vine\test\testsitezero	
TAGENCYONESONE	99999951	1	Test Site One	project/vine/test/testsiteone	
TESTAGENCYTWOSONE	99999951	2	Test Site One	project/vine/test/testsiteone	
TESTAGENCYTHREESONE	99999951	3	Test Site One	project/vine/test/testsiteone	
TAGENCYEIGHTSONE	99999951	8	Test Site One	project/vine/test/testsiteone	
TXSECURUS	44900	1201	TX_Statewide	project\vine\tx\txstate	txsecurus
MTDOC_01	1027001	58	MT_MTDOC_1	project\vine\mt\mtdoc_1	
TXDPSSOR	44900	6636	TX_Statewide	project\vine\tx\txstate	txdpssor
VASHENANDOAHJA	47000	311	VA_VASTATE	project\vine\va\vastate	vashenandoahja
VASOUTHAMPTONJA	47000	313	VA_VASTATE	project\vine\va\vastate	vasouthamptonja
VAWARRENJA	47000	319	VA_VASTATE	project\vine\va\vastate	vawarrenja
VAPIEDMONTREGIONALJA	47000	325	VA_VASTATE	project\vine\va\vastate	vapiedmontregionalja
VANONECKJA	47000	327	VA_VASTATE	project\vine\va\vastate	vanoneckja
VAALLEGHANYJA	47000	229	VA_VASTATE	project\vine\va\vastate	vaalleghanyja
VAAMHERSTJA	47000	231	VA_VASTATE	project\vine\va\vastate	vaamherstja
VAAPPOMATTOXJA	47000	232	VA_VASTATE	project\vine\va\vastate	vaappomattoxja
VAARLINGTONJA	47000	233	VA_VASTATE	project\vine\va\vastate	vaarlingtonja
VAAUGUSTAJA	47000	234	VA_VASTATE	project\vine\va\vastate	vaaugustaja
VABATHJA	47000	235	VA_VASTATE	project\vine\va\vastate	vabathja
VABEDFORDJA	47000	236	VA_VASTATE	project\vine\va\vastate	vabedfordja
VABLANDJA	47000	237	VA_VASTATE	project\vine\va\vastate	vablandja
VABRUNSWICKJA	47000	239	VA_VASTATE	project\vine\va\vastate	vabrunswickja
VABUCHANANJA	47000	240	VA_VASTATE	project\vine\va\vastate	vabuchananja
VACAROLINEJA	47000	243	VA_VASTATE	project\vine\va\vastate	vacarolineja
VACHESTERFIELDVA	47000	250	VA_VASTATE	project\vine\va\vastate	vachesterfieldva
VACRAIGJA	47000	252	VA_VASTATE	project\vine\va\vastate	vacraigja
VADICKENSONJA	47000	255	VA_VASTATE	project\vine\va\vastate	vadickensonja
VADINWIDDIEJA	47000	256	VA_VASTATE	project\vine\va\vastate	vadinwiddieja
VAESSEXJA	47000	257	VA_VASTATE	project\vine\va\vastate	vaessexja
VAFAIRFAXJA	47000	258	VA_VASTATE	project\vine\va\vastate	vafairfaxja
VAFLOYDJA	47000	260	VA_VASTATE	project\vine\va\vastate	vafloydja
VAFLUVANNAJA	47000	261	VA_VASTATE	project\vine\va\vastate	vafluvannaja
VAFRANKLINJA	47000	262	VA_VASTATE	project\vine\va\vastate	vafranklinja
VAGLOUCESTERJA	47000	265	VA_VASTATE	project\vine\va\vastate	vagloucesterja
VAISLEJA	47000	275	VA_VASTATE	project\vine\va\vastate	vaisleja
VALANCASTERJA	47000	281	VA_VASTATE	project\vine\va\vastate	valancasterja
VALOUDOUNJA	47000	283	VA_VASTATE	project\vine\va\vastate	valoudounja
VALUNENBURGJA	47000	285	VA_VASTATE	project\vine\va\vastate	valunenburgja
VAMECKLENBURGJA	47000	288	VA_VASTATE	project\vine\va\vastate	vamecklenburgja
VAMIDPENJA	47000	289	VA_VASTATE	project\vine\va\vastate	vamidpenja
VAMONTGOMERYJA	47000	290	VA_VASTATE	project\vine\va\vastate	vamontgomeryja
VANORTHAMPTONJA	47000	293	VA_VASTATE	project\vine\va\vastate	vanorthamptonja
VANOTTOWAYJA	47000	295	VA_VASTATE	project\vine\va\vastate	vanottowayja
VAPAGEJA	47000	297	VA_VASTATE	project\vine\va\vastate	vapageja
VAPATRICKJA	47000	298	VA_VASTATE	project\vine\va\vastate	vapatrickja
VAPITTSYLVANIAJA	47000	299	VA_VASTATE	project\vine\va\vastate	vapittsylvaniaja
VAPRINCEWMJA	47000	302	VA_VASTATE	project\vine\va\vastate	vaprincewmja
VAROCKINGHAMJA	47000	308	VA_VASTATE	project\vine\va\vastate	varockinghamja
WASNOHOMISHJA	48626	47	WA_WASTATE	project\vine\wa\wastate	wasnohomishja
WYDOC	51000	1	WY_WYSTATE	project\vine\wy\wystate	wydoc
WYALBANYJA	51000	2	WY_WYSTATE	project\vine\wy\wystate	wyalbanyja
WYBIGHORNJA	51000	3	WY_WYSTATE	project\vine\wy\wystate	wybighornja
WYCAMPBELLJA	51000	6	WY_WYSTATE	project\vine\wy\wystate	wycampbellja
WYCARBONJA	51000	5	WY_WYSTATE	project\vine\wy\wystate	wycarbonja
WYCONVERSEJA	51000	7	WY_WYSTATE	project\vine\wy\wystate	wyconverseja
WYCROOKJA	51000	8	WY_WYSTATE	project\vine\wy\wystate	wycrookja
WYFREMONTJA	51000	9	WY_WYSTATE	project\vine\wy\wystate	wyfremontja
WYGOSHENJA	51000	10	WY_WYSTATE	project\vine\wy\wystate	wygoshenja
WYHOTSPRINGSJA	51000	11	WY_WYSTATE	project\vine\wy\wystate	wyhotspringsja
WYJOHNSONJA	51000	12	WY_WYSTATE	project\vine\wy\wystate	wyjohnsonja
WYLARAMIEJA	51000	13	WY_WYSTATE	project\vine\wy\wystate	wylaramieja
WYLINCOLNJA	51000	14	WY_WYSTATE	project\vine\wy\wystate	wylincolnja
WYNATRONAJA	51000	15	WY_WYSTATE	project\vine\wy\wystate	wynatronaja
WYNIOBRARAJA	51000	16	WY_WYSTATE	project\vine\wy\wystate	wyniobraraja
WYPARKJA	51000	17	WY_WYSTATE	project\vine\wy\wystate	wyparkja
WYPLATTEJA	51000	18	WY_WYSTATE	project\vine\wy\wystate	wyplatteja
WYSHERIDANJA	51000	19	WY_WYSTATE	project\vine\wy\wystate	wysheridanja
WYSUBLETTEJA	51000	20	WY_WYSTATE	project\vine\wy\wystate	wysubletteja
WYSWEETWATERJA	51000	21	WY_WYSTATE	project\vine\wy\wystate	wysweetwaterja
WYTETONJA	51000	22	WY_WYSTATE	project\vine\wy\wystate	wytetonja
WYUINTAJA	51000	23	WY_WYSTATE	project\vine\wy\wystate	wyuintaja
WYWASHAKIEJA	51000	24	WY_WYSTATE	project\vine\wy\wystate	wywashakieja
WYWESTONJA	51000	25	WY_WYSTATE	project\vine\wy\wystate	wywestonja
VADCC	47000	900	VA_VASTATE	project\vine\va\vastate	vadcc
VACOLDSPRINGSJA	47000	8	VA_VASTATE	project\vine\va\vastate	vacoldspringsja
VASOUTHAMPTONCC	47000	50	VA_VASTATE	project\vine\va\vastate	vasouthamptoncc
VACOFFEEWOODJA	47000	64	VA_VASTATE	project\vine\va\vastate	vacoffeewoodja
VAWALLENSJA	47000	92	VA_VASTATE	project\vine\va\vastate	vawallensja
VALAWRENCEVILLEJA	47000	97	VA_VASTATE	project\vine\va\vastate	valawrencevilleja
VAALEXANDRIAJA	47000	103	VA_VASTATE	project\vine\va\vastate	vaalexandriaja
VABRISTOLJA	47000	104	VA_VASTATE	project\vine\va\vastate	vabristolja
VACHARLOTTESVILLE	47000	105	VA_VASTATE	project\vine\va\vastate	vacharlottesville
VACOLONIALJA	47000	108	VA_VASTATE	project\vine\va\vastate	vacolonialja
VADANVILLEJA	47000	109	VA_VASTATE	project\vine\va\vastate	vadanvilleja
VAFALLSCHURCHJA	47000	111	VA_VASTATE	project\vine\va\vastate	vafallschurchja
VAHAMPTONJA	47000	113	VA_VASTATE	project\vine\va\vastate	vahamptonja
VAMARTINSVILLEJA	47000	116	VA_VASTATE	project\vine\va\vastate	vamartinsvilleja
VAFAIRFAXDAYJA	47000	374	VA_VASTATE	project\vine\va\vastate	vafairfaxdayja
VANEWRIVERJA	47000	383	VA_VASTATE	project\vine\va\vastate	vanewriverja
VAPEUMANSENDJA	47000	435	VA_VASTATE	project\vine\va\vastate	vapeumansendja
VARAPPAHANNOCKREGJA	47000	436	VA_VASTATE	project\vine\va\vastate	varappahannockregja
VAUNDISCLOSEDJA	47000	444	VA_VASTATE	project\vine\va\vastate	vaundisclosedja
VARAPPAHANNOCKJA	47000	304	VA_VASTATE	project\vine\va\vastate	varappahannockja
VANWREGIONALJA	47000	1	VA_VASTATE	project\vine\va\vastate	vanwregionalja
VAWESTERNTIDEWATERJA	47000	445	VA_VASTATE	project\vine\va\vastate	vawesterntidewaterja
VAAMELIAJA	47000	230	VA_VASTATE	project\vine\va\vastate	vaameliaja
VABUCKINGHAMJA	47000	241	VA_VASTATE	project\vine\va\vastate	vabuckinghamja
VACHARLESJA	47000	245	VA_VASTATE	project\vine\va\vastate	vacharlesja
VACUMBERLANDJA	47000	254	VA_VASTATE	project\vine\va\vastate	vacumberlandja
VAHALIFAXJA	47000	270	VA_VASTATE	project\vine\va\vastate	vahalifaxja
VAHENRYJA	47000	273	VA_VASTATE	project\vine\va\vastate	vahenryja
VANORFOLKJA	47000	118	VA_VASTATE	project\vine\va\vastate	vanorfolkja
VAROANOKECITYJA	47000	124	VA_VASTATE	project\vine\va\vastate	varoanokecityja
VASOUTHSIDEJA	47000	269	VA_VASTATE	project\vine\va\vastate	vasouthsideja
VAMIDDLERIVERJA	47000	446	VA_VASTATE	project\vine\va\vastate	vamiddleriverja
VACARROLLJA	47000	244	VA_VASTATE	project\vine\va\vastate	vacarrollja
VAEMPORIAJA	47000	110	VA_VASTATE	project\vine\va\vastate	vaemporiaja
IASTORYJA	16000	86	IA_IASTATE	project\vine\ia\iastate\	iastoryja
IAPOLKJA	16000	78	IA_IASTATE	project\vine\ia\iastate\	iapolkja
VAACCOMACKJA	47000	227	VA_VASTATE	project\vine\va\vastate	vaaccomackja
IAADAIRJA	16000	2	IA_IASTATE	project\vine\ia\iastate\	iaadairja
IAADAMSJA	16000	3	IA_IASTATE	project\vine\ia\iastate\	iaadamsja
IAALLAMAKEEJA	16000	4	IA_IASTATE	project\vine\ia\iastate\	iaallamakeeja
IAAPPANOOSEJA	16000	5	IA_IASTATE	project\vine\ia\iastate\	iaappanooseja
IAAUDUBONJA	16000	6	IA_IASTATE	project\vine\ia\iastate\	iaaudubonja
IABENTONJA	16000	7	IA_IASTATE	project\vine\ia\iastate\	iabentonja
IABOONEJA	16000	9	IA_IASTATE	project\vine\ia\iastate\	iabooneja
IABREMERJA	16000	10	IA_IASTATE	project\vine\ia\iastate\	iabremerja
IABUCHANANJA	16000	11	IA_IASTATE	project\vine\ia\iastate\	iabuchananja
IABUENAVISTAJA	16000	12	IA_IASTATE	project\vine\ia\iastate\	iabuenavistaja
IABUTLERJA	16000	13	IA_IASTATE	project\vine\ia\iastate\	iabutlerja
IACARROLLJA	16000	15	IA_IASTATE	project\vine\ia\iastate\	iacarrollja
IACASSJA	16000	16	IA_IASTATE	project\vine\ia\iastate\	iacassja
IACEDARJA	16000	17	IA_IASTATE	project\vine\ia\iastate\	iacedarja
IACERROGORDOJA	16000	18	IA_IASTATE	project\vine\ia\iastate\	iacerrogordoja
IACHEROKEEJA	16000	19	IA_IASTATE	project\vine\ia\iastate\	iacherokeeja
IACLARKEJA	16000	21	IA_IASTATE	project\vine\ia\iastate\	iaclarkeja
IACLAYJA	16000	22	IA_IASTATE	project\vine\ia\iastate\	iaclayja
IACLAYTONJA	16000	23	IA_IASTATE	project\vine\ia\iastate\	iaclaytonja
IACLINTONJA	16000	24	IA_IASTATE	project\vine\ia\iastate\	iaclintonja
IACRAWFORDJA	16000	25	IA_IASTATE	project\vine\ia\iastate\	iacrawfordja
IADELAWAREJA	16000	29	IA_IASTATE	project\vine\ia\iastate\	iadelawareja
IADESMOINESJA	16000	30	IA_IASTATE	project\vine\ia\iastate\	iadesmoinesja
IADUBUQUEJA	16000	32	IA_IASTATE	project\vine\ia\iastate\	iadubuqueja
IAEMMETJA	16000	33	IA_IASTATE	project\vine\ia\iastate\	iaemmetja
IAFAYETTEJA	16000	34	IA_IASTATE	project\vine\ia\iastate\	iafayetteja
IAFLOYDJA	16000	35	IA_IASTATE	project\vine\ia\iastate\	iafloydja
IAFREMONTJA	16000	37	IA_IASTATE	project\vine\ia\iastate\	iafremontja
IAGUTHRIEJA	16000	40	IA_IASTATE	project\vine\ia\iastate\	iaguthrieja
IAHARDINJA	16000	43	IA_IASTATE	project\vine\ia\iastate\	iahardinja
IAHUMBOLDTJA	16000	47	IA_IASTATE	project\vine\ia\iastate\	iahumboldtja
IAJACKSONJA	16000	50	IA_IASTATE	project\vine\ia\iastate\	iajacksonja
IAJASPERJA	16000	51	IA_IASTATE	project\vine\ia\iastate\	iajasperja
IAJOHNSONJA	16000	53	IA_IASTATE	project\vine\ia\iastate\	iajohnsonja
IAJONESJA	16000	54	IA_IASTATE	project\vine\ia\iastate\	iajonesja
IALOUISAJA	16000	59	IA_IASTATE	project\vine\ia\iastate\	ialouisaja
IALUCASJA	16000	60	IA_IASTATE	project\vine\ia\iastate\	ialucasja
IAMADISONJA	16000	62	IA_IASTATE	project\vine\ia\iastate\	iamadisonja
IAMAHASKAJA	16000	63	IA_IASTATE	project\vine\ia\iastate\	iamahaskaja
IAMILLSJA	16000	66	IA_IASTATE	project\vine\ia\iastate\	iamillsja
IAMONROEJA	16000	69	IA_IASTATE	project\vine\ia\iastate\	iamonroeja
IAMUSCATINEJA	16000	71	IA_IASTATE	project\vine\ia\iastate\	iamuscatineja
IAOBRIENJA	16000	72	IA_IASTATE	project\vine\ia\iastate\	iaobrienja
IAPALOALTOJA	16000	75	IA_IASTATE	project\vine\ia\iastate\	iapaloaltoja
IAPLYMOUTHJA	16000	76	IA_IASTATE	project\vine\ia\iastate\	iaplymouthja
IAPOTTAWATTAMIEJA	16000	79	IA_IASTATE	project\vine\ia\iastate\	iapottawattamieja
IAPOWESHIEKJA	16000	80	IA_IASTATE	project\vine\ia\iastate\	iapoweshiekja
IARINGGOLDJA	16000	81	IA_IASTATE	project\vine\ia\iastate\	iaringgoldja
IASCOTTJA	16000	83	IA_IASTATE	project\vine\ia\iastate\	iascottja
IASHELBYJA	16000	84	IA_IASTATE	project\vine\ia\iastate\	iashelbyja
IATAMAJA	16000	87	IA_IASTATE	project\vine\ia\iastate\	iatamaja
IATAYLORJA	16000	88	IA_IASTATE	project\vine\ia\iastate\	iataylorja
IAUNIONJA	16000	89	IA_IASTATE	project\vine\ia\iastate\	iaunionja
IAWARRENJA	16000	92	IA_IASTATE	project\vine\ia\iastate\	iawarrenja
IAWASHINGTONJA	16000	93	IA_IASTATE	project\vine\ia\iastate\	iawashingtonja
IAWAYNEJA	16000	94	IA_IASTATE	project\vine\ia\iastate\	iawayneja
IAWEBSTERJA	16000	95	IA_IASTATE	project\vine\ia\iastate\	iawebsterja
IAWINNESHIEKJA	16000	97	IA_IASTATE	project\vine\ia\iastate\	iawinneshiekja
IAWOODBURYJA	16000	98	IA_IASTATE	project\vine\ia\iastate\	iawoodburyja
IAWRIGHTJA	16000	100	IA_IASTATE	project\vine\ia\iastate\	iawrightja
IADOC	16000	900	IA_IASTATE	project\vine\ia\iastate\	iadoc
VAPAMUNKEYJA	47000	448	VA_VASTATE	project\vine\va\vastate	vapamunkeyja
VACOMPACTNCJA	47000	452	VA_VASTATE	project\vine\va\vastate	vacompactncja
VASOUTHAMPTONPRWJA	47000	453	VA_VASTATE	project\vine\va\vastate	vasouthamptonprwja
VAOUTOFSTATEJA	47000	454	VA_VASTATE	project\vine\va\vastate	vaoutofstateja
VASOUTHAMPTONWCJA	47000	455	VA_VASTATE	project\vine\va\vastate	vasouthamptonwcja
VACLARKEJA	47000	251	VA_VASTATE	project\vine\va\vastate	vaclarkeja
IAGRUNDYJA	16000	39	IA_IASTATE	project\vine\ia\iastate\	iagrundyja
IAHOWARDJA	16000	46	IA_IASTATE	project\vine\ia\iastate\	iahowardja
IAIOWAJA	16000	49	IA_IASTATE	project\vine\ia\iastate\	iaiowaja
IALINNJA	16000	58	IA_IASTATE	project\vine\ia\iastate\	ialinnja
IALYONJA	16000	61	IA_IASTATE	project\vine\ia\iastate\	ialyonja
IAMARIONJA	16000	64	IA_IASTATE	project\vine\ia\iastate\	iamarionja
IAMONTGOMERYJA	16000	70	IA_IASTATE	project\vine\ia\iastate\	iamontgomeryja
IAPAGEJA	16000	74	IA_IASTATE	project\vine\ia\iastate\	iapageja
IAPOCAHONTASJA	16000	77	IA_IASTATE	project\vine\ia\iastate\	iapocahontasja
IASIOUXJA	16000	85	IA_IASTATE	project\vine\ia\iastate\	iasiouxja
VABETHANYJA	47000	456	VA_VASTATE	project\vine\va\vastate	vabethanyja
VACOMPACTCTJA	47000	457	VA_VASTATE	project\vine\va\vastate	vacompactctja
VACOMPACTPA	47000	458	VA_VASTATE	project\vine\va\vastate	vacompactpa
VAVANGUARDJA	47000	459	VA_VASTATE	project\vine\va\vastate	vavanguardja
VASTATEJA	47000	460	VA_VASTATE	project\vine\va\vastate	vastateja
TXCRIMES	44900	1202	TX_Statewide	project\vine\tx\txstate	txcrimes
MTDOC	27001	58	MT_MTDOC	project\vine\mt\mtdoc	
TXCUTANDSHOOTPD	44900	8984	TX_Statewide	project\vine\tx\txstate	txcutandshootpd
VACENTRALVAJA	47000	326	VA_VASTATE	project\vine\va\vastate	vacentralvaja
VABOTETOURTJA	47000	238	VA_VASTATE	project\vine\va\vastate	vabotetourtja
VALYNCHBURGJA	47000	115	VA_VASTATE	project\vine\va\vastate	valynchburgja
IDADAJA	13000	2	ID_IDSTATE	project\vine\id\idstate	idadaja
IDADAMSJA	13000	3	ID_IDSTATE	project\vine\id\idstate	idadamsja
IDBANNOCKJA	13000	4	ID_IDSTATE	project\vine\id\idstate	idbannockja
IDBENEWAHJA	13000	6	ID_IDSTATE	project\vine\id\idstate	idbenewahja
IDBINGHAMJA	13000	7	ID_IDSTATE	project\vine\id\idstate	idbinghamja
IDBLAINEJA	13000	8	ID_IDSTATE	project\vine\id\idstate	idblaineja
IDBONNERJA	13000	10	ID_IDSTATE	project\vine\id\idstate	idbonnerja
IDBONNEVILLEJA	13000	11	ID_IDSTATE	project\vine\id\idstate	idbonnevilleja
IDBOUNDARYJA	13000	12	ID_IDSTATE	project\vine\id\idstate	project\vine\id\idstate
IDBUTTEJA	13000	13	ID_IDSTATE	project\vine\id\idstate	idbutteja
IDCANYONJA	13000	15	ID_IDSTATE	project\vine\id\idstate	idcanyonja
IDCARIBOUJA	13000	16	ID_IDSTATE	project\vine\id\idstate	idcaribouja
IDCASSIAJA	13000	17	ID_IDSTATE	project\vine\id\idstate	idcassiaja
IDCLARKJA	13000	18	ID_IDSTATE	project\vine\id\idstate	idclarkja
IDCLEARWATERJA	13000	19	ID_IDSTATE	project\vine\id\idstate	idclearwaterja
IDCUSTERJA	13000	20	ID_IDSTATE	project\vine\id\idstate	idcusterja
IDELMOREJA	13000	21	ID_IDSTATE	project\vine\id\idstate	idelmoreja
IDFRANKLINJA	13000	22	ID_IDSTATE	project\vine\id\idstate	idfranklinja
IDFREMONTJA	13000	23	ID_IDSTATE	project\vine\id\idstate	idfremontja
IDGEMJA	13000	24	ID_IDSTATE	project\vine\id\idstate	idgemja
IDGOODINGJA	13000	25	ID_IDSTATE	project\vine\id\idstate	idgoodingja
IDIDAHOJA	13000	26	ID_IDSTATE	project\vine\id\idstate	ididahoja
IDJEFFERSONJA	13000	27	ID_IDSTATE	project\vine\id\idstate	idjeffersonja
IDKOOTENAIJA	13000	29	ID_IDSTATE	project\vine\id\idstate	idkootenaija
IDLATAHJA	13000	30	ID_IDSTATE	project\vine\id\idstate	idlatahja
IDLEMHIJA	13000	31	ID_IDSTATE	project\vine\id\idstate	idlemhija
IDLEWISJA	13000	32	ID_IDSTATE	project\vine\id\idstate	idlewisja
IDMADISONJA	13000	34	ID_IDSTATE	project\vine\id\idstate	idmadisonja
IDMINIDOKAJA	13000	35	ID_IDSTATE	project\vine\id\idstate	idminidokaja
IDNEZPERCEJA	13000	36	ID_IDSTATE	project\vine\id\idstate	idnezperceja
IDOWYHEEJA	13000	38	ID_IDSTATE	project\vine\id\idstate	idowyheeja
IDPAYETTEJA	13000	39	ID_IDSTATE	project\vine\id\idstate	idpayetteja
IDPOWERJA	13000	40	ID_IDSTATE	project\vine\id\idstate	idpowerja
IDSHOSHONEJA	13000	41	ID_IDSTATE	project\vine\id\idstate	idshoshoneja
IDTWINFALLSJA	13000	43	ID_IDSTATE	project\vine\id\idstate	idtwinfallsja
IDVALLEYJA	13000	44	ID_IDSTATE	project\vine\id\idstate	idvalleyja
IDWASHINGTONJA	13000	45	ID_IDSTATE	project\vine\id\idstate	idwashingtonja
IDDOC	13000	900	ID_IDSTATE	project\vine\id\idstate	iddoc
VACHARLOTTEJA	47000	249	VA_VASTATE	project\vine\va\vastate	vacharlotteja
TXINDICO	44900	1203	TX_Statewide	project\vine\tx\txstate	txindico
VAMONETAJA	47000	464	VA_VASTATE	project\vine\va\vastate	vamonetaja
INDOC	15000	900	IN_INSTATE	project\vine\in\instate	indoc
IAHAMILTONJA	16000	41	IA_IASTATE	project\vine\ia\iastate\	iahamiltonja
INFLOYDJA	15000	1	IN_INSTATE	project\vine\in\instate	infloydja
MDSO	21999	500	MD_MDSTATE	project\vine\md\mdstate	mdso
INADAMSJA	15000	2	IN_INSTATE	project\vine\in\instate	inadamsja
VARIVERSIDEJA	47000	138	VA_VASTATE	project\vine\va\vastate	variversideja
VACAMPBELLJA	47000	242	VA_VASTATE	project\vine\va\vastate	vacampbellja
INALLENJA	15000	3	IN_INSTATE	project\vine\in\instate	inallenja
INBOONEJA	15000	7	IN_INSTATE	project\vine\in\instate	inbooneja
INBROWNJA	15000	8	IN_INSTATE	project\vine\in\instate	inbrownja
INCARROLLJA	15000	9	IN_INSTATE	project\vine\in\instate	incarrollja
INCASSJA	15000	10	IN_INSTATE	project\vine\in\instate	incassja
INCLARKJA	15000	11	IN_INSTATE	project\vine\in\instate	inclarkja
INCLAYJA	15000	12	IN_INSTATE	project\vine\in\instate	inclayja
INCLINTONJA	15000	13	IN_INSTATE	project\vine\in\instate	inclintonja
INCRAWFORDJA	15000	14	IN_INSTATE	project\vine\in\instate	incrawfordja
INDAVIESSJA	15000	15	IN_INSTATE	project\vine\in\instate	indaviessja
INDEARBORNJA	15000	16	IN_INSTATE	project\vine\in\instate	indearbornja
INDEKALBJA	15000	18	IN_INSTATE	project\vine\in\instate	indekalbja
INDUBOISJA	15000	20	IN_INSTATE	project\vine\in\instate	induboisja
INELKHARTJA	15000	21	IN_INSTATE	project\vine\in\instate	inelkhartja
INFAYETTEJA	15000	22	IN_INSTATE	project\vine\in\instate	infayetteja
INFOUNTAINJA	15000	23	IN_INSTATE	project\vine\in\instate	infountainja
INFRANKLINJA	15000	24	IN_INSTATE	project\vine\in\instate	infranklinja
INGIBSONJA	15000	26	IN_INSTATE	project\vine\in\instate	ingibsonja
INGRANTJA	15000	27	IN_INSTATE	project\vine\in\instate	ingrantja
INGREENEJA	15000	28	IN_INSTATE	project\vine\in\instate	ingreeneja
INHAMILTONJA	15000	29	IN_INSTATE	project\vine\in\instate	inhamiltonja
INHANCOCKJA	15000	30	IN_INSTATE	project\vine\in\instate	inhancockja
INHARRISONJA	15000	31	IN_INSTATE	project\vine\in\instate	inharrisonja
INHENDRICKSJA	15000	32	IN_INSTATE	project\vine\in\instate	inhendricksja
INHENRYJA	15000	33	IN_INSTATE	project\vine\in\instate	inhenryja
INHOWARDJA	15000	34	IN_INSTATE	project\vine\in\instate	inhowardja
INHUNTINGTONJA	15000	35	IN_INSTATE	project\vine\in\instate	inhuntingtonja
INJACKSONJA	15000	36	IN_INSTATE	project\vine\in\instate	injacksonja
INJAYJA	15000	38	IN_INSTATE	project\vine\in\instate	injayja
INJEFFERSONJA	15000	39	IN_INSTATE	project\vine\in\instate	injeffersonja
INJENNINGSJA	15000	40	IN_INSTATE	project\vine\in\instate	injenningsja
INJOHNSONJA	15000	41	IN_INSTATE	project\vine\in\instate	injohnsonja
INKNOXJA	15000	42	IN_INSTATE	project\vine\in\instate	inknoxja
INKOSCIUSKOJA	15000	43	IN_INSTATE	project\vine\in\instate	inkosciuskoja
INLAGRANGEJA	15000	44	IN_INSTATE	project\vine\in\instate	inlagrangeja
INLAKEJA	15000	45	IN_INSTATE	project\vine\in\instate	inlakeja
INLAPORTEJA	15000	46	IN_INSTATE	project\vine\in\instate	inlaporteja
INMADISONJA	15000	48	IN_INSTATE	project\vine\in\instate	inmadisonja
INMARIONJA	15000	49	IN_INSTATE	project\vine\in\instate	inmarionja
INMARSHALLJA	15000	50	IN_INSTATE	project\vine\in\instate	inmarshallja
INMARTINJA	15000	51	IN_INSTATE	project\vine\in\instate	inmartinja
INMIAMIJA	15000	52	IN_INSTATE	project\vine\in\instate	inmiamija
INMORGANJA	15000	55	IN_INSTATE	project\vine\in\instate	inmorganja
INNOBLEJA	15000	57	IN_INSTATE	project\vine\in\instate	innobleja
INORANGEJA	15000	59	IN_INSTATE	project\vine\in\instate	inorangeja
INPARKEJA	15000	61	IN_INSTATE	project\vine\in\instate	inparkeja
INPIKEJA	15000	63	IN_INSTATE	project\vine\in\instate	inpikeja
INPORTERJA	15000	64	IN_INSTATE	project\vine\in\instate	inporterja
INPOSEYJA	15000	65	IN_INSTATE	project\vine\in\instate	inposeyja
INPUTNAMJA	15000	67	IN_INSTATE	project\vine\in\instate	inputnamja
VAPENINSULAJA	47000	465	VA_VASTATE	project\vine\va\vastate	vapeninsulaja
OKMCINTOSHJA	37000	49	OK_OKSTATE	project\vine\ok\okstate	okmcintoshja
PAADAMSJA	39000	1	PA_PASTATE	project\vine\pa\pastate	paadamsja
PAALLEGHENYJA	39000	3	PA_PASTATE	project\vine\pa\pastate	paalleghenyja
PABEAVERJA	39000	4	PA_PASTATE	project\vine\pa\pastate	pabeaverja
PABEDFORDJA	39000	5	PA_PASTATE	project\vine\pa\pastate	pabedfordja
PABERKSJA	39000	6	PA_PASTATE	project\vine\pa\pastate	paberksja
PABLAIRJA	39000	7	PA_PASTATE	project\vine\pa\pastate	pablairja
PABRADFORDJA	39000	8	PA_PASTATE	project\vine\pa\pastate	pabradfordja
PABUCKSJA	39000	9	PA_PASTATE	project\vine\pa\pastate	pabucksja
PABUTLERJA	39000	10	PA_PASTATE	project\vine\pa\pastate	pabutlerja
PACAMBRIAJA	39000	11	PA_PASTATE	project\vine\pa\pastate	pacambriaja
PACARBONJA	39000	12	PA_PASTATE	project\vine\pa\pastate	pacarbonja
PACENTREJA	39000	13	PA_PASTATE	project\vine\pa\pastate	pacentreja
PACHESTERJA	39000	14	PA_PASTATE	project\vine\pa\pastate	pachesterja
PACLARIONJA	39000	15	PA_PASTATE	project\vine\pa\pastate	paclarionja
PACLEARFIELDJA	39000	16	PA_PASTATE	project\vine\pa\pastate	paclearfieldja
PACLINTONJA	39000	17	PA_PASTATE	project\vine\pa\pastate	paclintonja
PACOLUMBIAJA	39000	18	PA_PASTATE	project\vine\pa\pastate	pacolumbiaja
PACRAWFORDJA	39000	19	PA_PASTATE	project\vine\pa\pastate	pacrawfordja
PACUMBERLANDJA	39000	20	PA_PASTATE	project\vine\pa\pastate	pacumberlandja
PADAUPHINJA	39000	21	PA_PASTATE	project\vine\pa\pastate	padauphinja
PAELKJA	39000	23	PA_PASTATE	project\vine\pa\pastate	paelkja
PAERIEJA	39000	24	PA_PASTATE	project\vine\pa\pastate	paerieja
PAFAYETTEJA	39000	25	PA_PASTATE	project\vine\pa\pastate	pafayetteja
PAFRANKLINJA	39000	26	PA_PASTATE	project\vine\pa\pastate	pafranklinja
PAGREENEJA	39000	27	PA_PASTATE	project\vine\pa\pastate	pagreeneja
PAHUNTINGDONJA	39000	28	PA_PASTATE	project\vine\pa\pastate	pahuntingdonja
PAINDIANAJA	39000	29	PA_PASTATE	project\vine\pa\pastate	paindianaja
PAJEFFERSONJA	39000	30	PA_PASTATE	project\vine\pa\pastate	pajeffersonja
PAJUNIATAJA	39000	31	PA_PASTATE	project\vine\pa\pastate	pajuniataja
PALACKAWANNAJA	39000	32	PA_PASTATE	project\vine\pa\pastate	palackawannaja
PALANCASTERJA	39000	33	PA_PASTATE	project\vine\pa\pastate	palancasterja
PALAWRENCEJA	39000	34	PA_PASTATE	project\vine\pa\pastate	palawrenceja
PALEBANONJA	39000	35	PA_PASTATE	project\vine\pa\pastate	palebanonja
PALEHIGHJA	39000	36	PA_PASTATE	project\vine\pa\pastate	palehighja
PALUZERNEJA	39000	37	PA_PASTATE	project\vine\pa\pastate	paluzerneja
PALYCOMINGJA	39000	38	PA_PASTATE	project\vine\pa\pastate	palycomingja
PAMCKEANJA	39000	39	PA_PASTATE	project\vine\pa\pastate	pamckeanja
PAMERCERJA	39000	41	PA_PASTATE	project\vine\pa\pastate	pamercerja
PAMONROEJA	39000	42	PA_PASTATE	project\vine\pa\pastate	pamonroeja
PAMONTGOMERYJA	39000	43	PA_PASTATE	project\vine\pa\pastate	pamontgomeryja
PAMONTOURJA	39000	44	PA_PASTATE	project\vine\pa\pastate	pamontourja
PANORTHAMPTONJA	39000	45	PA_PASTATE	project\vine\pa\pastate	panorthamptonja
PANORTHUMBERLANDJA	39000	46	PA_PASTATE	project\vine\pa\pastate	panorthumberlandja
PAPHILADELPHIAJA	39000	47	PA_PASTATE	project\vine\pa\pastate	paphiladelphiaja
PAPIKEJA	39000	49	PA_PASTATE	project\vine\pa\pastate	papikeja
PAPOTTERJA	39000	50	PA_PASTATE	project\vine\pa\pastate	papotterja
PASCHUYLKILLJA	39000	51	PA_PASTATE	project\vine\pa\pastate	paschuylkillja
PASNYDERJA	39000	52	PA_PASTATE	project\vine\pa\pastate	pasnyderja
PASOMERSETJA	39000	53	PA_PASTATE	project\vine\pa\pastate	pasomersetja
PATIOGAJA	39000	55	PA_PASTATE	project\vine\pa\pastate	patiogaja
PAUNIONJA	39000	56	PA_PASTATE	project\vine\pa\pastate	paunionja
PAVENANGOJA	39000	57	PA_PASTATE	project\vine\pa\pastate	pavenangoja
PAWARRENJA	39000	58	PA_PASTATE	project\vine\pa\pastate	pawarrenja
PAWASHINGTONJA	39000	59	PA_PASTATE	project\vine\pa\pastate	pawashingtonja
PAWAYNEJA	39000	60	PA_PASTATE	project\vine\pa\pastate	pawayneja
PAWESTMORELANDJA	39000	61	PA_PASTATE	project\vine\pa\pastate	pawestmorelandja
PAYORKJA	39000	63	PA_PASTATE	project\vine\pa\pastate	payorkja
IABLACKHAWKJA	16000	8	IA_IASTATE	project\vine\ia\iastate\	iablackhawkja
NEWTESTAGENCY	99999950	11	Test Site Zero	project\vine\test\testsitezero	newagency
IADALLASJA	16000	26	IA_IASTATE	project\vine\ia\iastate\	iadallasja
PAMIFFLINJA	39000	64	PA_PASTATE	project\vine\pa\pastate	pamifflinja
VAROANOKESALEMJA	47000	306	VA_VASTATE	project\vine\va\vastate	varoanokesalemja
MDWARRANTJX	21999	501	MD_MDSTATE	project\vine\md\mdstate	mdwarrantjx
ILSECURUS	14004	300	IL_ILSTATE	project\vine\il\ilstate	ilsecurus
VAABINGDONJA	47000	468	VA_VASTATE	project\vine\va\vastate	vaabingdonja
VADUFFIELDJA	47000	469	VA_VASTATE	project\vine\va\vastate	vaduffieldja
VAHAYSIJA	47000	470	VA_VASTATE	project\vine\va\vastate	vahaysija
VATAZEWELLJA	47000	471	VA_VASTATE	project\vine\va\vastate	vatazewellja
WASO	48626	500	WA_WASTATE	project\vine\wa\wastate	waso
UTJCALPINECITYCT	45000	350	UT_UTSTATE	project\vine\ut\utstate	utjcalpinecityct
UTJCALTACITYCT	45000	351	UT_UTSTATE	project\vine\ut\utstate	utjcaltacityct
UTJCAURORACITYCT	45000	352	UT_UTSTATE	project\vine\ut\utstate	utjcauroracityct
UTJCBEAVERCOCT	45000	353	UT_UTSTATE	project\vine\ut\utstate	utjcbeavercoct
UTJCBIGWATERCITYCT	45000	354	UT_UTSTATE	project\vine\ut\utstate	utjcbigwatercityct
UTJCBLANDINGCITYCT	45000	355	UT_UTSTATE	project\vine\ut\utstate	utjcblandingcityct
UTJCBLUFFDALECITYCT	45000	356	UT_UTSTATE	project\vine\ut\utstate	utjcbluffdalecityct
UTJCBOXELDERCOCT	45000	357	UT_UTSTATE	project\vine\ut\utstate	utjcboxeldercoct
UTJCCARBONCOCT	45000	358	UT_UTSTATE	project\vine\ut\utstate	utjccarboncoct
UTJCCENTERVILLECITYCT	45000	359	UT_UTSTATE	project\vine\ut\utstate	utjccentervillecityct
UTJCCLARKSTONCITYCT	45000	360	UT_UTSTATE	project\vine\ut\utstate	utjcclarkstoncityct
UTJCCLEARFIELDCITYCT	45000	361	UT_UTSTATE	project\vine\ut\utstate	utjcclearfieldcityct
UTJCCLINTONCITYCT	45000	362	UT_UTSTATE	project\vine\ut\utstate	utjcclintoncityct
UTJCDAGGETTCODJCT	45000	363	UT_UTSTATE	project\vine\ut\utstate	utjcdaggettcodjct
UTJCDAGGETTCOMNCT	45000	364	UT_UTSTATE	project\vine\ut\utstate	utjcdaggettcomnct
UTJCDAVISCOCT	45000	365	UT_UTSTATE	project\vine\ut\utstate	utjcdaviscoct
UTJCDELTACITYCT	45000	366	UT_UTSTATE	project\vine\ut\utstate	utjcdeltacityct
UTJCDRAPERCITYCT	45000	367	UT_UTSTATE	project\vine\ut\utstate	utjcdrapercityct
UTJCDUCHESNECOCT	45000	368	UT_UTSTATE	project\vine\ut\utstate	utjcduchesnecoct
UTJCDUCHESNECORSCT	45000	369	UT_UTSTATE	project\vine\ut\utstate	utjcduchesnecorsct
UTJCECARBONCITYCT	45000	370	UT_UTSTATE	project\vine\ut\utstate	utjcecarboncityct
UTJCEMILLARDCOCT	45000	371	UT_UTSTATE	project\vine\ut\utstate	utjcemillardcoct
UTJCEMERYCOCDCT	45000	372	UT_UTSTATE	project\vine\ut\utstate	utjcemerycocdct
UTJCEMERYCOGRCT	45000	373	UT_UTSTATE	project\vine\ut\utstate	utjcemerycogrct
UTJCENTERPRISECITYCT	45000	374	UT_UTSTATE	project\vine\ut\utstate	utjcenterprisecityct
UTJCEPHRAIMCITYCT	45000	375	UT_UTSTATE	project\vine\ut\utstate	utjcephraimcityct
UTJCESCALANTECITYCT	45000	376	UT_UTSTATE	project\vine\ut\utstate	utjcescalantecityct
UTJCFAIRVIEWCITYCT	45000	377	UT_UTSTATE	project\vine\ut\utstate	utjcfairviewcityct
UTJCFARRWCITYCT	45000	378	UT_UTSTATE	project\vine\ut\utstate	utjcfarrwcityct
UTJCFILLMORECITYCT	45000	379	UT_UTSTATE	project\vine\ut\utstate	utjcfillmorecityct
UTJCFOUNTAINGREENCITYCT	45000	380	UT_UTSTATE	project\vine\ut\utstate	utjcfountaingreencityct
UTJCFRUITHEIGHTSCITYCT	45000	381	UT_UTSTATE	project\vine\ut\utstate	utjcfruitheightscityct
UTJCGARFIELDCOCT	45000	382	UT_UTSTATE	project\vine\ut\utstate	utjcgarfieldcoct
UTJCGARLANDCITYCT	45000	383	UT_UTSTATE	project\vine\ut\utstate	utjcgarlandcityct
UTJCGENOLACITYCT	45000	384	UT_UTSTATE	project\vine\ut\utstate	utjcgenolacityct
UTJCGOSHENCITYCT	45000	385	UT_UTSTATE	project\vine\ut\utstate	utjcgoshencityct
UTJCGRANDCOCT	45000	386	UT_UTSTATE	project\vine\ut\utstate	utjcgrandcoct
UTJCGRANTSVILLECITYCT	45000	387	UT_UTSTATE	project\vine\ut\utstate	utjcgrantsvillecityct
UTJCGUNNISONCITYCT	45000	388	UT_UTSTATE	project\vine\ut\utstate	utjcgunnisoncityct
UTJCHARRISVILLECITYCT	45000	389	UT_UTSTATE	project\vine\ut\utstate	utjcharrisvillecityct
VACULPEPERJA	47000	253	VA_VASTATE	project\vine\va\vastate	vaculpeperja
UTJCHEBERCITYCT	45000	390	UT_UTSTATE	project\vine\ut\utstate	utjchebercityct
UTJCHELPERCITYCT	45000	391	UT_UTSTATE	project\vine\ut\utstate	utjchelpercityct
UTJCHERRIMANCITYCT	45000	392	UT_UTSTATE	project\vine\ut\utstate	utjcherrimancityct
UTJCHIGHLANDCITYCT	45000	393	UT_UTSTATE	project\vine\ut\utstate	utjchighlandcityct
UTJCHILDALECITYCT	45000	394	UT_UTSTATE	project\vine\ut\utstate	utjchildalecityct
UTJCHOLLADAYCITYCT	45000	395	UT_UTSTATE	project\vine\ut\utstate	utjcholladaycityct
UTJCHUNTSVILLECITYCT	45000	396	UT_UTSTATE	project\vine\ut\utstate	utjchuntsvillecityct
UTJCHURRICANECITYCT	45000	397	UT_UTSTATE	project\vine\ut\utstate	utjchurricanecityct
UTJCHYDEPARKCITYCT	45000	398	UT_UTSTATE	project\vine\ut\utstate	utjchydeparkcityct
UTJCHYRUMCITYCT	45000	399	UT_UTSTATE	project\vine\ut\utstate	utjchyrumcityct
UTJCIRONCOCT	45000	400	UT_UTSTATE	project\vine\ut\utstate	utjcironcoct
LABOGALUSAPD	19000	181	LA_LASTATE	project\vine\la\lastate	labogalusapd
UTJCJUABCOCT	45000	401	UT_UTSTATE	project\vine\ut\utstate	utjcjuabcoct
UTJCKANABCITYCT	45000	402	UT_UTSTATE	project\vine\ut\utstate	utjckanabcityct
UTJCKANECOCT	45000	403	UT_UTSTATE	project\vine\ut\utstate	utjckanecoct
UTJCLEHICITYCT	45000	404	UT_UTSTATE	project\vine\ut\utstate	utjclehicityct
UTJCLEVANCITYCT	45000	405	UT_UTSTATE	project\vine\ut\utstate	utjclevancityct
UTJCLEWISTONCITYCT	45000	406	UT_UTSTATE	project\vine\ut\utstate	utjclewistoncityct
UTJCLINDONCITYCT	45000	407	UT_UTSTATE	project\vine\ut\utstate	utjclindoncityct
UTJCLOGANCITYCT	45000	408	UT_UTSTATE	project\vine\ut\utstate	utjclogancityct
UTJCMANTICITYCT	45000	409	UT_UTSTATE	project\vine\ut\utstate	utjcmanticityct
UTJCMANTUACITYCT	45000	410	UT_UTSTATE	project\vine\ut\utstate	utjcmantuacityct
UTJCMAPLETONCITYCT	45000	411	UT_UTSTATE	project\vine\ut\utstate	utjcmapletoncityct
UTJCMIDVALECITYCT	45000	412	UT_UTSTATE	project\vine\ut\utstate	utjcmidvalecityct
UTJCMILFORDCITYCT	45000	413	UT_UTSTATE	project\vine\ut\utstate	utjcmilfordcityct
UTJCMINERSVILLECITYCT	45000	414	UT_UTSTATE	project\vine\ut\utstate	utjcminersvillecityct
UTJCMONTICELLOCITYCT	45000	415	UT_UTSTATE	project\vine\ut\utstate	utjcmonticellocityct
UTJCMORGANCITYCT	45000	416	UT_UTSTATE	project\vine\ut\utstate	utjcmorgancityct
UTJCMORGANCOCT	45000	418	UT_UTSTATE	project\vine\ut\utstate	utjcmorgancoct
UTJCMORONICITYCT	45000	419	UT_UTSTATE	project\vine\ut\utstate	utjcmoronicityct
UTJCMTPLEASANTCITYCT	45000	420	UT_UTSTATE	project\vine\ut\utstate	utjcmtpleasantcityct
UTJCMURRAYCITYCT	45000	421	UT_UTSTATE	project\vine\ut\utstate	utjcmurraycityct
UTJCNEPHICITYCT	45000	422	UT_UTSTATE	project\vine\ut\utstate	utjcnephicityct
UTJCNEWTONCITYCT	45000	423	UT_UTSTATE	project\vine\ut\utstate	utjcnewtoncityct
UTJCNIBLEYCITYCT	45000	424	UT_UTSTATE	project\vine\ut\utstate	utjcnibleycityct
UTJCNLOGANCITYCT	45000	425	UT_UTSTATE	project\vine\ut\utstate	utjcnlogancityct
UTJCNOGDENCITYCT	45000	426	UT_UTSTATE	project\vine\ut\utstate	utjcnogdencityct
UTJCOGDENCITYCT	45000	428	UT_UTSTATE	project\vine\ut\utstate	utjcogdencityct
UTJCORDERVILLECITYCT	45000	429	UT_UTSTATE	project\vine\ut\utstate	utjcordervillecityct
LAPEARLRIVERPD	19000	182	LA_LASTATE	project\vine\la\lastate	lapearlriverpd
LALEESVILLEPD	19000	184	LA_LASTATE	project\vine\la\lastate	laleesvillepd
LABOSSIERCITYPD	19000	185	LA_LASTATE	project\vine\la\lastate	labossiercitypd
LAHAMMONDPD	19000	187	LA_LASTATE	project\vine\la\lastate	lahammondpd
UTJCPANGUITCHCITYCT	45000	430	UT_UTSTATE	project\vine\ut\utstate	utjcpanguitchcityct
UTJCPAROWANCITYCT	45000	431	UT_UTSTATE	project\vine\ut\utstate	utjcparowancityct
UTJCPAYSONCITYCT	45000	432	UT_UTSTATE	project\vine\ut\utstate	utjcpaysoncityct
UTJCPIUTECOCT	45000	433	UT_UTSTATE	project\vine\ut\utstate	utjcpiutecoct
UTJCPLAINCITYCT	45000	434	UT_UTSTATE	project\vine\ut\utstate	utjcplaincityct
UTJCPLEASANTGROVECITYCT	45000	435	UT_UTSTATE	project\vine\ut\utstate	utjcpleasantgrovecityct
UTJCPLEASANTVIEWCITYCT	45000	436	UT_UTSTATE	project\vine\ut\utstate	utjcpleasantviewcityct
UTJCPROVIDENCECITYCT	45000	437	UT_UTSTATE	project\vine\ut\utstate	utjcprovidencecityct
UTJCPROVOCITYCT	45000	438	UT_UTSTATE	project\vine\ut\utstate	utjcprovocityct
UTJCRICHCOCT	45000	439	UT_UTSTATE	project\vine\ut\utstate	utjcrichcoct
UTJCRICHMONDCITYCT	45000	440	UT_UTSTATE	project\vine\ut\utstate	utjcrichmondcityct
UTJCRIVERDALECITYCT	45000	441	UT_UTSTATE	project\vine\ut\utstate	utjcriverdalecityct
UTJCRIVERTONCITYCT	45000	442	UT_UTSTATE	project\vine\ut\utstate	utjcrivertoncityct
UTJCROYCITYCT	45000	443	UT_UTSTATE	project\vine\ut\utstate	utjcroycityct
UTJCSALINACITYCT	45000	444	UT_UTSTATE	project\vine\ut\utstate	utjcsalinacityct
UTJCSALTLAKECITYCT	45000	445	UT_UTSTATE	project\vine\ut\utstate	utjcsaltlakecityct
UTJCSALTLAKECOCT	45000	446	UT_UTSTATE	project\vine\ut\utstate	utjcsaltlakecoct
UTJCSANJUANCOCT	45000	447	UT_UTSTATE	project\vine\ut\utstate	utjcsanjuancoct
UTJCSANDYCITYCT	45000	448	UT_UTSTATE	project\vine\ut\utstate	utjcsandycityct
UTJCSANPETECOCT	45000	449	UT_UTSTATE	project\vine\ut\utstate	utjcsanpetecoct
UTJCSANTACLARACITYCT	45000	450	UT_UTSTATE	project\vine\ut\utstate	utjcsantaclaracityct
UTJCSEVIERCOCT	45000	452	UT_UTSTATE	project\vine\ut\utstate	utjcseviercoct
UTJCSMITHFIELDCITYCT	45000	453	UT_UTSTATE	project\vine\ut\utstate	utjcsmithfieldcityct
UTJCSJORDANCITYCT	45000	454	UT_UTSTATE	project\vine\ut\utstate	utjcsjordancityct
UTJCSOGDENCITYCT	45000	455	UT_UTSTATE	project\vine\ut\utstate	utjcsogdencityct
UTJCSSALTLAKECITYCT	45000	456	UT_UTSTATE	project\vine\ut\utstate	utjcssaltlakecityct
UTJCSWEBERCT	45000	457	UT_UTSTATE	project\vine\ut\utstate	utjcsweberct
UTJCSPRINGCITYCT	45000	458	UT_UTSTATE	project\vine\ut\utstate	utjcspringcityct
UTJCSPRINGVILLECITYCT	45000	459	UT_UTSTATE	project\vine\ut\utstate	utjcspringvillecityct
UTJCSTOCKTONCITYCT	45000	460	UT_UTSTATE	project\vine\ut\utstate	utjcstocktoncityct
UTJCSUNSETCITYCT	45000	461	UT_UTSTATE	project\vine\ut\utstate	utjcsunsetcityct
UTJCSYRACUSECITYCT	45000	462	UT_UTSTATE	project\vine\ut\utstate	utjcsyracusecityct
UTJCTAYLORSVILLECITYCT	45000	463	UT_UTSTATE	project\vine\ut\utstate	utjctaylorsvillecityct
UTJCTOOELECITYCT	45000	464	UT_UTSTATE	project\vine\ut\utstate	utjctooelecityct
UTJCTOOELECOCT	45000	465	UT_UTSTATE	project\vine\ut\utstate	utjctooelecoct
UTJCTREMONTONCITYCT	45000	466	UT_UTSTATE	project\vine\ut\utstate	utjctremontoncityct
UTJCUINTAHCITYCT	45000	467	UT_UTSTATE	project\vine\ut\utstate	utjcuintahcityct
UTJCUINTAHCOCT	45000	468	UT_UTSTATE	project\vine\ut\utstate	utjcuintahcoct
UTJCUTAHCOCT	45000	469	UT_UTSTATE	project\vine\ut\utstate	utjcutahcoct
UTJCVERNALCITYCT	45000	470	UT_UTSTATE	project\vine\ut\utstate	utjcvernalcityct
UTJCWASATCHCOCT	45000	471	UT_UTSTATE	project\vine\ut\utstate	utjcwasatchcoct
UTJCWASHCITYCT	45000	472	UT_UTSTATE	project\vine\ut\utstate	utjcwashcityct
UTJCWASHCOCT	45000	473	UT_UTSTATE	project\vine\ut\utstate	utjcwashcoct
UTJCWASHTERRACECITYCT	45000	474	UT_UTSTATE	project\vine\ut\utstate	utjcwashterracecityct
UTJCWAYNECOCT	45000	475	UT_UTSTATE	project\vine\ut\utstate	utjcwaynecoct
UTJCWEBERCOCT	45000	476	UT_UTSTATE	project\vine\ut\utstate	utjcwebercoct
UTJCWELLINGTONCITYCT	45000	477	UT_UTSTATE	project\vine\ut\utstate	utjcwellingtoncityct
UTJCWELLSVILLECITYCT	45000	478	UT_UTSTATE	project\vine\ut\utstate	utjcwellsvillecityct
UTJCWENDOVERCITYCT	45000	479	UT_UTSTATE	project\vine\ut\utstate	utjcwendovercityct
UTJCWBOUNTIFULCITYCT	45000	480	UT_UTSTATE	project\vine\ut\utstate	utjcwbountifulcityct
UTJCWJORDANCITYCT	45000	481	UT_UTSTATE	project\vine\ut\utstate	utjcwjordancityct
UTJCWMILLARDCOCT	45000	482	UT_UTSTATE	project\vine\ut\utstate	utjcwmillardcoct
UTJCWVALLEYCITYCT	45000	483	UT_UTSTATE	project\vine\ut\utstate	utjcwvalleycityct
UTJCWILLARDCITYCT	45000	484	UT_UTSTATE	project\vine\ut\utstate	utjcwillardcityct
UTJCWOODSCROSSCITYCT	45000	485	UT_UTSTATE	project\vine\ut\utstate	utjcwoodscrosscityct
LAWINNFIELDPD	19000	190	LA_LASTATE	project\vine\la\lastate	lawinnfieldpd
LAKROTZSPRINGSPD	19000	191	LA_LASTATE	project\vine\la\lastate	lakrotzspringspd
LAJEANERETTEPD	19000	195	LA_LASTATE	project\vine\la\lastate	lajeanerettepd
LAKINDERPD	19000	197	LA_LASTATE	project\vine\la\lastate	lakinderpd
LAOAKDALEPD	19000	200	LA_LASTATE	project\vine\la\lastate	laoakdalepd
LASULPHURPD	19000	202	LA_LASTATE	project\vine\la\lastate	lasulphurpd
LAVILLEPLATTEPD	19000	203	LA_LASTATE	project\vine\la\lastate	lavilleplattepd
LAWHITECASTLEPD	19000	204	LA_LASTATE	project\vine\la\lastate	lawhitecastlepd
LAKAPLANPD	19000	205	LA_LASTATE	project\vine\la\lastate	lakaplanpd
SENDER	99999950	99	Test Site Zero	project\vine\test\testsitezero	path
OKDOC	37000	900	OK_OKSTATE	project\vine\ok\okstate	okdoc
ALCOFFEEJA	1000	2	AL_ALSTATE	project\vine\al\alstate	alcoffeeja
ALAUTAUGAJA	1000	3	AL_ALSTATE	project\vine\al\alstate	alautaugaja
ALDSIHOSTJA	1000	515	AL_ALSTATE	project\vine\al\alstate	aldsihostja
WAKLICKITATJA	48626	30	WA_WASTATE	project\vine\wa\wastate	waklickitatja
COADAMSJA	6000	1	CO_COSTATE	project\vine\co\costate	coadamsja
COALAMOSAJA	6000	2	CO_COSTATE	project\vine\co\costate	coalamosaja
COARAPAHOEJA	6000	3	CO_COSTATE	project\vine\co\costate	coarapahoeja
COBACAJA	6000	5	CO_COSTATE	project\vine\co\costate	cobacaja
VACHESAPEAKEJA	47000	106	VA_VASTATE	project\vine\va\vastate	vachesapeakeja
IACHICKASAWJA	16000	20	IA_IASTATE	project\vine\ia\iastate\	iachickasawja
COBROOMFIELDJA	6000	8	CO_COSTATE	project\vine\co\costate	cobroomfieldja
COCHAFFEEJA	6000	9	CO_COSTATE	project\vine\co\costate	cochaffeeja
COCHEYENNEJA	6000	10	CO_COSTATE	project\vine\co\costate	cocheyenneja
ALBUTLERJA	1000	4	AL_ALSTATE	project\vine\al\alstate	albutlerja
UTJCNSALTLAKECITYCT	45000	427	UT_UTSTATE	project\vine\ut\utstate	utjcnsaltlakecityct
UTJCSANTAQUINCITYCT	45000	451	UT_UTSTATE	project\vine\ut\utstate	utjcsantaquincityct
LADSIHOSTJA	19000	515	LA_LASTATE	project\vine\la\lastate	ladsihostja
ALBALDWINJA	1000	1	AL_ALSTATE	project\vine\al\alstate	albaldwinja
ALBARBOURJA	1000	5	AL_ALSTATE	project\vine\al\alstate	albarbourja
ALBULLOCKJA	1000	8	AL_ALSTATE	project\vine\al\alstate	albullockja
ALCHEROKEEJA	1000	11	AL_ALSTATE	project\vine\al\alstate	alcherokeeja
ALCHOCTAWJA	1000	13	AL_ALSTATE	project\vine\al\alstate	alchoctawja
ALCLARKEJA	1000	14	AL_ALSTATE	project\vine\al\alstate	alclarkeja
ALTALLAPOOSAJA	1000	62	AL_ALSTATE	project\vine\al\alstate	altallapoosaja
ALTUSCALOOSAJA	1000	63	AL_ALSTATE	project\vine\al\alstate	altuscaloosaja
ALWALKERJA	1000	64	AL_ALSTATE	project\vine\al\alstate	alwalkerja
ALWILCOXJA	1000	66	AL_ALSTATE	project\vine\al\alstate	alwilcoxja
ALWINSTONJA	1000	67	AL_ALSTATE	project\vine\al\alstate	alwinstonja
DEDOC	8000	1	DE_DESTATE	project\vine\de\destate	dedoc
ALTALLADEGAJA	1000	61	AL_ALSTATE	project\vine\al\alstate	altalladegaja
ALCLEBURNEJA	1000	16	AL_ALSTATE	project\vine\al\alstate	alcleburneja
ALCOLBERTJA	1000	17	AL_ALSTATE	project\vine\al\alstate	alcolbertja
ALCONECUHJA	1000	18	AL_ALSTATE	project\vine\al\alstate	alconecuhja
ALCOOSAJA	1000	19	AL_ALSTATE	project\vine\al\alstate	alcoosaja
ALCOVINGTONJA	1000	20	AL_ALSTATE	project\vine\al\alstate	alcovingtonja
ALCULLMANJA	1000	22	AL_ALSTATE	project\vine\al\alstate	alcullmanja
ALDALEJA	1000	23	AL_ALSTATE	project\vine\al\alstate	aldaleja
ALDALLASJA	1000	24	AL_ALSTATE	project\vine\al\alstate	aldallasja
ALDEKALBJA	1000	25	AL_ALSTATE	project\vine\al\alstate	aldekalbja
ALELMOREJA	1000	26	AL_ALSTATE	project\vine\al\alstate	alelmoreja
ALESCAMBIAJA	1000	27	AL_ALSTATE	project\vine\al\alstate	alescambiaja
ALETOWAHJA	1000	28	AL_ALSTATE	project\vine\al\alstate	aletowahja
ALGREENEJA	1000	32	AL_ALSTATE	project\vine\al\alstate	algreeneja
ALHENRYJA	1000	34	AL_ALSTATE	project\vine\al\alstate	alhenryja
ALJACKSONJA	1000	36	AL_ALSTATE	project\vine\al\alstate	aljacksonja
ALJEFFERSONJA	1000	37	AL_ALSTATE	project\vine\al\alstate	aljeffersonja
ALLAUDERDALEJA	1000	39	AL_ALSTATE	project\vine\al\alstate	allauderdaleja
ALLAWRENCEJA	1000	40	AL_ALSTATE	project\vine\al\alstate	allawrenceja
VASUSSEXJA	47000	317	VA_VASTATE	project\vine\va\vastate	vasussexja
ALLOWNDESJA	1000	43	AL_ALSTATE	project\vine\al\alstate	allowndesja
ALMARIONJA	1000	47	AL_ALSTATE	project\vine\al\alstate	almarionja
ALMARSHALLJA	1000	48	AL_ALSTATE	project\vine\al\alstate	almarshallja
ALMORGANJA	1000	52	AL_ALSTATE	project\vine\al\alstate	almorganja
ALPERRYJA	1000	53	AL_ALSTATE	project\vine\al\alstate	alperryja
ALPIKEJA	1000	55	AL_ALSTATE	project\vine\al\alstate	alpikeja
ALRANDOLPHJA	1000	56	AL_ALSTATE	project\vine\al\alstate	alrandolphja
ALRUSSELLJA	1000	57	AL_ALSTATE	project\vine\al\alstate	alrussellja
ALSUMTERJA	1000	60	AL_ALSTATE	project\vine\al\alstate	alsumterja
NCALLEGHANYPR	34003	1002	NC_STATE	project\vine\nc\ncstate	ncalleghanypr
NCBERTIEPR	34003	1007	NC_STATE	project\vine\nc\ncstate	ncbertiepr
NCBRUNSWICKPR	34003	1009	NC_STATE	project\vine\nc\ncstate	ncbrunswickpr
NCCABARRUSPR	34003	1012	NC_STATE	project\vine\nc\ncstate	nccabarruspr
NCCAMDENPR	34003	1014	NC_STATE	project\vine\nc\ncstate	nccamdenpr
NCCHATHAMPR	34003	1018	NC_STATE	project\vine\nc\ncstate	ncchathampr
NCCOLUMBUSPR	34003	1023	NC_STATE	project\vine\nc\ncstate	nccolumbuspr
NCCURRITUCKPR	34003	1026	NC_STATE	project\vine\nc\ncstate	nccurrituckpr
NCDAVIDSONPR	34003	1028	NC_STATE	project\vine\nc\ncstate	ncdavidsonpr
NCEDGECOMBEPR	34003	1032	NC_STATE	project\vine\nc\ncstate	ncedgecombepr
NCGASTONPR	34003	1035	NC_STATE	project\vine\nc\ncstate	ncgastonpr
NCGRAHAMPR	34003	1037	NC_STATE	project\vine\nc\ncstate	ncgrahampr
NCGREENEPR	34003	1039	NC_STATE	project\vine\nc\ncstate	ncgreenepr
NCHOKEPR	34003	1047	NC_STATE	project\vine\nc\ncstate	nchokepr
NCJACKSONPR	34003	1050	NC_STATE	project\vine\nc\ncstate	ncjacksonpr
NCMCDOWELLPR	34003	1056	NC_STATE	project\vine\nc\ncstate	ncmcdowellpr
NCMITCHELLPR	34003	1061	NC_STATE	project\vine\nc\ncstate	ncmitchellpr
NCPENDERPR	34003	1071	NC_STATE	project\vine\nc\ncstate	ncpenderpr
NCPITTPR	34003	1074	NC_STATE	project\vine\nc\ncstate	ncpittpr
NCRANDOLPHPR	34003	1076	NC_STATE	project\vine\nc\ncstate	ncrandolphpr
NCSCOTLANDPR	34003	1083	NC_STATE	project\vine\nc\ncstate	ncscotlandpr
NCSTANLYPR	34003	1084	NC_STATE	project\vine\nc\ncstate	ncstanlypr
NCTRANSYLVANIAPR	34003	1088	NC_STATE	project\vine\nc\ncstate	nctransylvaniapr
NCVANCEPR	34003	1091	NC_STATE	project\vine\nc\ncstate	ncvancepr
NCWAKEPR	34003	1092	NC_STATE	project\vine\nc\ncstate	ncwakepr
NCWARRENPR	34003	1093	NC_STATE	project\vine\nc\ncstate	ncwarrenpr
NCWAYNEPR	34003	1096	NC_STATE	project\vine\nc\ncstate	ncwaynepr
NCWILKESPR	34003	1097	NC_STATE	project\vine\nc\ncstate	ncwilkespr
UTJCSUMMITCOCT	45000	113	UT_UTSTATE	project\vine\ut\utstate	utjcsummitcoct
UTJCNAPLESCITYCT	45000	73	UT_UTSTATE	project\vine\ut\utstate	utjcnaplescityct
COOTEROJA	6000	11	CO_COSTATE	project\vine\co\costate	cooteroja
COMOFFATTJA	6000	12	CO_COSTATE	project\vine\co\costate	comoffattja
COCLEARCREEKJA	6000	13	CO_COSTATE	project\vine\co\costate	coclearcreekja
COCROWLEYJA	6000	14	CO_COSTATE	project\vine\co\costate	cocrowleyja
COELPASOJA	6000	15	CO_COSTATE	project\vine\co\costate	coelpasoja
COGARFIELDJA	6000	17	CO_COSTATE	project\vine\co\costate	cogarfieldja
COGRANDJA	6000	19	CO_COSTATE	project\vine\co\costate	cograndja
COLARIMERJA	6000	29	CO_COSTATE	project\vine\co\costate	colarimerja
COLASANIMASJA	6000	30	CO_COSTATE	project\vine\co\costate	colasanimasja
COLOGANJA	6000	32	CO_COSTATE	project\vine\co\costate	cologanja
COMESAJA	6000	33	CO_COSTATE	project\vine\co\costate	comesaja
COMONTROSEJA	6000	36	CO_COSTATE	project\vine\co\costate	comontroseja
COPARKJA	6000	39	CO_COSTATE	project\vine\co\costate	coparkja
COPITKINJA	6000	41	CO_COSTATE	project\vine\co\costate	copitkinja
COPUEBLOJA	6000	43	CO_COSTATE	project\vine\co\costate	copuebloja
CORIOBLANCOJA	6000	44	CO_COSTATE	project\vine\co\costate	corioblancoja
COSAGUACHEJA	6000	47	CO_COSTATE	project\vine\co\costate	cosaguacheja
COSANMIGUELJA	6000	49	CO_COSTATE	project\vine\co\costate	cosanmiguelja
COSUMMITJA	6000	51	CO_COSTATE	project\vine\co\costate	cosummitja
COWELDJA	6000	54	CO_COSTATE	project\vine\co\costate	coweldja
COYUMAJA	6000	55	CO_COSTATE	project\vine\co\costate	coyumaja
COCUSTERJA	6000	58	CO_COSTATE	project\vine\co\costate	cocusterja
CODELTAJA	6000	59	CO_COSTATE	project\vine\co\costate	codeltaja
VASOL	47000	500	VA_VASTATE	project\vine\va\vastate	
VASO	47500	500	VA_VASTATE_SO	\project\vine\va\vastate_so	vaso
OKDSIHOSTJA	37000	515	OK_OKSTATE	project\vine\ok\okstate	okdsihostja
CAALAMEDAJA2	5000	2	CA_CASTATE	project\vine\ca\castate	
CABUTTEJA2	5000	5	CA_CASTATE	project\vine\ca\castate	
CACALAVERASJA	5000	6	CA_CASTATE	project\vine\ca\castate	cacalaverasja
CACOLUSAJA	5000	7	CA_CASTATE	project\vine\ca\castate	cacolusaja
CADELNORTEJA	5000	9	CA_CASTATE	project\vine\ca\castate	cadelnorteja
CAELDORADOJA2	5000	10	CA_CASTATE	project\vine\ca\castate	
CAFRESNOJA2	5000	11	CA_CASTATE	project\vine\ca\castate	
CAGLENNJA	5000	12	CA_CASTATE	project\vine\ca\castate	caglennja
CAHUMBOLDTJA2	5000	13	CA_CASTATE	project\vine\ca\castate	
CAIMPERIALJA2	5000	14	CA_CASTATE	project\vine\ca\castate	
CAKERNJA	5000	16	CA_CASTATE	project\vine\ca\castate	cakernja
CAKINGSJA2	5000	17	CA_CASTATE	project\vine\ca\castate	
CALAKEJA	5000	18	CA_CASTATE	project\vine\ca\castate	calakeja
CALOSANGELESJA2	5000	20	CA_CASTATE	project\vine\ca\castate	
CAMENDOCINOJA2	5000	24	CA_CASTATE	project\vine\ca\castate	
CAMONOJA	5000	27	CA_CASTATE	project\vine\ca\castate	camonoja
CAMONTEREYJA	5000	28	CA_CASTATE	project\vine\ca\castate	camontereyja
CANEVADAJA	5000	30	CA_CASTATE	project\vine\ca\castate	canevadaja
CAORANGEJA2	5000	31	CA_CASTATE	project\vine\ca\castate	
CAPLACERJA	5000	32	CA_CASTATE	project\vine\ca\castate	caplacerja
CAPLUMASJA	5000	33	CA_CASTATE	project\vine\ca\castate	caplumasja
CASACRAMENTOJA2	5000	35	CA_CASTATE	project\vine\ca\castate	
CASANBENITOJA	5000	36	CA_CASTATE	project\vine\ca\castate	casanbenitoja
CASANBERNARDINOJA2	5000	37	CA_CASTATE	project\vine\ca\castate	
CASANDIEGOJA	5000	38	CA_CASTATE	project\vine\ca\castate	casandiegoja
CASANJOAQUINJA	5000	40	CA_CASTATE	project\vine\ca\castate	casanjoaquinja
CASANTACLARAJA2	5000	44	CA_CASTATE	project\vine\ca\castate	
CASANTACRUZ2	5000	45	CA_CASTATE	project\vine\ca\castate	
CASHASTAJA	5000	46	CA_CASTATE	project\vine\ca\castate	cashastaja
CASIERRAJA	5000	47	CA_CASTATE	project\vine\ca\castate	casierraja
CASISKIYOUJA	5000	48	CA_CASTATE	project\vine\ca\castate	casiskiyouja
CASOLANOJA2	5000	49	CA_CASTATE	project\vine\ca\castate	
CASTANISLAUSJA	5000	50	CA_CASTATE	project\vine\ca\castate	castanislausja
CASUTTERJA2	5000	51	CA_CASTATE	project\vine\ca\castate	
CATEHAMAJA	5000	52	CA_CASTATE	project\vine\ca\castate	catehamaja
CATULAREJA	5000	54	CA_CASTATE	project\vine\ca\castate	catulareja
CATUOLUMNEJA	5000	55	CA_CASTATE	project\vine\ca\castate	catuolumneja
CAYUBAJA	5000	58	CA_CASTATE	project\vine\ca\castate	cayubaja
ALBESSEMERJA	1000	100	AL_ALSTATE	project\vine\al\alstate	albessemerja
ALBIRMINGHAMJA	1000	101	AL_ALSTATE	project\vine\al\alstate	albirminghamja
MODSIHOSTJA	26000	515	MO_STATE	project\vine\mo\mostate	modsihostja
CODSIHOSTJA	6000	515	CO_COSTATE	project\vine\co\costate	codsihostja
PAPERRYJA	39000	107	PA_PASTATE	project\vine\pa\pastate	paperryja
VAROCKBRIDGEJA	47000	307	VA_VASTATE	project\vine\va\vastate	varockbridgeja
VADANVILLEADCJA	47000	35	VA_VASTATE	project\vine\va\vastate	vadanvilleadcja
MSGREENEJA	25000	2	MS_MSSTATE	project\vine\ms\msstate	msgreeneja
MSJASPERJA	25000	3	MS_MSSTATE	project\vine\ms\msstate	msjasperja
MSPERRYJA	25000	4	MS_MSSTATE	project\vine\ms\msstate	msperryja
MSISSAQUENAJA	25000	5	MS_MSSTATE	project\vine\ms\msstate	msissaquenaja
MSMONROEJA	25000	6	MS_MSSTATE	project\vine\ms\msstate	msmonroeja
MSSIMPSONJA	25000	7	MS_MSSTATE	project\vine\ms\msstate	mssimpsonja
MSCHOCTAWJA	25000	8	MS_MSSTATE	project\vine\ms\msstate	mschoctawja
NVNLASVEGASJA	29010	2	NV_LASVEGAS	project\vine\nv\nvlasvegasja	nvnlasvegasja
TNSEVIERJA	43000	1	TN_TNSTATE	project\vine\tn\tnstate	tnsevierja
TNSUMNERJA	43000	2	TN_TNSTATE	project\vine\tn\tnstate	tnsumnerja
WADSIHOSTJA	48626	515	WA_WASTATE	project\vine\wa\wastate	wadsihostja
VAALBEMARLEJA	47000	228	VA_VASTATE	project\vine\va\vastate	vaalbemarleja
NCSO	34500	500	NC_NCSTATE_SO	\project\vine\nc\ncstate_so	ncso
CDCR	5000	900	CA_CASTATE	project\vine\ca\castate	
TNLAWRENCEJA	43000	4	TN_TNSTATE	project\vine\tn\tnstate	tnlawrenceja
MSTISHOMINGOJA	25000	10	MS_MSSTATE	project\vine\ms\msstate	mstishomingoja
MSADAMSJA	25000	11	MS_MSSTATE	project\vine\ms\msstate	msadamsja
TNANDERSONJA	43000	6	TN_TNSTATE	project\vine\tn\tnstate	tnandersonja
TNBRADLEYJA	43000	10	TN_TNSTATE	project\vine\tn\tnstate	tnbradleyja
TNCAMPBELLJA	43000	11	TN_TNSTATE	project\vine\tn\tnstate	tncampbellja
TNCHESTERJA	43000	16	TN_TNSTATE	project\vine\tn\tnstate	tnchesterja
TNCLAIBORNEJA	43000	17	TN_TNSTATE	project\vine\tn\tnstate	tnclaiborneja
TNCLAYJA	43000	18	TN_TNSTATE	project\vine\tn\tnstate	tnclayja
TNCOCKEJA	43000	19	TN_TNSTATE	project\vine\tn\tnstate	tncockeja
TNCROCKETTJA	43000	21	TN_TNSTATE	project\vine\tn\tnstate	tncrockettja
TNDECATURJA	43000	24	TN_TNSTATE	project\vine\tn\tnstate	tndecaturja
TNDEKALBJA	43000	25	TN_TNSTATE	project\vine\tn\tnstate	tndekalbja
TNDICKSONJA	43000	26	TN_TNSTATE	project\vine\tn\tnstate	tndicksonja
TNDYERJA	43000	27	TN_TNSTATE	project\vine\tn\tnstate	tndyerja
TNFAYETTEJA	43000	28	TN_TNSTATE	project\vine\tn\tnstate	tnfayetteja
25	43000	29	TN_TNSTATE	project\vine\tn\tnstate	tnfentressja
TNFRANKLINJA	43000	30	TN_TNSTATE	project\vine\tn\tnstate	tnfranklinja
TNGIBSONJA	43000	31	TN_TNSTATE	project\vine\tn\tnstate	tngibsonja
TNGILESJA	43000	32	TN_TNSTATE	project\vine\tn\tnstate	tngilesja
TNGRAINGERJA	43000	33	TN_TNSTATE	project\vine\tn\tnstate	tngraingerja
TNGREENEJA	43000	34	TN_TNSTATE	project\vine\tn\tnstate	tngreeneja
TNHAMBLENJA	43000	36	TN_TNSTATE	project\vine\tn\tnstate	tnhamblenja
TNHOUSTONJA	43000	46	TN_TNSTATE	project\vine\tn\tnstate	tnhoustonja
TNJEFFERSONJA	43000	49	TN_TNSTATE	project\vine\tn\tnstate	tnjeffersonja
TNJOHNSONJA	43000	50	TN_TNSTATE	project\vine\tn\tnstate	tnjohnsonja
TNKNOXJA	43000	51	TN_TNSTATE	project\vine\tn\tnstate	tnknoxja
TNLOUDONJA	43000	56	TN_TNSTATE	project\vine\tn\tnstate	tnloudonja
TNMACONJA	43000	57	TN_TNSTATE	project\vine\tn\tnstate	tnmaconja
TNMADISONJA	43000	58	TN_TNSTATE	project\vine\tn\tnstate	tnmadisonja
TNMAURYJA	43000	60	TN_TNSTATE	project\vine\tn\tnstate	tnmauryja
TNMCNAIRYJA	43000	62	TN_TNSTATE	project\vine\tn\tnstate	tnmcnairyja
MSALCORNJA	25000	12	MS_MSSTATE	project\vine\ms\msstate	msalcornja
TNMONTGOMERYJA	43000	65	TN_TNSTATE	project\vine\tn\tnstate	tnmontgomeryja
TNMOOREJA	43000	66	TN_TNSTATE	project\vine\tn\tnstate	tnmooreja
TNOBIONJA	43000	68	TN_TNSTATE	project\vine\tn\tnstate	tnobionja
TNOVERTONJA	43000	69	TN_TNSTATE	project\vine\tn\tnstate	tnovertonja
TNPERRYJA	43000	70	TN_TNSTATE	project\vine\tn\tnstate	tnperryja
TNPUTNAMJA	43000	73	TN_TNSTATE	project\vine\tn\tnstate	tnputnamja
TNROANEJA	43000	75	TN_TNSTATE	project\vine\tn\tnstate	tnroaneja
MSAMITEJA	25000	14	MS_MSSTATE	project\vine\ms\msstate	msamiteja
MSBENTONJA	25000	16	MS_MSSTATE	project\vine\ms\msstate	msbentonja
MSBOLIVARJA	25000	17	MS_MSSTATE	project\vine\ms\msstate	msbolivarja
MSCARROLLJA	25000	19	MS_MSSTATE	project\vine\ms\msstate	mscarrollja
MSCHICKASAWJA	25000	20	MS_MSSTATE	project\vine\ms\msstate	mschickasawja
MSCLAIBORNEJA	25000	21	MS_MSSTATE	project\vine\ms\msstate	msclaiborneja
MSCLARKEJA	25000	22	MS_MSSTATE	project\vine\ms\msstate	msclarkeja
MSCLAYJA	25000	23	MS_MSSTATE	project\vine\ms\msstate	msclayja
MSCOVINGTONJA	25000	26	MS_MSSTATE	project\vine\ms\msstate	mscovingtonja
MSDESOTOJA	25000	27	MS_MSSTATE	project\vine\ms\msstate	msdesotoja
MSFORRESTJA	25000	28	MS_MSSTATE	project\vine\ms\msstate	msforrestja
MSGRENADAJA	25000	31	MS_MSSTATE	project\vine\ms\msstate	msgrenadaja
23	25000	32	MS_MSSTATE	project\vine\ms\msstate	mshancockja
MSHOLMESJA	25000	35	MS_MSSTATE	project\vine\ms\msstate	msholmesja
MSITAWAMBAJA	25000	37	MS_MSSTATE	project\vine\ms\msstate	msitawambaja
MSJEFFERSONJA	25000	39	MS_MSSTATE	project\vine\ms\msstate	msjeffersonja
MSJONESJA	25000	41	MS_MSSTATE	project\vine\ms\msstate	msjonesja
MSKEMPERJA	25000	42	MS_MSSTATE	project\vine\ms\msstate	mskemperja
MSLAFAYETTEJA	25000	43	MS_MSSTATE	project\vine\ms\msstate	mslafayetteja
MSLAUDERDALE	25000	45	MS_MSSTATE	project\vine\ms\msstate	mslauderdaleja
MSLEAKEJA	25000	47	MS_MSSTATE	project\vine\ms\msstate	msleakeja
MSLEEJA	25000	48	MS_MSSTATE	project\vine\ms\msstate	msleeja
MSLINCOLNJA	25000	50	MS_MSSTATE	project\vine\ms\msstate	mslincolnja
MSMARIONJA	25000	53	MS_MSSTATE	project\vine\ms\msstate	msmarionja
MSOKTIBBEHAJA	25000	59	MS_MSSTATE	project\vine\ms\msstate	msoktibbehaja
MSPANOLAJA	25000	60	MS_MSSTATE	project\vine\ms\msstate	mspanolaja
MSPONTOTOCJA	25000	63	MS_MSSTATE	project\vine\ms\msstate	mspontotocja
MSPRENTISSJA	25000	64	MS_MSSTATE	project\vine\ms\msstate	msprentissja
MSSCOTTJA	25000	67	MS_MSSTATE	project\vine\ms\msstate	msscottja
MSSTONEJA	25000	70	MS_MSSTATE	project\vine\ms\msstate	msstoneja
MSSUNFLOWERJA	25000	71	MS_MSSTATE	project\vine\ms\msstate	mssunflowerja
MSTATEJA	25000	73	MS_MSSTATE	project\vine\ms\msstate	mstateja
MSTUNICAJA	25000	75	MS_MSSTATE	project\vine\ms\msstate	mstunicaja
MSWALTHALLJA	25000	77	MS_MSSTATE	project\vine\ms\msstate	mswalthallja
MSWASHINGTONJA	25000	79	MS_MSSTATE	project\vine\ms\msstate	mswashingtonja
MSWAYNEJA	25000	80	MS_MSSTATE	project\vine\ms\msstate	mswayneja
MSWILKINSONJA	25000	82	MS_MSSTATE	project\vine\ms\msstate	mswilkinsonja
MSWINSTONCHOCTAWJA	25000	83	MS_MSSTATE	project\vine\ms\msstate	mswinstonja
MSYALOBUSHAJA	25000	84	MS_MSSTATE	project\vine\ms\msstate	msyalobushaja
MSYAZOOJA	25000	85	MS_MSSTATE	project\vine\ms\msstate	msyazooja
TNROBERTSONJA	43000	76	TN_TNSTATE	project\vine\tn\tnstate	tnrobertsonja
TNSCOTTJA	43000	78	TN_TNSTATE	project\vine\tn\tnstate	tnscottja
TNSEQUATCHIEJA	43000	79	TN_TNSTATE	project\vine\tn\tnstate	tnsequatchieja
TNSHELBYJA	43000	80	TN_TNSTATE	project\vine\tn\tnstate	tnshelbyja
TNSULLIVANJA	43000	83	TN_TNSTATE	project\vine\tn\tnstate	tnsullivanja
TNTIPTONJA	43000	84	TN_TNSTATE	project\vine\tn\tnstate	tntiptonja
TNUNIONJA	43000	86	TN_TNSTATE	project\vine\tn\tnstate	tnunionja
TNWASHINGTONJA	43000	89	TN_TNSTATE	project\vine\tn\tnstate	tnwashingtonja
TNWEAKLEYJA	43000	91	TN_TNSTATE	project\vine\tn\tnstate	tnweakleyja
TNWHITEJA	43000	92	TN_TNSTATE	project\vine\tn\tnstate	tnwhiteja
TNWILLIAMSONJA	43000	93	TN_TNSTATE	project\vine\tn\tnstate	tnwilliamsonja
TNWILSONJA	43000	94	TN_TNSTATE	project\vine\tn\tnstate	tnwilsonja
HFADAMSJA	99000	1	HF_STATE	project\vine\sv\hfstate	hfadamsja
LACOURTSXML	19000	801	LA_LASTATE	project\vine\la\lastate	lacourtsxml
WAFERRYJA	48626	14	WA_WASTATE	project\vine\wa\wastate	waferryja
MDOC	25000	900	MS_MSSTATE	project\vine\ms\msstate	msdoc
TEST5	99999997	1	RM TESTING	project\vine\rm\rmstate	test5
SENDER_ID	99999997	2	RM TESTING	project\vine\rm\rmstate	copy
IDDSIHOSTJA	13000	515	ID_IDSTATE	project\vine\id\idstate	iddsihostja
MSSECURUS	25000	100	MS_MSSTATE	project\vine\ms\msstate	mssecurus
HFHARRISONJA	99000	2	HF_STATE	project\vine\sv\hfstate	hfharrisonja
HFMONROEJA	99000	4	HF_STATE	project\vine\sv\hfstate	hfmonroeja
HFJEFFERSONJA	99000	3	HF_STATE	project\vine\sv\hfstate	hfjeffersonja
HFWASHINGTONJA	99000	5	HF_STATE	project\vine\sv\hfstate	hfwashingtonja
VAFAUQUIERJA	47000	259	VA_VASTATE	project\vine\va\vastate	vafauquierja
INSECURUS	15000	701	IN_INSTATE	project\vine\in\instate	insecurus
ARWATCHJX	4999	999	AR_ARSTATE	project\vine\ar\arstate	arwatchjx
HFDOC	99000	900	HF_STATE	project\vine\sv\hfstate	hfdoc
INCOURTS	15000	300	IN_INSTATE	project\vine\in\instate	incourts
SCALLENDALEJA	41000	5	SC_SCSTATE	project\vine\sc\scstate	scallendaleja
SCANDERSONCITYJA	41000	6	SC_SCSTATE	project\vine\sc\scstate	scandersoncityja
SCBEAUFORTJA	41000	10	SC_SCSTATE	project\vine\sc\scstate	scbeaufortja
SCCHESTERFIELDJA	41000	16	SC_SCSTATE	project\vine\sc\scstate	scchesterfieldja
SCDARLINGTONJA	41000	20	SC_SCSTATE	project\vine\sc\scstate	scdarlingtonja
SCDARLINGTONPC	41000	22	SC_SCSTATE	project\vine\sc\scstate	scdarlingtonpc
SCDILLONJA	41000	23	SC_SCSTATE	project\vine\sc\scstate	scdillonja
SCFAIRFIELDDC	41000	26	SC_SCSTATE	project\vine\sc\scstate	scfairfielddc
SCGEORGETOWNJA	41000	28	SC_SCSTATE	project\vine\sc\scstate	scgeorgetownja
SCGREENWOODJA	41000	31	SC_SCSTATE	project\vine\sc\scstate	scgreenwoodja
SCHORRYJA	41000	33	SC_SCSTATE	project\vine\sc\scstate	schorryja
SCJASPERJA	41000	34	SC_SCSTATE	project\vine\sc\scstate	scjasperja
SCLEXINGTONJA	41000	38	SC_SCSTATE	project\vine\sc\scstate	sclexingtonja
SCMCCORMICKJA	41000	42	SC_SCSTATE	project\vine\sc\scstate	scmccormickja
SCPICKENSPC	41000	47	SC_SCSTATE	project\vine\sc\scstate	scpickenspc
SCSPARTANBURGJA	41000	51	SC_SCSTATE	project\vine\sc\scstate	scspartanburgja
ACJIC	1000	69	AL_ALSTATE	project\vine\al\alstate	acjic
TEST1	99999997	3	RM TESTING	project\vine\rm\rmstate	test1
TEST2	99999997	4	RM TESTING	project\vine\rm\rmstate	test2
TEST3	99999997	5	RM TESTING	project\vine\rm\rmstate	test3
VAHENRICOJA	47000	272	VA_VASTATE	project\vine\va\vastate	vahenricoja
INADAMSCC	15000	301	IN_INSTATE	project\vine\in\instate	inadamscc
INADAMSSC	15000	302	IN_INSTATE	project\vine\in\instate	inadamssc
INALLENCC	15000	303	IN_INSTATE	project\vine\in\instate	inallencc
INALLENSC1	15000	304	IN_INSTATE	project\vine\in\instate	inallensc1
INALLENSC2	15000	305	IN_INSTATE	project\vine\in\instate	inallensc2
INALLENNEWHAVENYC	15000	306	IN_INSTATE	project\vine\in\instate	inallennewhavenyc
INBARTHOLOMEWCC	15000	307	IN_INSTATE	project\vine\in\instate	inbartholomewcc
INBARTHOLOMEWSC	15000	308	IN_INSTATE	project\vine\in\instate	inbartholomewsc
INBENTONCC	15000	309	IN_INSTATE	project\vine\in\instate	inbentoncc
INBLACKFORDCC	15000	310	IN_INSTATE	project\vine\in\instate	inblackfordcc
INBLACKFORDSC	15000	311	IN_INSTATE	project\vine\in\instate	inblackfordsc
INBOONECC	15000	312	IN_INSTATE	project\vine\in\instate	inboonecc
INBOONESC1	15000	313	IN_INSTATE	project\vine\in\instate	inboonesc1
INBOONESC2	15000	314	IN_INSTATE	project\vine\in\instate	inboonesc2
INBOONELEBANONYC	15000	315	IN_INSTATE	project\vine\in\instate	inboonelebanonyc
INBOONETHORNTOWNTC	15000	316	IN_INSTATE	project\vine\in\instate	inboonethorntowntc
INBOONEZIONSVILLETC	15000	317	IN_INSTATE	project\vine\in\instate	inboonezionsvilletc
INBOONEJAMESTOWNTC	15000	318	IN_INSTATE	project\vine\in\instate	inboonejamestowntc
INBOONEWHITESTOWNTC	15000	319	IN_INSTATE	project\vine\in\instate	inboonewhitestowntc
INBROWNCC	15000	320	IN_INSTATE	project\vine\in\instate	inbrowncc
INCARROLLCC	15000	321	IN_INSTATE	project\vine\in\instate	incarrollcc
INCARROLLSC	15000	322	IN_INSTATE	project\vine\in\instate	incarrollsc
INCARROLLDELPHIYC	15000	323	IN_INSTATE	project\vine\in\instate	incarrolldelphiyc
INCARROLLBURLINGTONTC	15000	324	IN_INSTATE	project\vine\in\instate	incarrollburlingtontc
INCASSCC	15000	325	IN_INSTATE	project\vine\in\instate	incasscc
INCASSSC	15000	326	IN_INSTATE	project\vine\in\instate	incasssc
INCLARKCC	15000	327	IN_INSTATE	project\vine\in\instate	inclarkcc
INCLARKSC	15000	328	IN_INSTATE	project\vine\in\instate	inclarksc
INCLARKCHARLESTOWNYC	15000	329	IN_INSTATE	project\vine\in\instate	inclarkcharlestownyc
INCLARKJEFFERSONVILLEYC	15000	330	IN_INSTATE	project\vine\in\instate	inclarkjeffersonvilleyc
INCLARKCLARKSVILLETC	15000	331	IN_INSTATE	project\vine\in\instate	inclarkclarksvilletc
INCLARKSELLERSBURGTC	15000	332	IN_INSTATE	project\vine\in\instate	inclarksellersburgtc
INCLAYCC	15000	333	IN_INSTATE	project\vine\in\instate	inclaycc
INCLAYSC	15000	334	IN_INSTATE	project\vine\in\instate	inclaysc
INCLINTONCC	15000	335	IN_INSTATE	project\vine\in\instate	inclintoncc
INCLINTONSC	15000	336	IN_INSTATE	project\vine\in\instate	inclintonsc
INCLINTONFRANKFORTYC	15000	337	IN_INSTATE	project\vine\in\instate	inclintonfrankfortyc
INCRAWFORDCC	15000	338	IN_INSTATE	project\vine\in\instate	incrawfordcc
INDAVIESSSC	15000	340	IN_INSTATE	project\vine\in\instate	indaviesssc
INDEARBORNOHIOCC	15000	341	IN_INSTATE	project\vine\in\instate	indearbornohiocc
INDEARBORNSC	15000	342	IN_INSTATE	project\vine\in\instate	indearbornsc
INDEARBORNAURORAYC	15000	343	IN_INSTATE	project\vine\in\instate	indearbornaurorayc
INDEARBORNLAWRENCEBURGYC	15000	344	IN_INSTATE	project\vine\in\instate	indearbornlawrenceburgyc
INDECATURCC	15000	345	IN_INSTATE	project\vine\in\instate	indecaturcc
INDEKALBCC	15000	347	IN_INSTATE	project\vine\in\instate	indekalbcc
INDEKALBSC	15000	348	IN_INSTATE	project\vine\in\instate	indekalbsc
INDEKALBBUTLERYC	15000	349	IN_INSTATE	project\vine\in\instate	indekalbbutleryc
INDELAWARECC	15000	350	IN_INSTATE	project\vine\in\instate	indelawarecc
INDELAWAREMUNCIEYC	15000	351	IN_INSTATE	project\vine\in\instate	indelawaremuncieyc
INDELAWAREYORKTOWNTC	15000	352	IN_INSTATE	project\vine\in\instate	indelawareyorktowntc
INDUBOISCC	15000	353	IN_INSTATE	project\vine\in\instate	induboiscc
INDUBOISSC	15000	354	IN_INSTATE	project\vine\in\instate	induboissc
INELKHARTCC	15000	355	IN_INSTATE	project\vine\in\instate	inelkhartcc
INELKHARTSC1	15000	356	IN_INSTATE	project\vine\in\instate	inelkhartsc1
INELKHARTSC2	15000	357	IN_INSTATE	project\vine\in\instate	inelkhartsc2
INELKHARTELKHARTYC	15000	358	IN_INSTATE	project\vine\in\instate	inelkhartelkhartyc
INELKHARTGOSHENYC	15000	359	IN_INSTATE	project\vine\in\instate	inelkhartgoshenyc
INELKHARTNAPPANEEYC	15000	360	IN_INSTATE	project\vine\in\instate	inelkhartnappaneeyc
INFAYETTECC	15000	361	IN_INSTATE	project\vine\in\instate	infayettecc
INFAYETTESC	15000	362	IN_INSTATE	project\vine\in\instate	infayettesc
INFLOYDCC	15000	363	IN_INSTATE	project\vine\in\instate	infloydcc
INFLOYDSC	15000	364	IN_INSTATE	project\vine\in\instate	infloydsc
INFLOYDCT	15000	365	IN_INSTATE	project\vine\in\instate	infloydct
INFOUNTAINCC	15000	366	IN_INSTATE	project\vine\in\instate	infountaincc
INFOUNTAINATTICAYC	15000	367	IN_INSTATE	project\vine\in\instate	infountainatticayc
INFRANKLINCC	15000	368	IN_INSTATE	project\vine\in\instate	infranklincc
INFULTONCC	15000	369	IN_INSTATE	project\vine\in\instate	infultoncc
INFULTONSC	15000	370	IN_INSTATE	project\vine\in\instate	infultonsc
INGIBSONCC	15000	371	IN_INSTATE	project\vine\in\instate	ingibsoncc
INGIBSONSC	15000	372	IN_INSTATE	project\vine\in\instate	ingibsonsc
INGRANTCC	15000	373	IN_INSTATE	project\vine\in\instate	ingrantcc
INGRANTSC	15000	374	IN_INSTATE	project\vine\in\instate	ingrantsc
INGRANTGASCITYYC	15000	375	IN_INSTATE	project\vine\in\instate	ingrantgascityyc
INGRANTMARIONYC	15000	376	IN_INSTATE	project\vine\in\instate	ingrantmarionyc
INGREENECC	15000	377	IN_INSTATE	project\vine\in\instate	ingreenecc
INGREENESC	15000	378	IN_INSTATE	project\vine\in\instate	ingreenesc
INHAMILTONCC	15000	379	IN_INSTATE	project\vine\in\instate	inhamiltoncc
INHAMILTONSC	15000	380	IN_INSTATE	project\vine\in\instate	inhamiltonsc
INHAMILTONCARMELYC	15000	381	IN_INSTATE	project\vine\in\instate	inhamiltoncarmelyc
INHAMILTONNOBLESVILLEYC	15000	382	IN_INSTATE	project\vine\in\instate	inhamiltonnoblesvilleyc
INHANCOCKCC	15000	383	IN_INSTATE	project\vine\in\instate	inhancockcc
INHANCOCKSC	15000	384	IN_INSTATE	project\vine\in\instate	inhancocksc
INHARRISONCC	15000	385	IN_INSTATE	project\vine\in\instate	inharrisoncc
INHARRISONSC	15000	386	IN_INSTATE	project\vine\in\instate	inharrisonsc
INHENDRICKSCC	15000	387	IN_INSTATE	project\vine\in\instate	inhendrickscc
INHENDRICKSSC	15000	388	IN_INSTATE	project\vine\in\instate	inhendrickssc
INHENDRICKSPLAINFILEDTC	15000	389	IN_INSTATE	project\vine\in\instate	inhendricksplainfieldtc
INHENDRICKSBROWNSBURGTC	15000	390	IN_INSTATE	project\vine\in\instate	inhendricksbrownsburgtc
INHENDRICKSAVONTC	15000	391	IN_INSTATE	project\vine\in\instate	inhendricksavontc
INHENRYCC	15000	392	IN_INSTATE	project\vine\in\instate	inhenrycc
INHENRYNEWCASTLEYC	15000	394	IN_INSTATE	project\vine\in\instate	inhenrynewcastleyc
INHENRYKNIGHTSTOWNTC	15000	395	IN_INSTATE	project\vine\in\instate	inhenryknightstowntc
INHOWARDCC	15000	396	IN_INSTATE	project\vine\in\instate	inhowardcc
INHOWARDSC	15000	397	IN_INSTATE	project\vine\in\instate	inhowardsc
INHUNTINGTONCC	15000	398	IN_INSTATE	project\vine\in\instate	inhuntingtoncc
INHUNTINGTONROANOKETC	15000	400	IN_INSTATE	project\vine\in\instate	inhuntingtonroanoketc
INJACKSONCC	15000	401	IN_INSTATE	project\vine\in\instate	injacksoncc
INJACKSONSC1	15000	402	IN_INSTATE	project\vine\in\instate	injacksonsc1
INJACKSONSC2	15000	403	IN_INSTATE	project\vine\in\instate	injacksonsc2
INJASPERCC	15000	404	IN_INSTATE	project\vine\in\instate	injaspercc
INJASPERSC	15000	405	IN_INSTATE	project\vine\in\instate	injaspersc
INJASPERDEMOTTTC	15000	406	IN_INSTATE	project\vine\in\instate	injasperdemottetc
INJAYCC	15000	407	IN_INSTATE	project\vine\in\instate	injaycc
INJAYSC	15000	408	IN_INSTATE	project\vine\in\instate	injaysc
INJAYDUNKIRKYC	15000	409	IN_INSTATE	project\vine\in\instate	injaydunkirkyc
INJAYPORTLANDYC	15000	410	IN_INSTATE	project\vine\in\instate	injayportlandyc
INJEFFERSONSC	15000	411	IN_INSTATE	project\vine\in\instate	injeffersonsc
INJEFFERSONCC	15000	412	IN_INSTATE	project\vine\in\instate	injeffersoncc
INJENNINGSCC	15000	413	IN_INSTATE	project\vine\in\instate	injenningscc
INJENNINGSSC	15000	414	IN_INSTATE	project\vine\in\instate	injenningssc
INJOHNSONCC	15000	415	IN_INSTATE	project\vine\in\instate	injohnsoncc
INJOHNSONSC1	15000	416	IN_INSTATE	project\vine\in\instate	injohnsonsc1
INJOHNSONSC2	15000	417	IN_INSTATE	project\vine\in\instate	injohnsonsc2
INJOHNSONFRANKLINYC	15000	418	IN_INSTATE	project\vine\in\instate	injohnsonfranklinyc
INJOHNSONGREENWOODYC	15000	419	IN_INSTATE	project\vine\in\instate	injohnsongreenwoodyc
INKNOXCC	15000	420	IN_INSTATE	project\vine\in\instate	inknoxcc
INKNOXSC1	15000	421	IN_INSTATE	project\vine\in\instate	inknoxsc1
INKNOXSC2	15000	422	IN_INSTATE	project\vine\in\instate	inknoxsc2
INKNOXBICKNELLYC	15000	423	IN_INSTATE	project\vine\in\instate	inknoxbicknellyc
INKOSCIUSKOCC	15000	424	IN_INSTATE	project\vine\in\instate	inkosciuskocc
INKOSCIUSKOSC	15000	425	IN_INSTATE	project\vine\in\instate	inkosciuskosc
INLAGRANGECC	15000	426	IN_INSTATE	project\vine\in\instate	inlagrangecc
INLAGRANGESC	15000	427	IN_INSTATE	project\vine\in\instate	inlagrangesc
INLAKECC	15000	428	IN_INSTATE	project\vine\in\instate	inlakecc
INLAKESC1	15000	429	IN_INSTATE	project\vine\in\instate	inlakesc1
INLAKESC2	15000	430	IN_INSTATE	project\vine\in\instate	inlakesc2
INLAKESC3	15000	431	IN_INSTATE	project\vine\in\instate	inlakesc3
INLAKESC4	15000	432	IN_INSTATE	project\vine\in\instate	inlakesc4
INLAKESC5	15000	433	IN_INSTATE	project\vine\in\instate	inlakesc5
INLAKESC6	15000	434	IN_INSTATE	project\vine\in\instate	inlakesc6
INLAKESC7	15000	435	IN_INSTATE	project\vine\in\instate	inlakesc7
INLAKESC8	15000	436	IN_INSTATE	project\vine\in\instate	inlakesc8
INLAKESC9	15000	437	IN_INSTATE	project\vine\in\instate	inlakesc9
INLAKESC10	15000	438	IN_INSTATE	project\vine\in\instate	inlakesc10
INLAKESC11	15000	439	IN_INSTATE	project\vine\in\instate	inlakesc11
INLAKESC12	15000	440	IN_INSTATE	project\vine\in\instate	inlakesc12
INLAKESC13	15000	441	IN_INSTATE	project\vine\in\instate	inlakesc13
INLAKESC14	15000	442	IN_INSTATE	project\vine\in\instate	inlakesc14
INLAKESC15	15000	443	IN_INSTATE	project\vine\in\instate	inlakesc15
INLAKESC16	15000	444	IN_INSTATE	project\vine\in\instate	inlakesc16
INLAKECROWNPOINTYC	15000	445	IN_INSTATE	project\vine\in\instate	inlakecrownpointyc
INLAKEEASTCHICAGOYC	15000	446	IN_INSTATE	project\vine\in\instate	inlakeeastchicagoyc
INLAKEGARYYC	15000	447	IN_INSTATE	project\vine\in\instate	inlakegaryyc
INLAKEHAMMONDYC	15000	448	IN_INSTATE	project\vine\in\instate	inlakehammondyc
INLAKEHOBARTYC	15000	449	IN_INSTATE	project\vine\in\instate	inlakehobartyc
INLAKELAKESTATIONYC	15000	450	IN_INSTATE	project\vine\in\instate	inlakelakestationyc
INLAKEWHITINGYC	15000	451	IN_INSTATE	project\vine\in\instate	inlakewhitingyc
INLAKESSCHERERVILLETC	15000	453	IN_INSTATE	project\vine\in\instate	inlakescherervilletc
INLAKELOWELLTC	15000	454	IN_INSTATE	project\vine\in\instate	inlakelowelltc
INLAPORTECC	15000	455	IN_INSTATE	project\vine\in\instate	inlaportecc
INLAPORTESC1	15000	456	IN_INSTATE	project\vine\in\instate	inlaportesc1
INLAPORTESC2	15000	457	IN_INSTATE	project\vine\in\instate	inlaportesc2
INLAWRENCECC	15000	458	IN_INSTATE	project\vine\in\instate	inlawrencecc
INMADISONCC	15000	460	IN_INSTATE	project\vine\in\instate	inmadisoncc
INMADISONSC	15000	461	IN_INSTATE	project\vine\in\instate	inmadisonsc
INMADIDONALEXANDRIAYC	15000	462	IN_INSTATE	project\vine\in\instate	inmadisonalexandriayc
INMADISONANDERSONYC	15000	463	IN_INSTATE	project\vine\in\instate	inmadisonandersonyc
INMADISONELWOODYC	15000	464	IN_INSTATE	project\vine\in\instate	inmadisonelwoodyc
INMADISONEDGEWOODTC	15000	465	IN_INSTATE	project\vine\in\instate	inmadisonedgewoodtc
INMADISONPENDLETONTC	15000	466	IN_INSTATE	project\vine\in\instate	inmadisonpendletontc
INMARIONCC	15000	467	IN_INSTATE	project\vine\in\instate	inmarioncc
INMARIONSC1	15000	468	IN_INSTATE	project\vine\in\instate	inmarionsc1
INMARIONSC2	15000	469	IN_INSTATE	project\vine\in\instate	inmarionsc2
INMARIONSC3	15000	470	IN_INSTATE	project\vine\in\instate	inmarionsc3
INMARIONBEECHGROVEYC	15000	471	IN_INSTATE	project\vine\in\instate	inmarionbeechgroveyc
INMARSHALLCC	15000	472	IN_INSTATE	project\vine\in\instate	inmarshallcc
INMARSHALLSC	15000	473	IN_INSTATE	project\vine\in\instate	inmarshallsc
INMARTINCC	15000	474	IN_INSTATE	project\vine\in\instate	inmartincc
INMIAMICC	15000	475	IN_INSTATE	project\vine\in\instate	inmiamicc
INMIAMISC	15000	476	IN_INSTATE	project\vine\in\instate	inmiamisc
INMIAMIPERUYC	15000	477	IN_INSTATE	project\vine\in\instate	inmiamiperuyc
INMIAMIBUNKERHILLTC	15000	478	IN_INSTATE	project\vine\in\instate	inmiamibunkerhilltc
INMONROECC	15000	479	IN_INSTATE	project\vine\in\instate	inmonroecc
INMONTGOMERYCC	15000	480	IN_INSTATE	project\vine\in\instate	inmontgomerycc
INMONTGOMERYSC	15000	481	IN_INSTATE	project\vine\in\instate	inmontgomerysc
INMORGANCC	15000	482	IN_INSTATE	project\vine\in\instate	inmorgancc
INMORGANSC	15000	483	IN_INSTATE	project\vine\in\instate	inmorgansc
INMORGANMARTINSVILLEYC	15000	484	IN_INSTATE	project\vine\in\instate	inmorganmartinsvilleyc
INMORGANMOORESVILLETC	15000	485	IN_INSTATE	project\vine\in\instate	inmorganmooresvilletc
INNEWTONCC	15000	486	IN_INSTATE	project\vine\in\instate	innewtoncc
INNEWTONSC	15000	487	IN_INSTATE	project\vine\in\instate	innewtonsc
INNOBLECC	15000	488	IN_INSTATE	project\vine\in\instate	innoblecc
INNOBLESC	15000	489	IN_INSTATE	project\vine\in\instate	innoblesc
INOHIOCC	15000	490	IN_INSTATE	project\vine\in\instate	inohiocc
INOHIOSC	15000	491	IN_INSTATE	project\vine\in\instate	inohiosc
INORANGECC	15000	492	IN_INSTATE	project\vine\in\instate	inorangecc
INORANGESC	15000	493	IN_INSTATE	project\vine\in\instate	inorangesc
INOWENCC	15000	494	IN_INSTATE	project\vine\in\instate	inowencc
INPARKECC	15000	495	IN_INSTATE	project\vine\in\instate	inparkecc
INPIKECC	15000	497	IN_INSTATE	project\vine\in\instate	inpikecc
INPORTERCC	15000	498	IN_INSTATE	project\vine\in\instate	inportercc
INPORTERSC1	15000	499	IN_INSTATE	project\vine\in\instate	inportersc1
INPOSEYCC	15000	501	IN_INSTATE	project\vine\in\instate	inposeycc
INPOSEYSC	15000	502	IN_INSTATE	project\vine\in\instate	inposeysc
INPULASKICC	15000	503	IN_INSTATE	project\vine\in\instate	inpulaskicc
INPULASKISC	15000	504	IN_INSTATE	project\vine\in\instate	inpulaskisc
INPUTNAMCC	15000	505	IN_INSTATE	project\vine\in\instate	inputnamcc
INPUTNAMSC	15000	506	IN_INSTATE	project\vine\in\instate	inputnamsc
INRANDOLPHCC	15000	507	IN_INSTATE	project\vine\in\instate	inrandolphcc
INRANDOLPHSC	15000	508	IN_INSTATE	project\vine\in\instate	inrandolphsc
INRANDOLPHWINCHESTERYC	15000	509	IN_INSTATE	project\vine\in\instate	inrandolphwinchesteryc
INRANDOLPHUNIONCITYYC	15000	510	IN_INSTATE	project\vine\in\instate	inrandolphunioncityyc
INRIPLEYCC	15000	511	IN_INSTATE	project\vine\in\instate	inripleycc
INRIPLEYSC	15000	512	IN_INSTATE	project\vine\in\instate	inripleysc
INRIPLEYBATESVILLEYC	15000	513	IN_INSTATE	project\vine\in\instate	inripleybatesvilleyc
INRIPLEYVERSAILLESTC	15000	514	IN_INSTATE	project\vine\in\instate	inripleyversaillestc
INRUSHCC	15000	515	IN_INSTATE	project\vine\in\instate	inrushcc
INRUSHSC	15000	516	IN_INSTATE	project\vine\in\instate	inrushsc
INSTJOSEPHCC	15000	517	IN_INSTATE	project\vine\in\instate	instjosephcc
INSTJOSEPHSC	15000	518	IN_INSTATE	project\vine\in\instate	instjosephsc
INSTJOSEPHPC	15000	519	IN_INSTATE	project\vine\in\instate	instjosephpc
INSTJOSEPHWALKERTONTC	15000	520	IN_INSTATE	project\vine\in\instate	instjosephwalkertontc
INSCOTTCC	15000	521	IN_INSTATE	project\vine\in\instate	inscottcc
INSCOTTSC	15000	522	IN_INSTATE	project\vine\in\instate	inscottsc
INSHELBYCC	15000	523	IN_INSTATE	project\vine\in\instate	inshelbycc
INSHELBYSC1	15000	524	IN_INSTATE	project\vine\in\instate	inshelbysc1
INSPENCERCC	15000	525	IN_INSTATE	project\vine\in\instate	inspencercc
INSTARKECC	15000	526	IN_INSTATE	project\vine\in\instate	instarkecc
INSTARKEKNOXYC	15000	527	IN_INSTATE	project\vine\in\instate	instarkeknoxyc
INSTEUBENCC	15000	528	IN_INSTATE	project\vine\in\instate	insteubencc
INSTEUBENSC	15000	529	IN_INSTATE	project\vine\in\instate	insteubensc
INSTEUBENFREMONTTC	15000	530	IN_INSTATE	project\vine\in\instate	insteubenfremonttc
INSULLIVANCC	15000	531	IN_INSTATE	project\vine\in\instate	insullivancc
INSULLIVANSC	15000	532	IN_INSTATE	project\vine\in\instate	insullivansc
INSWITZERLANDCC	15000	533	IN_INSTATE	project\vine\in\instate	inswitzerlandcc
INSWITZERLANDSC	15000	534	IN_INSTATE	project\vine\in\instate	inswitzerlandsc
INTIPPECANOECC	15000	535	IN_INSTATE	project\vine\in\instate	intippecanoecc
INTIPPECANOESC	15000	536	IN_INSTATE	project\vine\in\instate	intippecanoesc
INTIPPECANOEWESTLAFAYETTEYC	15000	537	IN_INSTATE	project\vine\in\instate	intippecanoewestlafayetteyc
INTIPTONCC	15000	538	IN_INSTATE	project\vine\in\instate	intiptoncc
INTIPTONTIPTONYC	15000	539	IN_INSTATE	project\vine\in\instate	intiptontiptonyc
INTIPTONSHARPVILLETC	15000	540	IN_INSTATE	project\vine\in\instate	intiptonsharpsvilletc
INUNIONCC	15000	541	IN_INSTATE	project\vine\in\instate	inunioncc
INVANDERBURGHCC	15000	542	IN_INSTATE	project\vine\in\instate	invanderburghcc
INVANDERBURGHSC1	15000	543	IN_INSTATE	project\vine\in\instate	invanderburghsc1
INVANDERBURGHSC2	15000	544	IN_INSTATE	project\vine\in\instate	invanderburghsc2
INVERMILLIONCC	15000	545	IN_INSTATE	project\vine\in\instate	invermillioncc
INVERMILLIONCLINTONYC	15000	546	IN_INSTATE	project\vine\in\instate	invermillionclintonyc
INVIGOCC3	15000	547	IN_INSTATE	project\vine\in\instate	invigocc3
INVIGOSC2	15000	548	IN_INSTATE	project\vine\in\instate	invigosc2
INVIGOTERREHAUTEYC	15000	549	IN_INSTATE	project\vine\in\instate	invigoterrehauteyc
INWABASHCC	15000	550	IN_INSTATE	project\vine\in\instate	inwabashcc
INWABASHSC	15000	551	IN_INSTATE	project\vine\in\instate	inwabashsc
INWABASHWABASHYC	15000	552	IN_INSTATE	project\vine\in\instate	inwabashwabashyc
INWABASHNORTHMANCHESTERTC	15000	553	IN_INSTATE	project\vine\in\instate	inwabashnorthmanchestertc
INWARRENCC	15000	554	IN_INSTATE	project\vine\in\instate	inwarrencc
INWARRICKCC	15000	555	IN_INSTATE	project\vine\in\instate	inwarrickcc
INWARRICKSC	15000	556	IN_INSTATE	project\vine\in\instate	inwarricksc
INWASHINGTONCC	15000	557	IN_INSTATE	project\vine\in\instate	inwashingtoncc
INWASHINGTONSC	15000	558	IN_INSTATE	project\vine\in\instate	inwashingtonsc
INWAYNECC	15000	559	IN_INSTATE	project\vine\in\instate	inwaynecc
INWAYNESC	15000	560	IN_INSTATE	project\vine\in\instate	inwaynesc
INWAYNEHAGERSTOWNTC	15000	561	IN_INSTATE	project\vine\in\instate	inwaynehagerstowntc
INWELLSCC	15000	562	IN_INSTATE	project\vine\in\instate	inwellscc
INWELLSSC	15000	563	IN_INSTATE	project\vine\in\instate	inwellssc
INWELLSBLUFFTONYC	15000	564	IN_INSTATE	project\vine\in\instate	inwellsblufftonyc
INWHITECC	15000	565	IN_INSTATE	project\vine\in\instate	inwhitecc
INWHITESC	15000	566	IN_INSTATE	project\vine\in\instate	inwhitesc
INWHITEMONONTC	15000	567	IN_INSTATE	project\vine\in\instate	inwhitemonontc
INWHITLEYCC	15000	568	IN_INSTATE	project\vine\in\instate	inwhitleycc
INWHITLEYSC	15000	569	IN_INSTATE	project\vine\in\instate	inwhitleysc
INPORTERSC3	15000	500	IN_INSTATE	project\vine\in\instate	inportersc3
LASTBERNARDJA	19000	44	LA_LASTATE	project\vine\la\lastate	lastbernardja
SCPICKENSJA	41000	46	SC_SCSTATE	project\vine\sc\scstate	scpickensja
SCBARNWELLJA	41000	9	SC_SCSTATE	project\vine\sc\scstate	scbarnwellja
CODYCJA	6000	400	CO_COSTATE	project\vine\co\costate	codycja
INDAVIESSCC	15000	339	IN_INSTATE	project\vine\in\instate	indaviesscc
INHENRYSC	15000	393	IN_INSTATE	project\vine\in\instate	inhenrysc
INHUNTINGTONSC	15000	399	IN_INSTATE	project\vine\in\instate	inhuntingtonsc
INDECATURSC	15000	346	IN_INSTATE	project\vine\in\instate	indecatursc
INLAKEMERRILLVILLETC	15000	452	IN_INSTATE	project\vine\in\instate	inlakemerrillvilletc
INLAWRENCESC	15000	459	IN_INSTATE	project\vine\in\instate	inlawrencesc
INPERRYCC	15000	496	IN_INSTATE	project\vine\in\instate	inperrycc
SCDSIHOSTJA	41000	515	SC_SCSTATE	project\vine\sc\scstate	scdsihostja
SCANDERSONJA	41000	7	SC_SCSTATE	project\vine\sc\scstate	scandersonja
TXTDCJPROB	44900	2505	TX_Statewide	project\vine\tx\txstate	txtdcjprob
VAPORTSMOUTHJA	47000	121	VA_VASTATE	project\vine\va\vastate	vaportsmouthja
INDSIHOSTJA	15000	93	IN_INSTATE	project\vine\in\instate	indsihostja
UTACTIVECONTACT	45105	1	Utah SONAR - Active Contact	\project\gov\sonar\ut\utstate	activecontact
ACTIVECONTACT	94001	1	SONAR - Watch Systems	\project\gov\sonar\watchsystems	activecontact
HFADAMSCT	99000	301	HF_STATE	project\vine\sv\hfstate	hfadamsct
HFHARRISONCT	99000	302	HF_STATE	project\vine\sv\hfstate	hfharrisonct
HFJEFFERSONCT	99000	303	HF_STATE	project\vine\sv\hfstate	hfjeffersonct
HFMONROECT	99000	304	HF_STATE	project\vine\sv\hfstate	hfmonroect
HFWASHINGTONCT	99000	305	HF_STATE	project\vine\sv\hfstate	hfwashingtonct
IADSIHOASTJA	16000	515	IA_IASTATE	project\vine\ia\iastate\	iadsihostja
IALEEJA	16000	57	IA_IASTATE	project\vine\ia\iastate\	ialeeja
NCSOR	34003	899	NC_STATE	project\vine\nc\ncstate	ncsor
TXOSSI	44900	558	TX_Statewide	project\vine\tx\txstate	txossi
HFCLARKCT	99000	306	HF_STATE	project\vine\sv\hfstate	hfclarkct
HFGRANTCT	99000	307	HF_STATE	project\vine\sv\hfstate	hfgrantct
HFBROWNCT	99000	308	HF_STATE	project\vine\sv\hfstate	hfbrownct
TXCAPSIT	44900	604	TX_Statewide	project\vine\tx\txstate	
TXTDCJPROBATION	44900	559	TX_Statewide	project\vine\tx\txstate	txtdcj\probation
ALBLOODHOUND	1000	555	AL_ALSTATE	project\vine\al\alstate	albloodhound
ARSOR	49500	500	AR_ARSTATE_SO	\project\gov\ar	arso
VTDOC	46000	2	VT_VTSTATE	project\vine\vt\vtstate	vtdoc
TNDSIHOSTJA	43000	515	TN_TNSTATE	project\vine\tn\tnstate	tndsihostja
NDDOCR	35000	900	ND_NDSTATE	project\vine\nd\ndstate	ndnorthdakotadoc
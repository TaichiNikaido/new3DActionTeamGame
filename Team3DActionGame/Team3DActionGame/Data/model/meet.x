xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 245;
 -81.42942;-15.06390;-5.46321;,
 -85.06666;-19.04835;0.26376;,
 -91.59382;-7.66836;1.19016;,
 -86.48515;-6.50208;-6.85479;,
 -81.27207;-15.94062;6.41577;,
 -86.27272;-7.68573;9.18180;,
 -83.21628;1.76958;7.74876;,
 -87.69129;4.86039;2.06325;,
 -83.37357;2.64639;-4.13025;,
 -72.48381;10.56870;2.28318;,
 -72.15258;7.17570;-6.03507;,
 -71.94006;5.99193;10.00158;,
 -59.88570;2.92881;7.52532;,
 -56.19498;6.42552;1.76163;,
 -60.04305;3.80568;-4.35366;,
 -49.87431;-3.07269;0.97686;,
 -55.19538;-3.05532;-7.01478;,
 -54.98301;-4.23891;9.02187;,
 -58.24746;-11.99358;6.40221;,
 -53.98350;-13.71975;0.24543;,
 -58.40484;-11.11680;-5.47677;,
 -68.98422;-21.30975;-0.11616;,
 -69.52791;-16.73307;-7.83456;,
 -69.31557;-17.91675;8.20209;,
 -81.27207;-15.94062;6.41577;,
 -85.06666;-19.04835;0.26376;,
 -81.42942;-15.06390;-5.46321;,
 -69.31557;-17.91675;8.20209;,
 -70.59246;-6.15960;11.77461;,
 -58.24746;-11.99358;6.40221;,
 -54.98301;-4.23891;9.02187;,
 -59.88570;2.92881;7.52532;,
 -71.94006;5.99193;10.00158;,
 -58.40484;-11.11680;-5.47677;,
 -69.52791;-16.73307;-7.83456;,
 -70.87560;-4.58145;-9.60756;,
 -55.19538;-3.05532;-7.01478;,
 -72.15258;7.17570;-6.03507;,
 -60.04305;3.80568;-4.35366;,
 -55.79268;-35.96967;-36.21060;,
 -56.81109;-43.28154;-22.56417;,
 -64.35609;-25.33413;-22.80228;,
 -59.28237;-21.71616;-41.24853;,
 -58.52763;-48.04731;-2.22816;,
 -64.35954;-28.66911;-0.72060;,
 -65.51436;-4.79556;1.05684;,
 -67.27875;-3.19428;-22.79208;,
 -63.88188;-1.32216;-42.71082;,
 -56.26680;-46.31514;18.53481;,
 -63.76785;-28.61181;21.60357;,
 -55.84227;-41.19036;33.08004;,
 -58.20300;-27.73098;40.24089;,
 -62.72277;-7.78158;44.80176;,
 -66.64671;-6.71604;24.92052;,
 -68.61339;15.52920;24.92583;,
 -69.56598;18.75894;2.84907;,
 -62.68782;13.12293;43.31580;,
 -64.14405;27.60054;38.26752;,
 -65.15892;34.68843;24.63156;,
 -68.07693;38.94351;4.31922;,
 -69.20163;18.80691;-19.47996;,
 -63.76710;19.13781;-38.17365;,
 -65.70330;37.72200;-16.46748;,
 -64.40451;32.78706;-31.02153;,
 -62.86452;36.65985;-34.19991;,
 -64.29177;42.08259;-18.20709;,
 -42.00435;56.33622;-18.97035;,
 -39.15399;45.91650;-40.01028;,
 -66.90009;43.42488;4.63437;,
 -43.92087;58.43730;5.43819;,
 -7.27461;59.61963;5.04009;,
 -7.15674;57.46770;-18.26424;,
 -6.14910;47.38944;-38.32719;,
 -63.69351;38.74911;26.95470;,
 -41.36604;52.77960;29.21475;,
 -62.57841;30.96066;41.93868;,
 -37.98273;39.38967;48.41457;,
 -5.03097;41.15793;46.09728;,
 -6.54708;54.07029;27.76479;,
 27.73074;60.39126;28.86144;,
 28.75245;66.44298;5.06655;,
 27.53733;46.60734;48.07950;,
 53.31117;43.72692;41.34591;,
 52.55298;51.55476;26.36025;,
 54.43917;56.79150;4.01397;,
 27.09249;63.94782;-19.32363;,
 26.36619;53.13405;-40.34514;,
 51.95487;54.88812;-18.80148;,
 51.58059;49.26693;-34.78503;,
 53.95869;45.82578;-31.62669;,
 54.29925;50.94129;-17.08104;,
 61.80039;33.23799;-20.14980;,
 56.23548;32.35713;-38.78715;,
 56.56002;52.67334;3.68190;,
 62.39202;33.29526;2.17434;,
 63.54681;9.42168;0.39687;,
 64.67907;11.34210;-23.46678;,
 60.75522;12.40764;-43.34799;,
 54.84354;47.90775;24.01791;,
 62.38839;29.96028;24.25593;,
 55.53363;40.78419;37.65546;,
 57.31464;26.34234;42.70203;,
 61.91412;5.94822;44.16423;,
 65.31099;7.82037;24.24573;,
 67.23396;-14.18070;20.93358;,
 67.59828;-14.13282;-1.39539;,
 61.79925;-14.51163;39.62715;,
 62.35281;-28.17012;32.47551;,
 63.73554;-33.09579;17.92107;,
 66.10935;-34.31727;-2.86554;,
 66.64581;-10.90305;-23.47212;,
 60.72024;-8.49684;-41.86209;,
 63.19128;-30.06225;-23.17785;,
 60.46779;-23.16258;-36.80502;,
 58.73328;-26.54127;-40.47531;,
 61.72593;-34.12290;-25.50099;,
 39.39834;-48.15351;-27.76104;,
 36.01515;-34.76361;-46.96089;,
 64.93239;-38.79870;-3.18075;,
 41.95317;-53.81121;-3.98445;,
 5.30697;-54.99351;-3.58635;,
 4.57944;-49.44417;-26.31102;,
 3.06330;-36.53181;-44.64357;,
 62.32404;-37.45638;19.66074;,
 40.03644;-51.71007;20.42403;,
 60.80436;-32.04372;35.65389;,
 37.18608;-41.29026;41.46375;,
 4.18149;-42.76326;39.78093;,
 5.18910;-52.84158;19.71801;,
 -29.06019;-59.32167;20.77740;,
 -30.72009;-61.81692;-3.61281;,
 -28.33386;-48.50793;41.79891;,
 -53.45592;-44.63061;36.23835;,
 -53.92248;-50.26197;20.25525;,
 -56.40672;-52.16541;-2.56020;,
 -29.69835;-55.76514;-27.40767;,
 -29.50497;-41.98110;-46.62579;,
 -54.52053;-46.92855;-24.90651;,
 -53.40147;-38.89383;-39.90195;,
 -53.45592;-44.63061;36.23835;,
 -28.33386;-48.50793;41.79891;,
 -32.15640;-29.60364;55.48779;,
 -56.04999;-29.84073;44.10714;,
 4.18149;-42.76326;39.78093;,
 2.23980;-24.53352;52.78146;,
 -0.22029;-1.94220;58.37694;,
 -36.51936;-6.15438;61.40025;,
 -61.01643;-7.91922;49.11882;,
 37.18608;-41.29026;41.46375;,
 36.94020;-21.99195;55.13427;,
 60.80436;-32.04372;35.65389;,
 60.19632;-17.03508;43.51257;,
 60.32253;5.44737;48.49821;,
 36.15390;1.85121;61.02849;,
 31.68228;25.90587;58.73937;,
 -2.78292;21.22104;56.22516;,
 55.26831;27.85752;46.89141;,
 -37.41435;18.29421;59.09274;,
 -60.97797;15.05178;47.48595;,
 35.44671;-13.66809;-57.63909;,
 59.01054;-10.42572;-46.03224;,
 0.81528;-16.59489;-54.77157;,
 -1.74741;6.56826;-56.92350;,
 34.55172;10.78053;-59.94666;,
 59.04906;12.54528;-47.66508;,
 -33.65010;-21.27963;-57.28590;,
 -57.23613;-23.23122;-45.43794;,
 -62.29038;-0.82125;-47.04480;,
 -38.12178;2.77485;-59.57517;,
 -38.90814;26.61816;-53.68095;,
 -4.20744;29.15967;-51.32772;,
 -62.16414;21.66123;-42.05904;,
 30.18873;34.22976;-54.03408;,
 54.08250;34.46685;-42.65337;,
 -53.40147;-38.89383;-39.90195;,
 -54.52053;-46.92855;-24.90651;,
 -57.23613;-23.23122;-45.43794;,
 -56.40672;-52.16541;-2.56020;,
 -62.29038;-0.82125;-47.04480;,
 -53.92248;-50.26197;20.25525;,
 -53.45592;-44.63061;36.23835;,
 -56.04999;-29.84073;44.10714;,
 -61.01643;-7.91922;49.11882;,
 -60.97797;15.05178;47.48595;,
 -62.57841;30.96066;41.93868;,
 -63.69351;38.74911;26.95470;,
 -66.90009;43.42488;4.63437;,
 -62.16414;21.66123;-42.05904;,
 -64.29177;42.08259;-18.20709;,
 -62.86452;36.65985;-34.19991;,
 51.58059;49.26693;-34.78503;,
 51.95487;54.88812;-18.80148;,
 54.08250;34.46685;-42.65337;,
 54.43917;56.79150;4.01397;,
 59.04906;12.54528;-47.66508;,
 52.55298;51.55476;26.36025;,
 53.31117;43.72692;41.34591;,
 55.26831;27.85752;46.89141;,
 60.32253;5.44737;48.49821;,
 60.19632;-17.03508;43.51257;,
 60.80436;-32.04372;35.65389;,
 62.32404;-37.45638;19.66074;,
 64.93239;-38.79870;-3.18075;,
 59.01054;-10.42572;-46.03224;,
 61.72593;-34.12290;-25.50099;,
 58.73328;-26.54127;-40.47531;,
 60.08112;0.49083;-6.18933;,
 56.44530;-3.50532;-0.46326;,
 49.91319;7.91982;0.46662;,
 55.02201;9.08610;-7.57839;,
 60.23865;-0.38598;5.68965;,
 55.23441;7.90236;8.45826;,
 58.28715;17.39139;7.02771;,
 53.81094;20.49393;1.34310;,
 58.12989;18.26814;-4.85127;,
 69.01668;26.21727;1.56414;,
 69.34953;22.80924;-6.75528;,
 69.56187;21.62559;9.28137;,
 81.46455;19.94454;6.90912;,
 85.10047;23.94075;1.18302;,
 81.30733;20.82132;-4.96986;,
 91.63260;12.51564;0.25320;,
 86.31150;12.53292;-7.73844;,
 86.52397;11.34930;8.29821;,
 83.41605;2.16726;5.57112;,
 87.73492;-0.05859;-0.62328;,
 83.25882;3.04404;-6.30789;,
 72.52935;-5.78184;-0.84432;,
 71.98407;-1.19013;-8.56158;,
 72.19635;-2.37372;7.47507;,
 60.23865;-0.38598;5.68965;,
 56.44530;-3.50532;-0.46326;,
 60.08112;0.49083;-6.18933;,
 72.19635;-2.37372;7.47507;,
 70.91451;9.42858;11.05095;,
 83.41605;2.16726;5.57112;,
 86.52397;11.34930;8.29821;,
 81.46455;19.94454;6.90912;,
 69.56187;21.62559;9.28137;,
 83.25882;3.04404;-6.30789;,
 71.98407;-1.19013;-8.56158;,
 70.63137;11.00682;-10.33116;,
 86.31150;12.53292;-7.73844;,
 69.34953;22.80924;-6.75528;,
 81.30733;20.82132;-4.96986;;
 
 176;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;2,5,6,7;,
 4;3,2,7,8;,
 4;8,7,9,10;,
 4;7,6,11,9;,
 4;9,11,12,13;,
 4;10,9,13,14;,
 4;14,13,15,16;,
 4;13,12,17,15;,
 4;15,17,18,19;,
 4;16,15,19,20;,
 4;20,19,21,22;,
 4;19,18,23,21;,
 4;21,23,24,25;,
 4;22,21,25,26;,
 4;4,27,28,5;,
 4;27,29,30,28;,
 4;28,30,31,32;,
 4;5,28,32,6;,
 4;33,34,35,36;,
 4;34,0,3,35;,
 4;35,3,8,37;,
 4;36,35,37,38;,
 4;39,40,41,42;,
 4;40,43,44,41;,
 4;41,44,45,46;,
 4;42,41,46,47;,
 4;43,48,49,44;,
 4;48,50,51,49;,
 4;49,51,52,53;,
 4;44,49,53,45;,
 4;45,53,54,55;,
 4;53,52,56,54;,
 4;54,56,57,58;,
 4;55,54,58,59;,
 4;47,46,60,61;,
 4;46,45,55,60;,
 4;60,55,59,62;,
 4;61,60,62,63;,
 4;64,65,66,67;,
 4;65,68,69,66;,
 4;66,69,70,71;,
 4;67,66,71,72;,
 4;68,73,74,69;,
 4;73,75,76,74;,
 4;74,76,77,78;,
 4;69,74,78,70;,
 4;70,78,79,80;,
 4;78,77,81,79;,
 4;79,81,82,83;,
 4;80,79,83,84;,
 4;72,71,85,86;,
 4;71,70,80,85;,
 4;85,80,84,87;,
 4;86,85,87,88;,
 4;89,90,91,92;,
 4;90,93,94,91;,
 4;91,94,95,96;,
 4;92,91,96,97;,
 4;93,98,99,94;,
 4;98,100,101,99;,
 4;99,101,102,103;,
 4;94,99,103,95;,
 4;95,103,104,105;,
 4;103,102,106,104;,
 4;104,106,107,108;,
 4;105,104,108,109;,
 4;97,96,110,111;,
 4;96,95,105,110;,
 4;110,105,109,112;,
 4;111,110,112,113;,
 4;114,115,116,117;,
 4;115,118,119,116;,
 4;116,119,120,121;,
 4;117,116,121,122;,
 4;118,123,124,119;,
 4;123,125,126,124;,
 4;124,126,127,128;,
 4;119,124,128,120;,
 4;120,128,129,130;,
 4;128,127,131,129;,
 4;129,131,132,133;,
 4;130,129,133,134;,
 4;122,121,135,136;,
 4;121,120,130,135;,
 4;135,130,134,137;,
 4;136,135,137,138;,
 4;139,140,141,142;,
 4;140,143,144,141;,
 4;141,144,145,146;,
 4;142,141,146,147;,
 4;143,148,149,144;,
 4;148,150,151,149;,
 4;149,151,152,153;,
 4;144,149,153,145;,
 4;145,153,154,155;,
 4;153,152,156,154;,
 4;154,156,82,81;,
 4;155,154,81,77;,
 4;147,146,157,158;,
 4;146,145,155,157;,
 4;157,155,77,76;,
 4;158,157,76,75;,
 4;114,117,159,160;,
 4;117,122,161,159;,
 4;159,161,162,163;,
 4;160,159,163,164;,
 4;122,136,165,161;,
 4;136,138,166,165;,
 4;165,166,167,168;,
 4;161,165,168,162;,
 4;162,168,169,170;,
 4;168,167,171,169;,
 4;169,171,64,67;,
 4;170,169,67,72;,
 4;164,163,172,173;,
 4;163,162,170,172;,
 4;172,170,72,86;,
 4;173,172,86,88;,
 4;174,175,40,39;,
 4;176,174,39,42;,
 4;175,177,43,40;,
 4;178,176,42,47;,
 4;177,179,48,43;,
 4;179,180,50,48;,
 4;180,181,51,50;,
 4;181,182,52,51;,
 4;182,183,56,52;,
 4;183,184,57,56;,
 4;184,185,58,57;,
 4;185,186,59,58;,
 4;187,178,47,61;,
 4;186,188,62,59;,
 4;188,189,63,62;,
 4;189,187,61,63;,
 4;190,191,90,89;,
 4;192,190,89,92;,
 4;191,193,93,90;,
 4;194,192,92,97;,
 4;193,195,98,93;,
 4;195,196,100,98;,
 4;196,197,101,100;,
 4;197,198,102,101;,
 4;198,199,106,102;,
 4;199,200,107,106;,
 4;200,201,108,107;,
 4;201,202,109,108;,
 4;203,194,97,111;,
 4;202,204,112,109;,
 4;204,205,113,112;,
 4;205,203,111,113;,
 4;206,207,208,209;,
 4;207,210,211,208;,
 4;208,211,212,213;,
 4;209,208,213,214;,
 4;214,213,215,216;,
 4;213,212,217,215;,
 4;215,217,218,219;,
 4;216,215,219,220;,
 4;220,219,221,222;,
 4;219,218,223,221;,
 4;221,223,224,225;,
 4;222,221,225,226;,
 4;226,225,227,228;,
 4;225,224,229,227;,
 4;227,229,230,231;,
 4;228,227,231,232;,
 4;210,233,234,211;,
 4;233,235,236,234;,
 4;234,236,237,238;,
 4;211,234,238,212;,
 4;239,240,241,242;,
 4;240,206,209,241;,
 4;241,209,214,243;,
 4;242,241,243,244;;
 
 MeshMaterialList {
  8;
  176;
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   1.000000;1.000000;1.000000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���Q\\new3DActionTeamGame\\Team3DActionGame\\Team3DActionGame\\Data\\Texture\\meet_texture.jpg";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.560000;0.560000;0.560000;;
   TextureFilename {
    "watermark.jpg";
   }
  }
  Material {
   0.800000;0.561600;0.496000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.520000;0.365040;0.322400;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.660000;0.660000;0.660000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.710000;0.710000;0.710000;;
   TextureFilename {
    "5471b3e10598046c28272a953d708f3f.jpg";
   }
  }
  Material {
   0.150400;0.150400;0.150400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.095880;0.095880;0.095880;;
  }
  Material {
   0.288800;0.207200;0.172800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.361000;0.259000;0.216000;;
  }
 }
 MeshNormals {
  195;
  -0.377169;-0.520582;-0.765988;,
  -0.357874;-0.628118;0.690937;,
  -0.492978;0.534389;-0.686586;,
  -0.473681;0.426852;0.770340;,
  0.379214;0.642053;-0.666306;,
  0.397880;0.538024;0.743116;,
  0.497925;-0.439342;-0.747696;,
  0.516590;-0.543372;0.661726;,
  -0.048340;0.659392;-0.750244;,
  0.530154;-0.005613;0.847883;,
  0.619240;-0.619090;0.482979;,
  0.507626;0.119939;-0.853189;,
  0.103929;-0.653268;0.749959;,
  0.082873;-0.535897;-0.840206;,
  -0.455536;-0.651722;-0.606420;,
  -0.505558;-0.119806;0.854434;,
  -0.580323;0.537609;0.611721;,
  -0.528120;0.005937;-0.849149;,
  -0.027279;0.542020;0.839923;,
  0.558586;0.827706;0.053696;,
  -0.792208;-0.041138;-0.608863;,
  -0.054397;0.995757;0.074221;,
  0.775428;0.131604;-0.617569;,
  0.162906;-0.983804;-0.074772;,
  0.019008;-0.072962;0.997154;,
  -0.007403;0.074242;-0.997213;,
  -0.660341;-0.533541;-0.528473;,
  -0.652428;-0.603450;0.458461;,
  -0.773106;0.446096;-0.450895;,
  -0.763002;0.371108;0.529252;,
  0.652867;0.603181;-0.458188;,
  0.669233;0.528882;0.521931;,
  0.755270;-0.377596;-0.535713;,
  0.772729;-0.446461;0.451180;,
  -0.086281;0.752973;-0.652370;,
  0.747602;0.032137;0.663369;,
  0.811564;-0.581792;-0.053691;,
  0.729930;0.130625;-0.670925;,
  0.086284;-0.752972;0.652371;,
  0.067604;-0.648880;-0.757881;,
  -0.665968;-0.744552;-0.046136;,
  -0.729921;-0.130623;0.670935;,
  -0.811565;0.581790;0.053693;,
  -0.747607;-0.032140;-0.663363;,
  -0.067604;0.648878;0.757883;,
  0.665969;0.744552;0.046135;,
  -0.108815;0.991258;0.074607;,
  0.108815;-0.991258;-0.074606;,
  0.013209;-0.073604;0.997200;,
  -0.013206;0.073605;-0.997200;,
  0.678832;0.388719;-0.622965;,
  0.696027;0.282141;0.660260;,
  0.753703;-0.232359;0.614769;,
  0.789424;-0.575221;0.214311;,
  0.782444;-0.525824;-0.333603;,
  0.740025;-0.155653;-0.654320;,
  0.298766;-0.951439;-0.074183;,
  0.097567;-0.904921;-0.414245;,
  0.225926;-0.622967;-0.748912;,
  0.242214;-0.726221;0.643378;,
  0.106686;-0.955736;0.274203;,
  -0.071815;-0.760815;0.644983;,
  -0.085235;-0.993740;-0.072219;,
  -0.092462;-0.658041;-0.747283;,
  0.049959;-0.411251;0.910152;,
  -0.179042;-0.093368;0.979401;,
  0.204959;-0.051069;0.977437;,
  -0.025165;0.273090;0.961659;,
  0.025167;-0.273095;-0.961658;,
  0.179043;0.093369;-0.979401;,
  -0.204959;0.051067;-0.977437;,
  -0.049955;0.411256;-0.910150;,
  -0.652556;-0.683901;-0.326267;,
  -0.694975;-0.313735;-0.646977;,
  -0.643085;-0.733021;0.221635;,
  -0.678803;-0.390160;0.622094;,
  -0.734036;0.124604;0.667581;,
  -0.782078;0.543778;0.304401;,
  -0.789365;0.575881;-0.212752;,
  -0.753429;0.230941;-0.615639;,
  -0.298765;0.951439;0.074185;,
  -0.106684;0.955737;-0.274201;,
  -0.242038;0.726265;-0.643395;,
  -0.222284;0.623757;0.749345;,
  -0.097567;0.904921;0.414245;,
  0.088741;0.658018;0.747755;,
  0.647996;0.701311;0.297092;,
  0.085234;0.993740;0.072219;,
  0.642893;0.733657;-0.220081;,
  0.071635;0.760818;-0.645000;,
  -0.277627;0.921759;-0.270709;,
  -0.267920;0.872696;0.408191;,
  0.075645;0.910542;0.406436;,
  0.067580;0.959786;-0.272477;,
  0.269826;-0.869544;-0.413626;,
  0.277727;-0.921644;0.270999;,
  -0.067699;-0.959696;0.272765;,
  -0.078247;-0.907886;-0.411849;,
  -0.123328;-0.425762;0.896391;,
  0.222099;-0.387712;0.894624;,
  0.147078;0.287172;0.946520;,
  -0.196488;0.249325;0.948277;,
  0.199388;-0.254843;-0.946203;,
  -0.148684;-0.293189;-0.944422;,
  -0.221960;0.387459;-0.894767;,
  0.123247;0.425488;-0.896532;,
  -0.888347;-0.354573;-0.291750;,
  -0.901655;-0.377784;-0.210468;,
  -0.958519;-0.241290;-0.151722;,
  -0.913626;-0.273335;-0.300958;,
  -0.916897;-0.398749;-0.017289;,
  -0.976510;-0.215453;-0.002968;,
  -0.993974;-0.109496;0.005085;,
  -0.989631;-0.100946;-0.102176;,
  -0.953113;-0.082718;-0.291091;,
  -0.901389;-0.404049;0.155699;,
  -0.958049;-0.254273;0.132243;,
  -0.893451;-0.377451;0.243468;,
  -0.912642;-0.296024;0.281876;,
  -0.945267;-0.126408;0.300817;,
  -0.986791;-0.116776;0.112284;,
  -0.989231;0.012955;0.145788;,
  -0.999912;-0.002268;0.013078;,
  -0.951767;0.030694;0.305282;,
  -0.955987;0.121744;0.266958;,
  -0.967977;0.172130;0.182732;,
  -0.981485;0.189626;0.026998;,
  -0.991826;0.038684;-0.121591;,
  -0.958169;0.088084;-0.272313;,
  -0.969587;0.197681;-0.144305;,
  -0.957278;0.171875;-0.232544;,
  0.894511;0.375870;-0.242016;,
  0.901798;0.403833;-0.153878;,
  0.958343;0.253513;-0.131566;,
  0.913218;0.294236;-0.281885;,
  0.916897;0.398748;0.017289;,
  0.976510;0.215452;0.002971;,
  0.993975;0.109493;-0.005082;,
  0.986791;0.116774;-0.112283;,
  0.945272;0.126406;-0.300803;,
  0.909096;0.378904;0.173137;,
  0.964112;0.228133;0.135804;,
  0.909210;0.327214;0.257425;,
  0.925302;0.237469;0.295677;,
  0.953111;0.082716;0.291098;,
  0.989631;0.100944;0.102182;,
  0.991710;-0.039490;0.122275;,
  0.999912;0.002268;-0.013076;,
  0.957995;-0.089957;0.272312;,
  0.956598;-0.173660;0.234016;,
  0.969250;-0.197988;0.146135;,
  0.981485;-0.189629;-0.026995;,
  0.986475;-0.027029;-0.161667;,
  0.948126;-0.068245;-0.310482;,
  0.960095;-0.172695;-0.219987;,
  0.941232;-0.153027;-0.301107;,
  -0.377686;-0.519438;-0.766510;,
  -0.358368;-0.627068;0.691634;,
  -0.493243;0.533254;-0.687279;,
  -0.473929;0.425627;0.770865;,
  0.358373;0.627065;-0.691634;,
  0.377686;0.519441;0.766508;,
  0.473932;-0.425626;-0.770864;,
  0.493242;-0.533254;0.687279;,
  -0.075757;0.652699;-0.753821;,
  0.528176;-0.005928;0.849114;,
  0.595628;-0.619291;0.511572;,
  0.505614;0.119810;-0.854401;,
  0.075756;-0.652698;0.753821;,
  0.054604;-0.534821;-0.843199;,
  -0.456234;-0.650556;-0.607146;,
  -0.505608;-0.119812;0.854403;,
  -0.580740;0.536327;0.612449;,
  -0.528175;0.005933;-0.849115;,
  -0.054601;0.534822;0.843199;,
  0.456234;0.650558;0.607145;,
  -0.792219;-0.041134;-0.608850;,
  -0.100131;0.888147;-0.448519;,
  0.775988;0.131612;-0.616864;,
  0.086555;-0.812489;-0.576515;,
  0.013209;-0.073606;0.997200;,
  -0.013209;0.073605;-0.997200;,
  -0.440671;-0.734564;0.515970;,
  -0.775973;-0.131612;0.616882;,
  -0.595189;0.620456;-0.510671;,
  0.791681;0.041034;0.609555;,
  0.605099;-0.540280;-0.584768;,
  -0.441341;-0.733524;0.516876;,
  -0.775982;-0.131613;0.616871;,
  -0.595626;0.619292;-0.511573;,
  -0.086552;0.812489;0.576515;,
  0.441346;0.733522;-0.516875;,
  0.792222;0.041142;0.608844;,
  0.580744;-0.536326;-0.612446;,
  0.100131;-0.888145;0.448522;;
  176;
  4;0,14,20,17;,
  4;182,1,15,183;,
  4;183,15,3,16;,
  4;17,20,184,2;,
  4;2,184,21,8;,
  4;16,3,18,21;,
  4;21,18,5,19;,
  4;8,21,19,4;,
  4;4,19,22,11;,
  4;19,5,9,185;,
  4;185,9,7,10;,
  4;11,22,186,6;,
  4;6,186,23,13;,
  4;10,7,12,23;,
  4;23,12,1,182;,
  4;13,23,14,0;,
  4;1,12,24,15;,
  4;12,7,9,24;,
  4;24,9,5,18;,
  4;15,24,18,3;,
  4;6,13,25,11;,
  4;13,0,17,25;,
  4;25,17,2,8;,
  4;11,25,8,4;,
  4;106,107,108,109;,
  4;107,110,111,108;,
  4;108,111,112,113;,
  4;109,108,113,114;,
  4;110,115,116,111;,
  4;115,117,118,116;,
  4;116,118,119,120;,
  4;111,116,120,112;,
  4;112,120,121,122;,
  4;120,119,123,121;,
  4;121,123,124,125;,
  4;122,121,125,126;,
  4;114,113,127,128;,
  4;113,112,122,127;,
  4;127,122,126,129;,
  4;128,127,129,130;,
  4;28,78,90,82;,
  4;78,42,80,90;,
  4;90,80,46,81;,
  4;82,90,81,34;,
  4;42,77,91,80;,
  4;77,29,83,91;,
  4;91,83,44,84;,
  4;80,91,84,46;,
  4;46,84,92,87;,
  4;84,44,85,92;,
  4;92,85,31,86;,
  4;87,92,86,45;,
  4;34,81,93,89;,
  4;81,46,87,93;,
  4;93,87,45,88;,
  4;89,93,88,30;,
  4;131,132,133,134;,
  4;132,135,136,133;,
  4;133,136,137,138;,
  4;134,133,138,139;,
  4;135,140,141,136;,
  4;140,142,143,141;,
  4;141,143,144,145;,
  4;136,141,145,137;,
  4;137,145,146,147;,
  4;145,144,148,146;,
  4;146,148,149,150;,
  4;147,146,150,151;,
  4;139,138,152,153;,
  4;138,137,147,152;,
  4;152,147,151,154;,
  4;153,152,154,155;,
  4;32,54,94,58;,
  4;54,36,56,94;,
  4;94,56,47,57;,
  4;58,94,57,39;,
  4;36,53,95,56;,
  4;53,33,59,95;,
  4;95,59,38,60;,
  4;56,95,60,47;,
  4;47,60,96,62;,
  4;60,38,61,96;,
  4;96,61,27,74;,
  4;62,96,74,40;,
  4;39,57,97,63;,
  4;57,47,62,97;,
  4;97,62,40,72;,
  4;63,97,72,26;,
  4;27,61,98,75;,
  4;61,38,64,98;,
  4;98,64,48,65;,
  4;75,98,65,41;,
  4;38,59,99,64;,
  4;59,33,52,99;,
  4;99,52,35,66;,
  4;64,99,66,48;,
  4;48,66,100,67;,
  4;66,35,51,100;,
  4;100,51,31,85;,
  4;67,100,85,44;,
  4;41,65,101,76;,
  4;65,48,67,101;,
  4;101,67,44,83;,
  4;76,101,83,29;,
  4;32,58,102,55;,
  4;58,39,68,102;,
  4;102,68,49,69;,
  4;55,102,69,37;,
  4;39,63,103,68;,
  4;63,26,73,103;,
  4;103,73,43,70;,
  4;68,103,70,49;,
  4;49,70,104,71;,
  4;70,43,79,104;,
  4;104,79,28,82;,
  4;71,104,82,34;,
  4;37,69,105,50;,
  4;69,49,71,105;,
  4;105,71,34,89;,
  4;50,105,89,30;,
  4;26,72,107,106;,
  4;73,26,106,109;,
  4;72,40,110,107;,
  4;43,73,109,114;,
  4;40,74,115,110;,
  4;74,27,117,115;,
  4;27,75,118,117;,
  4;75,41,119,118;,
  4;41,76,123,119;,
  4;76,29,124,123;,
  4;29,77,125,124;,
  4;77,42,126,125;,
  4;79,43,114,128;,
  4;42,78,129,126;,
  4;78,28,130,129;,
  4;28,79,128,130;,
  4;30,88,132,131;,
  4;50,30,131,134;,
  4;88,45,135,132;,
  4;37,50,134,139;,
  4;45,86,140,135;,
  4;86,31,142,140;,
  4;31,51,143,142;,
  4;51,35,144,143;,
  4;35,52,148,144;,
  4;52,33,149,148;,
  4;33,53,150,149;,
  4;53,36,151,150;,
  4;55,37,139,153;,
  4;36,54,154,151;,
  4;54,32,155,154;,
  4;32,55,153,155;,
  4;156,170,176,173;,
  4;187,157,171,188;,
  4;188,171,159,172;,
  4;173,176,189,158;,
  4;158,189,177,164;,
  4;172,159,174,190;,
  4;190,174,161,175;,
  4;164,177,191,160;,
  4;160,191,178,167;,
  4;175,161,165,192;,
  4;192,165,163,166;,
  4;167,178,193,162;,
  4;162,193,179,169;,
  4;166,163,168,194;,
  4;194,168,157,187;,
  4;169,179,170,156;,
  4;157,168,180,171;,
  4;168,163,165,180;,
  4;180,165,161,174;,
  4;171,180,174,159;,
  4;162,169,181,167;,
  4;169,156,173,181;,
  4;181,173,158,164;,
  4;167,181,164,160;;
 }
 MeshTextureCoords {
  245;
  0.375000;1.000000;,
  0.500000;1.000000;,
  0.500000;0.875000;,
  0.375000;0.875000;,
  0.625000;1.000000;,
  0.625000;0.875000;,
  0.625000;0.750000;,
  0.500000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.625000;,
  0.375000;0.625000;,
  0.625000;0.625000;,
  0.625000;0.500000;,
  0.500000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.375000;,
  0.375000;0.375000;,
  0.625000;0.375000;,
  0.625000;0.250000;,
  0.500000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.125000;,
  0.375000;0.125000;,
  0.625000;0.125000;,
  0.625000;0.000000;,
  0.500000;0.000000;,
  0.375000;0.000000;,
  0.750000;1.000000;,
  0.750000;0.875000;,
  0.875000;1.000000;,
  0.875000;0.875000;,
  0.875000;0.750000;,
  0.750000;0.750000;,
  0.125000;1.000000;,
  0.250000;1.000000;,
  0.250000;0.875000;,
  0.125000;0.875000;,
  0.250000;0.750000;,
  0.125000;0.750000;,
  0.307970;0.470760;,
  0.348440;0.470760;,
  0.348440;0.437520;,
  0.307970;0.437520;,
  0.388910;0.470760;,
  0.388910;0.437520;,
  0.388910;0.404280;,
  0.348440;0.404280;,
  0.307970;0.404280;,
  0.429380;0.470760;,
  0.429380;0.437520;,
  0.469840;0.470760;,
  0.469840;0.437520;,
  0.469840;0.404280;,
  0.429380;0.404280;,
  0.429380;0.371030;,
  0.388910;0.371030;,
  0.469840;0.371030;,
  0.469840;0.337790;,
  0.429380;0.337790;,
  0.388910;0.337790;,
  0.348440;0.371030;,
  0.307970;0.371030;,
  0.348440;0.337790;,
  0.307970;0.337790;,
  0.510359;1.508490;,
  0.458680;1.526718;,
  0.448285;1.141453;,
  0.508844;1.104634;,
  0.383110;1.568745;,
  0.384463;1.171200;,
  0.385263;0.560365;,
  0.447325;0.560591;,
  0.506378;0.554080;,
  0.308766;1.520160;,
  0.321147;1.134456;,
  0.258675;1.509535;,
  0.261651;1.091797;,
  0.265053;0.541826;,
  0.323467;0.553909;,
  0.325760;-0.022753;,
  0.386147;-0.045908;,
  0.268064;-0.005511;,
  0.271752;-0.431344;,
  0.319032;-0.426696;,
  0.386661;-0.463403;,
  0.446569;-0.015757;,
  0.504487;0.007325;,
  0.454208;-0.420141;,
  0.501612;-0.408197;,
  0.305210;0.450920;,
  0.349890;0.450920;,
  0.349890;0.420490;,
  0.305210;0.420490;,
  0.394560;0.450920;,
  0.394560;0.420490;,
  0.394560;0.390060;,
  0.349890;0.390060;,
  0.305210;0.390060;,
  0.439230;0.450920;,
  0.439230;0.420490;,
  0.483900;0.450920;,
  0.483900;0.420490;,
  0.483900;0.390060;,
  0.439230;0.390060;,
  0.439230;0.359640;,
  0.394560;0.359640;,
  0.483900;0.359640;,
  0.483900;0.329210;,
  0.439230;0.329210;,
  0.394560;0.329210;,
  0.349890;0.359640;,
  0.305210;0.359640;,
  0.349890;0.329210;,
  0.305210;0.329210;,
  0.750322;-0.450065;,
  0.804207;-0.492135;,
  0.818574;-0.106429;,
  0.754603;-0.063771;,
  0.886776;-0.540717;,
  0.887362;-0.143172;,
  0.888289;0.467662;,
  0.821030;0.474117;,
  0.758013;0.486202;,
  0.969489;-0.498690;,
  0.956105;-0.113422;,
  1.023519;-0.478914;,
  1.019829;-0.076603;,
  1.017539;0.473946;,
  0.955239;0.467435;,
  0.953853;1.043785;,
  0.889012;1.073935;,
  1.014827;1.020703;,
  1.013266;1.434678;,
  0.963524;1.448167;,
  0.890239;1.491428;,
  0.823680;1.050779;,
  0.761662;1.033537;,
  0.815871;1.454721;,
  0.764467;1.427930;,
  0.013266;1.434678;,
  0.014827;1.020703;,
  0.075183;1.065062;,
  0.062868;1.462786;,
  0.017539;0.473946;,
  0.079137;0.487703;,
  0.143365;0.505645;,
  0.138480;1.113787;,
  0.135100;1.523105;,
  0.019829;-0.076603;,
  0.082770;-0.092144;,
  0.023519;-0.478914;,
  0.078007;-0.484067;,
  0.154369;-0.509039;,
  0.147675;-0.103320;,
  0.210168;-0.053403;,
  0.206373;0.524711;,
  0.225058;-0.447757;,
  0.201862;1.103803;,
  0.208452;1.499096;,
  0.691209;-0.075777;,
  0.695628;-0.471072;,
  0.695484;0.503315;,
  0.630067;0.522382;,
  0.625800;-0.085761;,
  0.619176;-0.495082;,
  0.700046;1.081433;,
  0.713704;1.475787;,
  0.638535;1.537069;,
  0.635029;1.131350;,
  0.569910;1.120176;,
  0.565912;0.540324;,
  0.562102;1.512097;,
  0.562812;-0.037035;,
  0.548338;-0.434762;,
  0.307970;0.470760;,
  0.348440;0.470760;,
  0.307970;0.437520;,
  0.388910;0.470760;,
  0.307970;0.404280;,
  0.429380;0.470760;,
  0.469840;0.470760;,
  0.469840;0.437520;,
  0.469840;0.404280;,
  0.469840;0.371030;,
  0.469840;0.337790;,
  0.429380;0.337790;,
  0.388910;0.337790;,
  0.307970;0.371030;,
  0.348440;0.337790;,
  0.307970;0.337790;,
  0.305210;0.450920;,
  0.349890;0.450920;,
  0.305210;0.420490;,
  0.394560;0.450920;,
  0.305210;0.390060;,
  0.439230;0.450920;,
  0.483900;0.450920;,
  0.483900;0.420490;,
  0.483900;0.390060;,
  0.483900;0.359640;,
  0.483900;0.329210;,
  0.439230;0.329210;,
  0.394560;0.329210;,
  0.305210;0.359640;,
  0.349890;0.329210;,
  0.305210;0.329210;,
  0.375000;1.000000;,
  0.500000;1.000000;,
  0.500000;0.875000;,
  0.375000;0.875000;,
  0.625000;1.000000;,
  0.625000;0.875000;,
  0.625000;0.750000;,
  0.500000;0.750000;,
  0.375000;0.750000;,
  0.500000;0.625000;,
  0.375000;0.625000;,
  0.625000;0.625000;,
  0.625000;0.500000;,
  0.500000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.375000;,
  0.375000;0.375000;,
  0.625000;0.375000;,
  0.625000;0.250000;,
  0.500000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.125000;,
  0.375000;0.125000;,
  0.625000;0.125000;,
  0.625000;0.000000;,
  0.500000;0.000000;,
  0.375000;0.000000;,
  0.750000;1.000000;,
  0.750000;0.875000;,
  0.875000;1.000000;,
  0.875000;0.875000;,
  0.875000;0.750000;,
  0.750000;0.750000;,
  0.125000;1.000000;,
  0.250000;1.000000;,
  0.250000;0.875000;,
  0.125000;0.875000;,
  0.250000;0.750000;,
  0.125000;0.750000;;
 }
}

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
 184;
 -11.87193;-2.70900;-25.80174;,
 -1.73973;-3.48726;-28.40628;,
 -5.20959;-18.95643;-23.78307;,
 -15.00450;-18.43332;-21.53142;,
 -20.10003;-1.86966;-19.28514;,
 -23.13579;-17.87733;-15.52764;,
 -24.41886;-1.21359;-10.07244;,
 -27.76626;-17.47728;-6.87891;,
 -25.13550;-0.83562;0.38433;,
 -28.73970;-17.28153;3.39087;,
 -22.29663;-0.69093;12.14949;,
 -26.04309;-17.22288;15.13251;,
 -15.55398;-0.83337;23.50128;,
 -19.43937;-17.32773;26.51238;,
 -6.15225;-1.28043;30.42714;,
 -10.10259;-17.61753;33.45456;,
 3.18036;-1.84281;31.35819;,
 -0.63906;-18.00537;34.12935;,
 11.35554;-2.40774;27.24891;,
 7.44732;-18.39252;30.05262;,
 17.37288;-2.96703;18.37581;,
 13.55979;-18.85689;21.19107;,
 20.91024;-3.47451;7.65438;,
 17.37288;-2.96703;18.37581;,
 13.55979;-18.85689;21.19107;,
 16.94886;-19.19385;10.66212;,
 22.03383;-3.89790;-2.82660;,
 17.72694;-19.42410;0.32463;,
 20.51010;-4.21743;-12.20388;,
 16.04493;-19.57263;-8.69823;,
 15.89244;-4.28199;-20.38461;,
 11.50707;-19.55301;-16.37661;,
 8.37228;-4.04859;-26.32359;,
 4.31865;-19.34991;-21.77883;,
 -12.97080;-45.32850;-13.81572;,
 -20.24418;-44.99763;-11.89662;,
 -26.83293;-44.71422;-6.12546;,
 -28.98675;-44.59209;0.87222;,
 -29.18907;-44.55162;9.68199;,
 -26.79777;-44.61156;18.33801;,
 -22.71462;-44.77128;26.22453;,
 -15.22341;-45.11361;28.62879;,
 -7.69182;-45.49389;28.27980;,
 -1.81512;-45.82047;25.82082;,
 2.64402;-46.07295;21.06261;,
 2.64402;-46.07295;21.06261;,
 4.60143;-46.19043;14.88387;,
 5.92236;-46.24521;8.21313;,
 4.73940;-46.19259;0.22512;,
 2.53410;-46.06416;-7.39347;,
 -4.94145;-45.71214;-11.86452;,
 -1.81512;-45.82047;25.82082;,
 -7.69182;-45.49389;28.27980;,
 -12.39369;-65.34534;26.17170;,
 -7.15878;-65.70567;23.97750;,
 2.64402;-46.07295;21.06261;,
 -3.18693;-65.98599;19.73163;,
 -28.98675;-44.59209;0.87222;,
 -26.83293;-44.71422;-6.12546;,
 -29.46213;-64.56063;-4.52892;,
 -31.38066;-64.42509;1.71528;,
 -29.18907;-44.55162;9.68199;,
 -31.55898;-64.37250;9.57642;,
 -4.94145;-45.71214;-11.86452;,
 2.53410;-46.06416;-7.39347;,
 -3.28473;-65.97552;-5.66040;,
 -9.94779;-65.60391;-9.65004;,
 -12.97080;-45.32850;-13.81572;,
 -17.10420;-65.19717;-11.39115;,
 4.73940;-46.19259;0.22512;,
 5.92236;-46.24521;8.21313;,
 -0.26598;-66.17352;8.26572;,
 -1.32060;-66.11901;1.13784;,
 4.60143;-46.19043;14.88387;,
 -1.44387;-66.11823;14.21817;,
 -26.79777;-44.61156;18.33801;,
 -29.42424;-64.41915;17.30037;,
 -22.71462;-44.77128;26.22453;,
 -25.78290;-64.57767;24.33771;,
 -15.22341;-45.11361;28.62879;,
 -19.10514;-64.93575;26.48310;,
 -20.24418;-44.99763;-11.89662;,
 -23.58786;-64.85136;-9.67866;,
 -16.09482;-68.73375;1.82739;,
 -15.22968;-68.76102;8.72643;,
 -29.81298;-67.59849;9.29748;,
 -29.65920;-67.64379;2.51637;,
 -2.81943;-69.15219;8.16684;,
 -3.72912;-69.10524;2.01828;,
 -3.83544;-69.10431;13.30146;,
 -14.45079;-68.78559;14.93763;,
 -27.97152;-67.63863;15.96018;,
 -5.33904;-68.99031;18.05742;,
 -13.73592;-68.80794;20.63814;,
 -24.83052;-67.77525;22.03065;,
 -8.76519;-68.74833;21.71991;,
 -13.28088;-68.43753;23.61267;,
 -19.07019;-68.08422;23.88129;,
 -17.34417;-68.30970;-8.78934;,
 -16.84719;-68.71026;-4.17243;,
 -28.00425;-67.76064;-2.86992;,
 -22.93704;-68.01159;-7.31211;,
 -5.42340;-68.98122;-3.84594;,
 -11.17101;-68.66079;-7.28742;,
 -16.55055;1.65099;9.37914;,
 -14.92410;0.77820;-13.89648;,
 -18.12201;1.26420;-7.07496;,
 -18.65259;1.54395;0.66765;,
 2.31375;0.79824;23.60214;,
 8.36700;0.37986;20.55945;,
 11.72637;-1.00803;-14.71059;,
 6.15810;-0.83511;-19.10817;,
 -1.32930;-0.41961;-20.65023;,
 -4.59651;1.21461;22.91271;,
 12.82251;-0.03426;13.98936;,
 15.14547;-0.96015;-8.65326;,
 15.44175;-0.41004;6.05070;,
 16.27374;-0.72363;-1.70985;,
 -8.83161;0.15678;-18.72168;,
 -11.55798;1.54557;17.78451;,
 -20.10003;-1.86966;-19.28514;,
 -24.41886;-1.21359;-10.07244;,
 -18.12201;1.26420;-7.07496;,
 -14.92410;0.77820;-13.89648;,
 -24.41886;-1.21359;-10.07244;,
 -25.13550;-0.83562;0.38433;,
 -18.65259;1.54395;0.66765;,
 -18.12201;1.26420;-7.07496;,
 -25.13550;-0.83562;0.38433;,
 -22.29663;-0.69093;12.14949;,
 -16.55055;1.65099;9.37914;,
 -18.65259;1.54395;0.66765;,
 3.18036;-1.84281;31.35819;,
 11.35554;-2.40774;27.24891;,
 8.36700;0.37986;20.55945;,
 2.31375;0.79824;23.60214;,
 15.89244;-4.28199;-20.38461;,
 8.37228;-4.04859;-26.32359;,
 6.15810;-0.83511;-19.10817;,
 11.72637;-1.00803;-14.71059;,
 8.37228;-4.04859;-26.32359;,
 -1.73973;-3.48726;-28.40628;,
 -1.32930;-0.41961;-20.65023;,
 6.15810;-0.83511;-19.10817;,
 -6.15225;-1.28043;30.42714;,
 3.18036;-1.84281;31.35819;,
 2.31375;0.79824;23.60214;,
 -4.59651;1.21461;22.91271;,
 11.35554;-2.40774;27.24891;,
 17.37288;-2.96703;18.37581;,
 12.82251;-0.03426;13.98936;,
 8.36700;0.37986;20.55945;,
 20.51010;-4.21743;-12.20388;,
 15.89244;-4.28199;-20.38461;,
 11.72637;-1.00803;-14.71059;,
 15.14547;-0.96015;-8.65326;,
 17.37288;-2.96703;18.37581;,
 20.91024;-3.47451;7.65438;,
 15.44175;-0.41004;6.05070;,
 12.82251;-0.03426;13.98936;,
 20.91024;-3.47451;7.65438;,
 22.03383;-3.89790;-2.82660;,
 16.27374;-0.72363;-1.70985;,
 15.44175;-0.41004;6.05070;,
 22.03383;-3.89790;-2.82660;,
 20.51010;-4.21743;-12.20388;,
 15.14547;-0.96015;-8.65326;,
 16.27374;-0.72363;-1.70985;,
 -1.73973;-3.48726;-28.40628;,
 -11.87193;-2.70900;-25.80174;,
 -8.83161;0.15678;-18.72168;,
 -1.32930;-0.41961;-20.65023;,
 -15.55398;-0.83337;23.50128;,
 -6.15225;-1.28043;30.42714;,
 -4.59651;1.21461;22.91271;,
 -11.55798;1.54557;17.78451;,
 -11.87193;-2.70900;-25.80174;,
 -20.10003;-1.86966;-19.28514;,
 -14.92410;0.77820;-13.89648;,
 -8.83161;0.15678;-18.72168;,
 -22.29663;-0.69093;12.14949;,
 -15.55398;-0.83337;23.50128;,
 -11.55798;1.54557;17.78451;,
 -16.55055;1.65099;9.37914;;
 
 198;
 4;0,1,2,3;,
 4;4,0,3,5;,
 4;6,4,5,7;,
 4;8,6,7,9;,
 4;10,8,9,11;,
 4;12,10,11,13;,
 4;14,12,13,15;,
 4;16,14,15,17;,
 4;18,16,17,19;,
 4;20,18,19,21;,
 4;22,23,24,25;,
 4;26,22,25,27;,
 4;28,26,27,29;,
 4;30,28,29,31;,
 4;32,30,31,33;,
 4;1,32,33,2;,
 4;3,2,34,35;,
 4;5,3,35,36;,
 4;7,5,36,37;,
 4;9,7,37,38;,
 4;11,9,38,39;,
 4;13,11,39,40;,
 4;15,13,40,41;,
 4;17,15,41,42;,
 4;19,17,42,43;,
 4;21,19,43,44;,
 4;25,24,45,46;,
 4;27,25,46,47;,
 4;29,27,47,48;,
 4;31,29,48,49;,
 4;33,31,49,50;,
 4;2,33,50,34;,
 4;51,52,53,54;,
 4;55,51,54,56;,
 4;57,58,59,60;,
 4;61,57,60,62;,
 4;63,64,65,66;,
 4;67,63,66,68;,
 4;69,70,71,72;,
 4;64,69,72,65;,
 4;73,55,56,74;,
 4;70,73,74,71;,
 4;75,61,62,76;,
 4;77,75,76,78;,
 4;79,77,78,80;,
 4;52,79,80,53;,
 4;81,67,68,82;,
 4;58,81,82,59;,
 4;83,84,85,86;,
 4;87,84,83,88;,
 4;89,90,84,87;,
 4;85,84,90,91;,
 4;92,93,90,89;,
 4;91,90,93,94;,
 4;95,96,93,92;,
 4;94,93,96,97;,
 4;98,99,100,101;,
 4;102,99,98,103;,
 4;88,83,99,102;,
 4;100,99,83,86;,
 4;104,105,106,107;,
 4;108,109,110,111;,
 4;108,111,112,113;,
 4;110,109,114,115;,
 4;115,114,116,117;,
 4;113,112,118,119;,
 4;119,118,105,104;,
 4;120,121,122,123;,
 4;124,125,126,127;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;136,137,138,139;,
 4;140,141,142,143;,
 4;144,145,146,147;,
 4;148,149,150,151;,
 4;152,153,154,155;,
 4;156,157,158,159;,
 4;160,161,162,163;,
 4;164,165,166,167;,
 4;168,169,170,171;,
 4;172,173,174,175;,
 4;176,177,178,179;,
 4;180,181,182,183;,
 4;62,60,86,85;,
 4;72,71,87,88;,
 4;71,74,89,87;,
 4;76,62,85,91;,
 4;74,56,92,89;,
 4;78,76,91,94;,
 4;54,53,96,95;,
 4;56,54,95,92;,
 4;53,80,97,96;,
 4;80,78,94,97;,
 4;59,82,101,100;,
 4;82,68,98,101;,
 4;68,66,103,98;,
 4;66,65,102,103;,
 4;65,72,88,102;,
 4;60,59,100,86;,
 4;3,2,1,0;,
 4;5,3,0,4;,
 4;7,5,4,6;,
 4;9,7,6,8;,
 4;11,9,8,10;,
 4;13,11,10,12;,
 4;15,13,12,14;,
 4;17,15,14,16;,
 4;19,17,16,18;,
 4;21,19,18,20;,
 4;25,24,23,22;,
 4;27,25,22,26;,
 4;29,27,26,28;,
 4;31,29,28,30;,
 4;33,31,30,32;,
 4;2,33,32,1;,
 4;35,34,2,3;,
 4;36,35,3,5;,
 4;37,36,5,7;,
 4;38,37,7,9;,
 4;39,38,9,11;,
 4;40,39,11,13;,
 4;41,40,13,15;,
 4;42,41,15,17;,
 4;43,42,17,19;,
 4;44,43,19,21;,
 4;46,45,24,25;,
 4;47,46,25,27;,
 4;48,47,27,29;,
 4;49,48,29,31;,
 4;50,49,31,33;,
 4;34,50,33,2;,
 4;54,53,52,51;,
 4;56,54,51,55;,
 4;60,59,58,57;,
 4;62,60,57,61;,
 4;66,65,64,63;,
 4;68,66,63,67;,
 4;72,71,70,69;,
 4;65,72,69,64;,
 4;74,56,55,73;,
 4;71,74,73,70;,
 4;76,62,61,75;,
 4;78,76,75,77;,
 4;80,78,77,79;,
 4;53,80,79,52;,
 4;82,68,67,81;,
 4;59,82,81,58;,
 4;86,85,84,83;,
 4;88,83,84,87;,
 4;87,84,90,89;,
 4;91,90,84,85;,
 4;89,90,93,92;,
 4;94,93,90,91;,
 4;92,93,96,95;,
 4;97,96,93,94;,
 4;101,100,99,98;,
 4;103,98,99,102;,
 4;102,99,83,88;,
 4;86,83,99,100;,
 4;107,106,105,104;,
 4;111,110,109,108;,
 4;113,112,111,108;,
 4;115,114,109,110;,
 4;117,116,114,115;,
 4;119,118,112,113;,
 4;104,105,118,119;,
 4;123,122,121,120;,
 4;127,126,125,124;,
 4;131,130,129,128;,
 4;135,134,133,132;,
 4;139,138,137,136;,
 4;143,142,141,140;,
 4;147,146,145,144;,
 4;151,150,149,148;,
 4;155,154,153,152;,
 4;159,158,157,156;,
 4;163,162,161,160;,
 4;167,166,165,164;,
 4;171,170,169,168;,
 4;175,174,173,172;,
 4;179,178,177,176;,
 4;183,182,181,180;,
 4;85,86,60,62;,
 4;88,87,71,72;,
 4;87,89,74,71;,
 4;91,85,62,76;,
 4;89,92,56,74;,
 4;94,91,76,78;,
 4;95,96,53,54;,
 4;92,95,54,56;,
 4;96,97,80,53;,
 4;97,94,78,80;,
 4;100,101,82,59;,
 4;101,98,68,82;,
 4;98,103,66,68;,
 4;103,102,65,66;,
 4;102,88,72,65;,
 4;86,100,59,60;;
 
 MeshMaterialList {
  1;
  198;
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
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.759200;0.656000;0.367200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.455520;0.393600;0.220320;;
  }
 }
 MeshNormals {
  226;
  0.196283;0.123956;0.972681;,
  0.699042;-0.362554;-0.616356;,
  0.962035;-0.271197;-0.030674;,
  -0.524809;0.694251;0.492536;,
  0.195926;-0.058933;0.978846;,
  -0.786045;-0.054867;-0.615730;,
  0.690281;-0.408106;-0.597463;,
  0.939311;-0.342508;-0.019566;,
  0.198779;-0.194465;0.960557;,
  -0.820875;-0.021332;-0.570709;,
  0.720244;-0.366335;-0.589107;,
  0.934822;-0.355035;0.007538;,
  -0.033873;-0.275708;-0.960644;,
  -0.436840;-0.152549;-0.886510;,
  -0.770822;-0.000858;-0.637050;,
  -0.952014;0.138056;-0.273149;,
  -0.747283;0.663124;0.042846;,
  -0.681030;0.679414;0.273121;,
  -0.226209;0.689780;0.687774;,
  0.656888;-0.027178;0.753499;,
  0.885907;-0.136965;0.443181;,
  0.956865;-0.206020;0.204855;,
  0.889269;-0.329855;-0.316853;,
  0.378819;-0.350082;-0.856702;,
  -0.031605;-0.313128;-0.949185;,
  -0.440660;-0.192414;-0.876810;,
  -0.966386;0.061992;-0.249509;,
  -0.987909;0.131889;0.081494;,
  -0.915356;0.173412;0.363390;,
  -0.708023;0.168434;0.685809;,
  -0.293206;0.074637;0.953132;,
  0.621574;-0.170138;0.764656;,
  0.858460;-0.242538;0.451909;,
  0.933718;-0.290499;0.209240;,
  0.877461;-0.384577;-0.286640;,
  0.361090;-0.387813;-0.848066;,
  -0.023265;-0.235908;-0.971497;,
  0.560551;-0.265213;0.784503;,
  0.823434;-0.310591;0.474857;,
  -0.980026;0.049021;-0.192734;,
  -0.991043;0.078186;0.108261;,
  0.355608;-0.310809;-0.881442;,
  0.901044;-0.366482;-0.231970;,
  0.915840;-0.331108;0.227165;,
  -0.926644;0.090682;0.364840;,
  -0.671284;0.037324;0.740260;,
  -0.191009;-0.088052;0.977631;,
  -0.459822;-0.126553;-0.878947;,
  0.173318;-0.420009;0.890816;,
  0.484473;-0.463432;0.741968;,
  0.746265;-0.485799;0.455068;,
  -0.816668;-0.257057;-0.516697;,
  -0.967593;-0.200762;-0.153165;,
  -0.974096;-0.191098;0.120911;,
  0.678639;-0.493906;-0.543604;,
  0.319707;-0.438162;-0.840120;,
  -0.031537;-0.396197;-0.917624;,
  0.874684;-0.484215;0.021542;,
  0.855304;-0.481005;-0.192587;,
  0.848291;-0.479330;0.225042;,
  -0.912215;-0.205930;0.354198;,
  -0.629411;-0.302664;0.715707;,
  -0.143696;-0.373931;0.916257;,
  -0.458304;-0.327319;-0.826329;,
  -0.122902;0.991162;0.049932;,
  -0.068717;0.986867;-0.146188;,
  -0.181875;0.978531;-0.096950;,
  -0.206060;0.978524;-0.005483;,
  0.177766;0.977977;0.109362;,
  0.090310;0.986129;0.139259;,
  0.196393;0.967904;-0.156818;,
  0.133367;0.972287;-0.192020;,
  0.060211;0.977134;-0.203923;,
  -0.001085;0.990654;0.136397;,
  0.235151;0.969994;0.061778;,
  0.237298;0.965833;-0.104188;,
  0.332690;0.942542;0.030536;,
  0.333614;0.941714;-0.043314;,
  -0.007685;0.981860;-0.189453;,
  -0.079040;0.991566;0.102715;,
  -0.054836;-0.998495;-0.000259;,
  -0.055643;-0.998442;0.004139;,
  -0.538309;-0.840167;0.065894;,
  -0.531227;-0.844172;-0.071917;,
  0.401500;-0.915801;0.010324;,
  0.394883;-0.913636;-0.096632;,
  0.391158;-0.913438;0.112372;,
  -0.056113;-0.998389;0.008438;,
  -0.505431;-0.843436;0.182086;,
  0.331876;-0.912003;0.241057;,
  -0.047286;-0.997280;0.056530;,
  -0.335873;-0.873898;0.351413;,
  0.046573;-0.888766;0.455990;,
  0.274036;-0.833853;0.479159;,
  -0.122584;-0.804463;0.581216;,
  -0.053956;-0.891242;-0.450307;,
  -0.055084;-0.997896;-0.034199;,
  -0.436708;-0.862417;-0.255974;,
  -0.318153;-0.793538;-0.518726;,
  0.286633;-0.919836;-0.267849;,
  0.172176;-0.826924;-0.535305;,
  -0.215467;0.942333;-0.256091;,
  -0.310087;0.942139;-0.127357;,
  0.119144;0.943869;0.308084;,
  0.299505;0.920785;0.249903;,
  0.335877;0.901332;-0.273474;,
  0.203946;0.916036;-0.345375;,
  0.052444;0.927672;-0.369695;,
  0.423344;0.892199;0.157358;,
  0.428622;0.887925;-0.166951;,
  0.473602;0.878438;0.063629;,
  0.475549;0.878566;-0.044444;,
  -0.088043;0.935925;-0.341017;,
  0.440660;0.192414;0.876810;,
  0.031605;0.313128;0.949185;,
  0.033873;0.275708;0.960644;,
  0.436840;0.152549;0.886510;,
  0.786045;0.054867;0.615730;,
  0.770822;0.000858;0.637050;,
  0.966386;-0.061992;0.249509;,
  0.952014;-0.138056;0.273149;,
  0.987909;-0.131889;-0.081494;,
  0.747283;-0.663124;-0.042846;,
  0.915356;-0.173412;-0.363390;,
  0.681030;-0.679414;-0.273121;,
  0.708023;-0.168434;-0.685809;,
  0.524809;-0.694251;-0.492536;,
  0.293206;-0.074637;-0.953132;,
  0.226209;-0.689780;-0.687774;,
  -0.195926;0.058933;-0.978846;,
  -0.196283;-0.123956;-0.972681;,
  -0.621574;0.170138;-0.764656;,
  -0.656888;0.027178;-0.753499;,
  -0.858460;0.242538;-0.451909;,
  -0.885907;0.136965;-0.443181;,
  -0.933718;0.290499;-0.209240;,
  -0.956865;0.206020;-0.204855;,
  -0.939311;0.342508;0.019566;,
  -0.962035;0.271197;0.030674;,
  -0.877461;0.384577;0.286640;,
  -0.889269;0.329855;0.316853;,
  -0.690281;0.408106;0.597463;,
  -0.699042;0.362554;0.616356;,
  -0.361090;0.387813;0.848066;,
  -0.378819;0.350082;0.856702;,
  0.459822;0.126553;0.878947;,
  0.023265;0.235908;0.971497;,
  0.820875;0.021332;0.570709;,
  0.980026;-0.049021;0.192734;,
  0.991043;-0.078186;-0.108261;,
  0.926644;-0.090682;-0.364840;,
  0.671284;-0.037324;-0.740260;,
  0.191009;0.088052;-0.977631;,
  -0.198779;0.194465;-0.960557;,
  -0.560551;0.265213;-0.784503;,
  -0.823434;0.310591;-0.474857;,
  -0.915840;0.331108;-0.227165;,
  -0.934822;0.355035;-0.007538;,
  -0.901044;0.366482;0.231970;,
  -0.720244;0.366335;0.589107;,
  -0.355608;0.310809;0.881442;,
  -0.484473;0.463432;-0.741968;,
  -0.173318;0.420009;-0.890816;,
  -0.746265;0.485799;-0.455068;,
  0.967593;0.200762;0.153165;,
  0.816668;0.257057;0.516697;,
  0.974096;0.191098;-0.120911;,
  -0.319707;0.438162;0.840120;,
  -0.678639;0.493906;0.543604;,
  0.031537;0.396197;0.917624;,
  -0.855304;0.481005;0.192587;,
  -0.874684;0.484215;-0.021542;,
  -0.848291;0.479330;-0.225042;,
  0.912215;0.205930;-0.354198;,
  0.629411;0.302664;-0.715707;,
  0.143696;0.373931;-0.916257;,
  0.458304;0.327319;0.826329;,
  0.531227;0.844172;0.071917;,
  0.538309;0.840167;-0.065894;,
  0.055643;0.998442;-0.004139;,
  0.054836;0.998495;0.000259;,
  -0.394883;0.913636;0.096632;,
  -0.401500;0.915801;-0.010324;,
  0.056113;0.998389;-0.008438;,
  -0.391158;0.913438;-0.112372;,
  0.505431;0.843436;-0.182086;,
  0.047286;0.997280;-0.056530;,
  -0.331876;0.912003;-0.241057;,
  0.335873;0.873898;-0.351413;,
  -0.046573;0.888766;-0.455990;,
  -0.274036;0.833853;-0.479159;,
  0.122584;0.804463;-0.581216;,
  0.318153;0.793538;0.518726;,
  0.436708;0.862417;0.255974;,
  0.055084;0.997896;0.034199;,
  0.053956;0.891242;0.450307;,
  -0.172176;0.826924;0.535305;,
  -0.286633;0.919836;0.267849;,
  0.206060;-0.978524;0.005483;,
  0.181875;-0.978531;0.096950;,
  0.068717;-0.986867;0.146188;,
  0.122902;-0.991162;-0.049932;,
  -0.133367;-0.972287;0.192020;,
  -0.196393;-0.967904;0.156818;,
  -0.177766;-0.977977;-0.109362;,
  -0.090310;-0.986129;-0.139259;,
  0.001085;-0.990654;-0.136397;,
  -0.060211;-0.977134;0.203923;,
  -0.237298;-0.965833;0.104188;,
  -0.235151;-0.969994;-0.061778;,
  -0.333614;-0.941714;0.043314;,
  -0.332690;-0.942542;-0.030536;,
  0.079040;-0.991566;-0.102715;,
  0.007685;-0.981860;0.189453;,
  0.310087;-0.942139;0.127357;,
  0.215467;-0.942333;0.256091;,
  -0.299505;-0.920785;-0.249903;,
  -0.119144;-0.943869;-0.308084;,
  -0.203946;-0.916036;0.345375;,
  -0.335877;-0.901332;0.273474;,
  -0.052444;-0.927672;0.369695;,
  -0.423344;-0.892199;-0.157358;,
  -0.428622;-0.887925;0.166951;,
  -0.473602;-0.878438;-0.063629;,
  -0.475549;-0.878566;0.044444;,
  0.088043;-0.935925;0.341017;;
  198;
  4;13,12,24,25;,
  4;14,13,25,5;,
  4;15,14,5,26;,
  4;16,15,26,27;,
  4;17,16,27,28;,
  4;3,17,28,29;,
  4;18,3,29,30;,
  4;0,18,30,4;,
  4;19,0,4,31;,
  4;20,19,31,32;,
  4;21,20,32,33;,
  4;2,21,33,7;,
  4;22,2,7,34;,
  4;1,22,34,6;,
  4;23,1,6,35;,
  4;12,23,35,24;,
  4;25,24,36,47;,
  4;5,25,47,9;,
  4;26,5,9,39;,
  4;27,26,39,40;,
  4;28,27,40,44;,
  4;29,28,44,45;,
  4;30,29,45,46;,
  4;4,30,46,8;,
  4;31,4,8,37;,
  4;32,31,37,38;,
  4;33,32,38,43;,
  4;7,33,43,11;,
  4;34,7,11,42;,
  4;6,34,42,10;,
  4;35,6,10,41;,
  4;24,35,41,36;,
  4;37,8,48,49;,
  4;38,37,49,50;,
  4;39,9,51,52;,
  4;40,39,52,53;,
  4;41,10,54,55;,
  4;36,41,55,56;,
  4;42,11,57,58;,
  4;10,42,58,54;,
  4;43,38,50,59;,
  4;11,43,59,57;,
  4;44,40,53,60;,
  4;45,44,60,61;,
  4;46,45,61,62;,
  4;8,46,62,48;,
  4;47,36,56,63;,
  4;9,47,63,51;,
  4;80,81,82,83;,
  4;84,81,80,85;,
  4;86,87,81,84;,
  4;82,81,87,88;,
  4;89,90,87,86;,
  4;88,87,90,91;,
  4;93,92,90,89;,
  4;91,90,92,94;,
  4;95,96,97,98;,
  4;99,96,95,100;,
  4;85,80,96,99;,
  4;97,96,80,83;,
  4;64,65,66,67;,
  4;69,68,70,71;,
  4;69,71,72,73;,
  4;70,68,74,75;,
  4;75,74,76,77;,
  4;73,72,78,79;,
  4;79,78,65,64;,
  4;101,102,66,65;,
  4;102,16,67,66;,
  4;16,17,64,67;,
  4;103,104,68,69;,
  4;105,106,71,70;,
  4;106,107,72,71;,
  4;18,103,69,73;,
  4;104,108,74,68;,
  4;109,105,70,75;,
  4;108,110,76,74;,
  4;110,111,77,76;,
  4;111,109,75,77;,
  4;107,112,78,72;,
  4;3,18,73,79;,
  4;112,101,65,78;,
  4;17,3,79,64;,
  4;53,52,83,82;,
  4;58,57,84,85;,
  4;57,59,86,84;,
  4;60,53,82,88;,
  4;59,50,89,86;,
  4;61,60,88,91;,
  4;49,48,92,93;,
  4;50,49,93,89;,
  4;48,62,94,92;,
  4;62,61,91,94;,
  4;51,63,98,97;,
  4;63,56,95,98;,
  4;56,55,100,95;,
  4;55,54,99,100;,
  4;54,58,85,99;,
  4;52,51,97,83;,
  4;113,114,115,116;,
  4;117,113,116,118;,
  4;119,117,118,120;,
  4;121,119,120,122;,
  4;123,121,122,124;,
  4;125,123,124,126;,
  4;127,125,126,128;,
  4;129,127,128,130;,
  4;131,129,130,132;,
  4;133,131,132,134;,
  4;135,133,134,136;,
  4;137,135,136,138;,
  4;139,137,138,140;,
  4;141,139,140,142;,
  4;143,141,142,144;,
  4;114,143,144,115;,
  4;145,146,114,113;,
  4;147,145,113,117;,
  4;148,147,117,119;,
  4;149,148,119,121;,
  4;150,149,121,123;,
  4;151,150,123,125;,
  4;152,151,125,127;,
  4;153,152,127,129;,
  4;154,153,129,131;,
  4;155,154,131,133;,
  4;156,155,133,135;,
  4;157,156,135,137;,
  4;158,157,137,139;,
  4;159,158,139,141;,
  4;160,159,141,143;,
  4;146,160,143,114;,
  4;161,162,153,154;,
  4;163,161,154,155;,
  4;164,165,147,148;,
  4;166,164,148,149;,
  4;167,168,159,160;,
  4;169,167,160,146;,
  4;170,171,157,158;,
  4;168,170,158,159;,
  4;172,163,155,156;,
  4;171,172,156,157;,
  4;173,166,149,150;,
  4;174,173,150,151;,
  4;175,174,151,152;,
  4;162,175,152,153;,
  4;176,169,146,145;,
  4;165,176,145,147;,
  4;177,178,179,180;,
  4;181,180,179,182;,
  4;182,179,183,184;,
  4;185,183,179,178;,
  4;184,183,186,187;,
  4;188,186,183,185;,
  4;187,186,189,190;,
  4;191,189,186,188;,
  4;192,193,194,195;,
  4;196,195,194,197;,
  4;197,194,180,181;,
  4;177,180,194,193;,
  4;198,199,200,201;,
  4;202,203,204,205;,
  4;206,207,202,205;,
  4;208,209,204,203;,
  4;210,211,209,208;,
  4;212,213,207,206;,
  4;201,200,213,212;,
  4;200,199,214,215;,
  4;199,198,122,214;,
  4;198,201,124,122;,
  4;205,204,216,217;,
  4;203,202,218,219;,
  4;202,207,220,218;,
  4;206,205,217,128;,
  4;204,209,221,216;,
  4;208,203,219,222;,
  4;209,211,223,221;,
  4;211,210,224,223;,
  4;210,208,222,224;,
  4;207,213,225,220;,
  4;212,206,128,126;,
  4;213,200,215,225;,
  4;201,212,126,124;,
  4;178,177,164,166;,
  4;181,182,171,170;,
  4;182,184,172,171;,
  4;185,178,166,173;,
  4;184,187,163,172;,
  4;188,185,173,174;,
  4;190,189,162,161;,
  4;187,190,161,163;,
  4;189,191,175,162;,
  4;191,188,174,175;,
  4;193,192,176,165;,
  4;192,195,169,176;,
  4;195,196,167,169;,
  4;196,197,168,167;,
  4;197,181,170,168;,
  4;177,193,165,164;;
 }
 MeshTextureCoords {
  184;
  0.576840;0.791060;,
  0.576800;0.814340;,
  0.635220;0.816440;,
  0.635610;0.793810;,
  0.577070;0.767040;,
  0.636360;0.770780;,
  0.579940;0.741790;,
  0.638530;0.747150;,
  0.583360;0.717050;,
  0.641990;0.723280;,
  0.587030;0.692430;,
  0.645540;0.699510;,
  0.590970;0.666910;,
  0.649200;0.675800;,
  0.597200;0.642300;,
  0.653240;0.652260;,
  0.601800;0.620130;,
  0.656980;0.630440;,
  0.605390;0.598590;,
  0.660430;0.609480;,
  0.608810;0.576590;,
  0.665310;0.587500;,
  0.581420;0.928900;,
  0.583050;0.950640;,
  0.637760;0.948840;,
  0.637010;0.927360;,
  0.579940;0.906610;,
  0.636150;0.905370;,
  0.578860;0.883950;,
  0.635720;0.883280;,
  0.577880;0.861400;,
  0.635340;0.861410;,
  0.577110;0.838380;,
  0.635120;0.839390;,
  0.823600;0.823100;,
  0.824720;0.805570;,
  0.827370;0.785220;,
  0.830180;0.768170;,
  0.834010;0.747530;,
  0.838110;0.726380;,
  0.842780;0.705670;,
  0.847330;0.686970;,
  0.852250;0.669140;,
  0.856860;0.654210;,
  0.861630;0.639010;,
  0.832600;0.929850;,
  0.830640;0.914880;,
  0.828490;0.899270;,
  0.826550;0.880720;,
  0.824820;0.862510;,
  0.823740;0.842340;,
  0.050060;0.194150;,
  0.074710;0.204420;,
  0.082880;0.161220;,
  0.070450;0.156050;,
  0.031350;0.174300;,
  0.064360;0.146080;,
  0.163890;0.090030;,
  0.154860;0.060830;,
  0.123280;0.088840;,
  0.124360;0.102780;,
  0.164760;0.126800;,
  0.123540;0.121260;,
  0.063140;0.036880;,
  0.031810;0.055540;,
  0.064660;0.086220;,
  0.077050;0.076760;,
  0.096790;0.028740;,
  0.094010;0.072660;,
  0.022560;0.087330;,
  0.017600;0.120670;,
  0.060670;0.119050;,
  0.062030;0.102240;,
  0.023140;0.148510;,
  0.062090;0.133080;,
  0.154770;0.162930;,
  0.120080;0.139420;,
  0.137670;0.195840;,
  0.114620;0.156890;,
  0.106290;0.205870;,
  0.098800;0.161950;,
  0.127260;0.036750;,
  0.109370;0.076690;,
  0.090240;0.102690;,
  0.088020;0.120290;,
  0.123540;0.121260;,
  0.124360;0.102780;,
  0.060670;0.119050;,
  0.062030;0.102240;,
  0.062090;0.133080;,
  0.086030;0.136150;,
  0.120080;0.139420;,
  0.064360;0.146080;,
  0.084200;0.150700;,
  0.114620;0.156890;,
  0.070450;0.156050;,
  0.082880;0.161220;,
  0.098800;0.161950;,
  0.094010;0.072660;,
  0.092160;0.087380;,
  0.123280;0.088840;,
  0.109370;0.076690;,
  0.064660;0.086220;,
  0.077050;0.076760;,
  0.587030;0.692430;,
  0.577070;0.767040;,
  0.579940;0.741790;,
  0.583360;0.717050;,
  0.601800;0.620130;,
  0.605390;0.598590;,
  0.577880;0.861400;,
  0.577110;0.838380;,
  0.576800;0.814340;,
  0.597200;0.642300;,
  0.583050;0.950640;,
  0.578860;0.883950;,
  0.581420;0.928900;,
  0.579940;0.906610;,
  0.576840;0.791060;,
  0.590970;0.666910;,
  0.493940;0.154770;,
  0.489170;0.132240;,
  0.489170;0.132240;,
  0.493940;0.154770;,
  0.578890;0.380790;,
  0.570250;0.360730;,
  0.570250;0.360730;,
  0.578890;0.380790;,
  0.583050;0.950640;,
  0.581420;0.928900;,
  0.581420;0.928900;,
  0.583050;0.950640;,
  0.581420;0.928900;,
  0.579940;0.906610;,
  0.579940;0.906610;,
  0.581420;0.928900;,
  0.579940;0.906610;,
  0.578860;0.883950;,
  0.578860;0.883950;,
  0.579940;0.906610;,
  0.489170;0.132240;,
  0.484710;0.110110;,
  0.484710;0.110110;,
  0.489170;0.132240;,
  0.587480;0.401320;,
  0.578890;0.380790;,
  0.578890;0.380790;,
  0.587480;0.401320;,
  0.576800;0.814340;,
  0.576840;0.791060;,
  0.576840;0.791060;,
  0.576800;0.814340;,
  0.590970;0.666910;,
  0.597200;0.642300;,
  0.597200;0.642300;,
  0.590970;0.666910;,
  0.548510;0.317920;,
  0.538570;0.294090;,
  0.538570;0.294090;,
  0.548510;0.317920;,
  0.511010;0.224040;,
  0.505030;0.200780;,
  0.505030;0.200780;,
  0.511010;0.224040;,
  0.576840;0.791060;,
  0.577070;0.767040;,
  0.577070;0.767040;,
  0.576840;0.791060;,
  0.587030;0.692430;,
  0.590970;0.666910;,
  0.590970;0.666910;,
  0.587030;0.692430;,
  0.538570;0.294090;,
  0.529100;0.271070;,
  0.529100;0.271070;,
  0.538570;0.294090;,
  0.529100;0.271070;,
  0.519850;0.247870;,
  0.519850;0.247870;,
  0.529100;0.271070;,
  0.519850;0.247870;,
  0.511010;0.224040;,
  0.511010;0.224040;,
  0.519850;0.247870;;
 }
}

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
 39;
 20.28498;-7.80356;2.15037;,
 7.48532;7.46801;1.65116;,
 6.27567;5.99577;4.58729;,
 19.21026;-9.25187;4.82670;,
 1.84688;0.86103;8.40996;,
 15.19304;-14.28630;7.84533;,
 -3.78588;-6.52203;8.48472;,
 9.93732;-19.73484;5.64059;,
 -4.97646;-9.30977;-0.21635;,
 7.68375;-21.59945;-0.99597;,
 17.63421;-9.56639;-6.01416;,
 5.54220;6.49407;-6.92184;,
 15.68292;-11.48846;-7.82751;,
 2.90897;4.46040;-9.02487;,
 13.42256;-13.86155;-8.73243;,
 -1.00676;1.59849;-10.64966;,
 7.68375;-21.59945;-0.99597;,
 -4.97646;-9.30977;-0.21635;,
 -6.09531;-7.01271;-4.40874;,
 7.84581;-20.77454;-4.44560;,
 25.20176;-27.31616;-7.03452;,
 27.57420;-25.13406;-6.60506;,
 29.73764;-23.21750;-5.45492;,
 31.79852;-22.19891;2.31501;,
 19.11549;-32.80053;-3.71792;,
 18.79314;-33.34181;-0.73473;,
 18.79314;-33.34181;-0.73473;,
 22.18323;-31.06923;4.97418;,
 26.98548;-27.08079;7.28399;,
 30.63738;-23.45924;4.85955;,
 25.45422;-32.83824;3.34815;,
 23.01783;-34.47152;-0.75471;,
 30.88337;-27.19533;-4.14701;,
 32.36445;-26.46336;1.43706;,
 29.32856;-28.57281;-4.97358;,
 23.24951;-34.08243;-2.89866;,
 27.62355;-30.14097;-5.28224;,
 31.53002;-27.36914;3.26577;,
 28.90547;-29.97188;5.00816;;
 
 70;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;0,10,11,1;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;16,17,18,19;,
 4;19,18,15,14;,
 4;20,14,12,21;,
 4;21,12,10,22;,
 4;22,10,0,23;,
 4;20,24,19,14;,
 4;24,25,16,19;,
 4;26,27,7,9;,
 4;27,28,5,7;,
 4;28,29,3,5;,
 4;29,23,0,3;,
 4;6,4,11,13;,
 4;4,2,1,11;,
 3;15,18,17;,
 4;6,13,15,17;,
 4;30,31,32,33;,
 3;31,34,32;,
 4;31,35,36,34;,
 4;37,38,30,33;,
 4;23,33,32,22;,
 4;26,31,30,27;,
 4;22,32,34,21;,
 4;21,34,36,20;,
 4;20,36,35,24;,
 4;24,35,31,26;,
 4;29,37,33,23;,
 4;27,30,38,28;,
 4;28,38,37,29;,
 4;3,2,1,0;,
 4;5,4,2,3;,
 4;7,6,4,5;,
 4;9,8,6,7;,
 4;1,11,10,0;,
 4;11,13,12,10;,
 4;13,15,14,12;,
 4;19,18,17,16;,
 4;14,15,18,19;,
 4;21,12,14,20;,
 4;22,10,12,21;,
 4;23,0,10,22;,
 4;14,19,24,20;,
 4;19,16,25,24;,
 4;9,7,27,26;,
 4;7,5,28,27;,
 4;5,3,29,28;,
 4;3,0,23,29;,
 4;13,11,4,6;,
 4;11,1,2,4;,
 3;17,18,15;,
 4;17,15,13,6;,
 4;33,32,31,30;,
 3;32,34,31;,
 4;34,36,35,31;,
 4;33,30,38,37;,
 4;22,32,33,23;,
 4;27,30,31,26;,
 4;21,34,32,22;,
 4;20,36,34,21;,
 4;24,35,36,20;,
 4;26,31,35,24;,
 4;23,33,37,29;,
 4;28,38,30,27;,
 4;29,37,38,28;;
 
 MeshMaterialList {
  1;
  70;
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
   0.392000;0.336000;0.207200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.171500;0.147000;0.090650;;
  }
 }
 MeshNormals {
  97;
  0.642545;0.470050;-0.605136;,
  0.512308;0.437443;0.739042;,
  -0.684478;-0.724292;0.083017;,
  0.511676;0.425076;0.746658;,
  -0.303682;-0.371740;0.877261;,
  -0.694257;-0.709865;0.118742;,
  0.184398;-0.355112;-0.916457;,
  -0.027253;-0.124923;-0.991792;,
  0.683306;0.180807;0.707390;,
  -0.495696;-0.854433;0.155662;,
  0.088103;-0.263540;-0.960617;,
  0.720973;0.262149;-0.641464;,
  0.917655;0.382038;0.109346;,
  0.330887;0.198424;-0.922573;,
  0.243816;-0.197536;0.949491;,
  0.366655;0.221066;-0.903711;,
  0.767608;0.626855;0.133533;,
  -0.030898;-0.156818;0.987144;,
  0.170684;0.073978;0.982545;,
  0.122769;0.044195;0.991451;,
  0.767370;0.627682;0.130990;,
  -0.556321;-0.584158;-0.590987;,
  0.619811;0.471776;-0.627106;,
  -0.550232;-0.571928;-0.608393;,
  -0.347004;-0.704626;-0.618943;,
  0.386688;-0.000542;-0.922210;,
  -0.255979;-0.624146;0.738185;,
  0.662827;-0.744035;-0.084095;,
  0.927943;-0.372697;-0.004262;,
  0.833033;-0.419880;-0.360217;,
  0.477706;-0.873123;-0.097225;,
  0.667425;-0.743842;-0.035251;,
  0.663068;-0.747467;-0.040426;,
  0.232542;-0.962999;-0.136225;,
  0.847222;-0.330376;0.416012;,
  0.666052;-0.741198;-0.083675;,
  -0.625307;-0.693426;0.357982;,
  -0.774067;0.623608;0.109242;,
  -0.720061;0.688644;0.085333;,
  -0.709282;0.700864;0.075547;,
  -0.690367;0.644769;0.328125;,
  -0.115571;0.597407;0.793566;,
  -0.225517;-0.851727;0.472972;,
  -0.070186;-0.742295;0.666387;,
  0.463329;-0.175716;-0.868591;,
  0.197313;-0.389032;-0.899846;,
  0.006753;-0.522940;-0.852343;,
  0.394771;-0.391966;0.830975;,
  -0.511676;-0.425076;-0.746658;,
  -0.512308;-0.437443;-0.739042;,
  -0.767608;-0.626855;-0.133533;,
  -0.767370;-0.627682;-0.130990;,
  -0.122769;-0.044195;-0.991451;,
  -0.170684;-0.073978;-0.982545;,
  0.303682;0.371740;-0.877261;,
  0.030898;0.156818;-0.987144;,
  0.694257;0.709865;-0.118742;,
  0.684478;0.724292;-0.083017;,
  0.625307;0.693426;-0.357982;,
  -0.642545;-0.470050;0.605136;,
  -0.619811;-0.471776;0.627106;,
  -0.366655;-0.221066;0.903711;,
  -0.330887;-0.198424;0.922573;,
  0.028418;0.122735;0.992033;,
  0.027253;0.124923;0.991792;,
  0.550232;0.571928;0.608393;,
  0.688849;0.697171;0.198594;,
  -0.386688;0.000542;0.922210;,
  -0.088103;0.263540;0.960617;,
  -0.720973;-0.262149;0.641464;,
  -0.917655;-0.382038;-0.109346;,
  0.347004;0.704626;0.618943;,
  0.495696;0.854433;-0.155662;,
  0.255979;0.624146;-0.738185;,
  -0.243816;0.197536;-0.949491;,
  -0.683306;-0.180807;-0.707390;,
  0.774067;-0.623608;-0.109242;,
  0.720061;-0.688644;-0.085333;,
  0.709282;-0.700864;-0.075547;,
  0.690367;-0.644769;-0.328125;,
  0.523268;-0.680736;-0.512630;,
  0.813796;-0.568014;-0.122864;,
  -0.927943;0.372697;0.004262;,
  -0.833033;0.419880;0.360217;,
  -0.477706;0.873123;0.097225;,
  -0.662827;0.744035;0.084095;,
  -0.667425;0.743842;0.035251;,
  -0.663068;0.747467;0.040426;,
  -0.232542;0.962999;0.136225;,
  -0.666052;0.741198;0.083675;,
  -0.847222;0.330376;-0.416012;,
  0.070186;0.742295;-0.666387;,
  0.225517;0.851727;-0.472972;,
  -0.463329;0.175716;0.868591;,
  -0.197313;0.389032;0.899846;,
  -0.006753;0.522940;0.852343;,
  -0.394771;0.391966;-0.830975;;
  70;
  4;20,16,1,3;,
  4;3,1,18,19;,
  4;19,18,17,4;,
  4;36,36,2,5;,
  4;20,22,0,16;,
  4;22,13,15,0;,
  4;13,7,6,15;,
  4;5,2,21,23;,
  4;23,21,6,7;,
  4;10,7,13,25;,
  4;25,13,22,11;,
  4;11,22,20,12;,
  4;10,24,23,7;,
  4;24,9,5,23;,
  4;9,26,4,5;,
  4;26,14,19,4;,
  4;14,8,3,19;,
  4;8,12,20,3;,
  4;37,38,38,37;,
  4;38,39,39,38;,
  3;40,41,40;,
  4;37,37,40,40;,
  4;27,30,29,28;,
  3;30,31,29;,
  4;30,33,32,31;,
  4;34,35,27,28;,
  4;12,28,29,11;,
  4;9,42,43,26;,
  4;11,29,44,25;,
  4;25,44,45,10;,
  4;10,45,46,24;,
  4;24,33,30,9;,
  4;8,34,28,12;,
  4;26,43,47,14;,
  4;14,47,34,8;,
  4;48,49,50,51;,
  4;52,53,49,48;,
  4;54,55,53,52;,
  4;56,57,58,58;,
  4;50,59,60,51;,
  4;59,61,62,60;,
  4;61,63,64,62;,
  4;65,66,57,56;,
  4;64,63,41,65;,
  4;67,62,64,68;,
  4;69,60,62,67;,
  4;70,51,60,69;,
  4;64,65,71,68;,
  4;65,56,72,71;,
  4;56,54,73,72;,
  4;54,52,74,73;,
  4;52,48,75,74;,
  4;48,51,70,75;,
  4;76,77,77,76;,
  4;77,78,78,77;,
  3;79,80,6;,
  4;79,81,76,76;,
  4;82,83,84,85;,
  3;83,86,84;,
  4;86,87,88,84;,
  4;82,85,89,90;,
  4;69,83,82,70;,
  4;73,91,92,72;,
  4;67,93,83,69;,
  4;68,94,93,67;,
  4;71,95,94,68;,
  4;72,84,88,71;,
  4;70,82,90,75;,
  4;74,96,91,73;,
  4;75,90,96,74;;
 }
 MeshTextureCoords {
  39;
  0.882000;0.662010;,
  0.876290;0.591280;,
  0.885680;0.592650;,
  0.893660;0.663270;,
  0.908180;0.599570;,
  0.916660;0.668780;,
  0.936640;0.609680;,
  0.940540;0.675500;,
  0.971730;0.622830;,
  0.965340;0.684460;,
  0.847070;0.661560;,
  0.844730;0.593100;,
  0.836420;0.663720;,
  0.831860;0.596260;,
  0.825760;0.665870;,
  0.818990;0.599410;,
  0.778710;0.683150;,
  0.774260;0.619550;,
  0.784880;0.616820;,
  0.791600;0.677960;,
  0.836300;0.744410;,
  0.847500;0.743760;,
  0.858700;0.743110;,
  0.892530;0.742830;,
  0.801360;0.747060;,
  0.789220;0.748260;,
  0.969450;0.750570;,
  0.942090;0.746610;,
  0.921520;0.744520;,
  0.903840;0.742920;,
  0.942090;0.746610;,
  0.969450;0.750570;,
  0.858700;0.743110;,
  0.892530;0.742830;,
  0.847500;0.743760;,
  0.801360;0.747060;,
  0.836300;0.744410;,
  0.903840;0.742920;,
  0.921520;0.744520;;
 }
}

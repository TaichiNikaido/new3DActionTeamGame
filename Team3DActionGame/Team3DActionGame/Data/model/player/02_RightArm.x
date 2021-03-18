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
 -13.72043;-3.84467;1.69265;,
 -13.08215;-4.86359;3.47687;,
 -3.68593;4.59142;3.31727;,
 -4.41263;5.63330;1.35984;,
 -10.67642;-8.42020;5.48929;,
 -1.01192;0.94659;5.86571;,
 -7.46932;-12.31704;4.01947;,
 2.34427;-4.25569;5.91556;,
 -6.06940;-13.67448;-0.40490;,
 2.98929;-6.17092;0.11485;,
 -3.17230;4.88410;-4.35549;,
 -12.05122;-5.15527;-3.75036;,
 -1.52895;3.39438;-5.75751;,
 -10.85524;-6.53505;-4.95927;,
 0.92329;1.28694;-6.84069;,
 -9.47750;-8.23080;-5.56254;,
 -6.06940;-13.67448;-0.40490;,
 -6.13384;-13.11769;-2.70466;,
 3.85338;-4.70299;-2.68008;,
 2.98929;-6.17092;0.11485;,
 -18.01175;-16.55474;-4.43060;,
 -19.47402;-14.98008;-4.14430;,
 -20.81130;-13.59288;-3.37754;,
 -22.12750;-12.80778;1.80241;,
 -14.25457;-20.51896;-2.21954;,
 -14.06872;-20.89563;-0.23074;,
 -14.06872;-20.89563;-0.23074;,
 -16.20254;-19.20741;3.57519;,
 -19.18485;-16.30478;5.11507;,
 -21.42194;-13.70632;3.49878;,
 -18.46925;-20.21151;2.49117;,
 -22.72733;-15.61225;1.21712;,
 -21.78142;-16.17646;-2.50560;,
 -16.93571;-21.42479;-0.24407;,
 -20.82037;-17.17342;-3.05665;,
 -19.76951;-18.30510;-3.26242;,
 -17.06924;-21.15407;-1.67336;,
 -22.22028;-16.25800;2.43626;,
 -20.61260;-18.12546;3.59784;;
 
 70;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;0,3,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;16,17,18,19;,
 4;17,15,14,18;,
 4;20,21,13,15;,
 4;21,22,11,13;,
 4;22,23,0,11;,
 4;20,15,17,24;,
 4;24,17,16,25;,
 4;26,8,6,27;,
 4;27,6,4,28;,
 4;28,4,1,29;,
 4;29,1,0,23;,
 4;7,12,10,5;,
 4;5,10,3,2;,
 3;14,19,18;,
 4;7,19,14,12;,
 4;30,31,32,33;,
 3;33,32,34;,
 4;33,34,35,36;,
 4;37,31,30,38;,
 4;23,22,32,31;,
 4;26,27,30,33;,
 4;22,21,34,32;,
 4;21,20,35,34;,
 4;20,24,36,35;,
 4;24,26,33,36;,
 4;29,23,31,37;,
 4;27,28,38,30;,
 4;28,29,37,38;,
 4;3,2,1,0;,
 4;2,5,4,1;,
 4;5,7,6,4;,
 4;7,9,8,6;,
 4;11,10,3,0;,
 4;13,12,10,11;,
 4;15,14,12,13;,
 4;19,18,17,16;,
 4;18,14,15,17;,
 4;15,13,21,20;,
 4;13,11,22,21;,
 4;11,0,23,22;,
 4;24,17,15,20;,
 4;25,16,17,24;,
 4;27,6,8,26;,
 4;28,4,6,27;,
 4;29,1,4,28;,
 4;23,0,1,29;,
 4;5,10,12,7;,
 4;2,3,10,5;,
 3;18,19,14;,
 4;12,14,19,7;,
 4;33,32,31,30;,
 3;34,32,33;,
 4;36,35,34,33;,
 4;38,30,31,37;,
 4;31,32,22,23;,
 4;33,30,27,26;,
 4;32,34,21,22;,
 4;34,35,20,21;,
 4;35,36,24,20;,
 4;36,33,26,24;,
 4;37,31,23,29;,
 4;30,38,28,27;,
 4;38,37,29,28;;
 
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
  -0.603563;0.519157;-0.605134;,
  -0.476299;0.476402;0.739040;,
  0.625369;-0.775902;0.082997;,
  -0.476641;0.464023;0.746657;,
  0.273486;-0.394483;0.877262;,
  0.636249;-0.762293;0.118728;,
  -0.211769;-0.339501;-0.916457;,
  0.017339;-0.126681;-0.991792;,
  -0.666960;0.234017;0.707389;,
  0.426922;-0.890791;0.155659;,
  -0.108564;-0.255788;-0.960618;,
  -0.698110;0.318070;-0.641463;,
  -0.884747;0.453063;0.109345;,
  -0.314246;0.223847;-0.922573;,
  -0.258604;-0.177736;0.949491;,
  -0.348121;0.249234;-0.903711;,
  -0.715899;0.685316;0.133531;,
  0.018461;-0.158761;0.987144;,
  -0.164335;0.087182;0.982544;,
  -0.118910;0.053720;0.991451;,
  -0.715597;0.686122;0.130989;,
  0.508628;-0.626108;-0.591005;,
  -0.580765;0.519089;-0.627104;,
  0.503518;-0.613443;-0.608405;,
  0.290481;-0.729744;-0.618947;,
  -0.385530;0.029889;-0.922211;,
  0.206070;-0.642353;0.738185;,
  -0.719322;-0.689567;-0.084096;,
  -0.954394;-0.298520;-0.004263;,
  -0.863486;-0.353030;-0.360225;,
  -0.544928;-0.832826;-0.097230;,
  -0.723885;-0.689019;-0.035264;,
  -0.719834;-0.692969;-0.040413;,
  -0.307602;-0.941714;-0.136217;,
  -0.870595;-0.262681;0.416008;,
  -0.722314;-0.686483;-0.083682;,
  0.568802;-0.740480;0.357986;,
  0.820739;0.560762;0.109240;,
  0.772014;0.629851;0.085332;,
  0.762226;0.642888;0.075548;,
  0.738964;0.588444;0.328125;,
  0.162223;0.586461;0.793566;,
  0.011556;-0.745517;0.666387;,
  0.157793;-0.866832;0.472973;,
  -0.475717;-0.138709;-0.868593;,
  -0.227309;-0.372294;-0.899849;,
  -0.047877;-0.520782;-0.852346;,
  -0.424391;-0.359684;0.830975;,
  0.715899;-0.685316;-0.133531;,
  0.476299;-0.476402;-0.739040;,
  0.476641;-0.464023;-0.746657;,
  0.715597;-0.686122;-0.130989;,
  0.164335;-0.087182;-0.982544;,
  0.118910;-0.053720;-0.991451;,
  -0.018461;0.158761;-0.987144;,
  -0.273486;0.394483;-0.877262;,
  -0.568802;0.740480;-0.357986;,
  -0.625369;0.775902;-0.082997;,
  -0.636249;0.762293;-0.118728;,
  0.580765;-0.519089;0.627104;,
  0.603563;-0.519157;0.605134;,
  0.314246;-0.223847;0.922573;,
  0.348121;-0.249234;0.903711;,
  -0.017339;0.126681;0.991792;,
  -0.018673;0.124592;0.992032;,
  -0.631861;0.749196;0.198638;,
  -0.503518;0.613443;0.608405;,
  0.385530;-0.029889;0.922211;,
  0.108564;0.255788;0.960618;,
  0.698110;-0.318070;0.641463;,
  0.884747;-0.453063;-0.109345;,
  -0.290481;0.729744;0.618947;,
  -0.426922;0.890791;-0.155659;,
  -0.206070;0.642353;-0.738185;,
  0.258604;0.177736;-0.949491;,
  0.666960;-0.234017;-0.707389;,
  -0.772014;-0.629851;-0.085332;,
  -0.820739;-0.560762;-0.109240;,
  -0.762226;-0.642888;-0.075548;,
  -0.575212;-0.637449;-0.512630;,
  -0.738964;-0.588444;-0.328125;,
  -0.855970;-0.502214;-0.122863;,
  0.544928;0.832826;0.097230;,
  0.863486;0.353030;0.360225;,
  0.954394;0.298520;0.004263;,
  0.719322;0.689567;0.084096;,
  0.723885;0.689019;0.035264;,
  0.307602;0.941714;0.136217;,
  0.719834;0.692969;0.040413;,
  0.722314;0.686483;0.083682;,
  0.870595;0.262681;-0.416008;,
  -0.157793;0.866832;-0.472973;,
  -0.011556;0.745517;-0.666387;,
  0.475717;0.138709;0.868593;,
  0.227309;0.372294;0.899849;,
  0.047877;0.520782;0.852346;,
  0.424391;0.359684;-0.830975;;
  70;
  4;20,3,1,16;,
  4;3,19,18,1;,
  4;19,4,17,18;,
  4;36,5,2,36;,
  4;20,16,0,22;,
  4;22,0,15,13;,
  4;13,15,6,7;,
  4;5,23,21,2;,
  4;23,7,6,21;,
  4;10,25,13,7;,
  4;25,11,22,13;,
  4;11,12,20,22;,
  4;10,7,23,24;,
  4;24,23,5,9;,
  4;9,5,4,26;,
  4;26,4,19,14;,
  4;14,19,3,8;,
  4;8,3,20,12;,
  4;37,37,38,38;,
  4;38,38,39,39;,
  3;40,40,41;,
  4;37,40,40,37;,
  4;27,28,29,30;,
  3;30,29,31;,
  4;30,31,32,33;,
  4;34,28,27,35;,
  4;12,11,29,28;,
  4;9,26,42,43;,
  4;11,25,44,29;,
  4;25,10,45,44;,
  4;10,24,46,45;,
  4;24,9,30,33;,
  4;8,12,28,34;,
  4;26,14,47,42;,
  4;14,8,34,47;,
  4;48,49,50,51;,
  4;49,52,53,50;,
  4;52,54,55,53;,
  4;56,57,58,56;,
  4;59,60,48,51;,
  4;61,62,60,59;,
  4;63,64,62,61;,
  4;57,65,66,58;,
  4;41,64,63,66;,
  4;63,61,67,68;,
  4;61,59,69,67;,
  4;59,51,70,69;,
  4;71,66,63,68;,
  4;72,58,66,71;,
  4;73,55,58,72;,
  4;74,53,55,73;,
  4;75,50,53,74;,
  4;70,51,50,75;,
  4;76,76,77,77;,
  4;78,78,76,76;,
  3;79,80,6;,
  4;77,81,80,77;,
  4;82,83,84,85;,
  3;86,83,82;,
  4;87,88,86,82;,
  4;89,85,84,90;,
  4;84,83,69,70;,
  4;91,92,73,72;,
  4;83,93,67,69;,
  4;93,94,68,67;,
  4;94,95,71,68;,
  4;87,82,72,71;,
  4;90,84,70,75;,
  4;92,96,74,73;,
  4;96,90,75,74;;
 }
 MeshTextureCoords {
  39;
  0.882000;0.662010;,
  0.893660;0.663270;,
  0.885680;0.592650;,
  0.876290;0.591280;,
  0.916660;0.668780;,
  0.908180;0.599570;,
  0.940540;0.675500;,
  0.936640;0.609680;,
  0.965340;0.684460;,
  0.971730;0.622830;,
  0.844730;0.593100;,
  0.847070;0.661560;,
  0.831860;0.596260;,
  0.836420;0.663720;,
  0.818990;0.599410;,
  0.825760;0.665870;,
  0.778710;0.683150;,
  0.791600;0.677960;,
  0.784880;0.616820;,
  0.774260;0.619550;,
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
  0.892530;0.742830;,
  0.858700;0.743110;,
  0.969450;0.750570;,
  0.847500;0.743760;,
  0.836300;0.744410;,
  0.801360;0.747060;,
  0.903840;0.742920;,
  0.921520;0.744520;;
 }
}
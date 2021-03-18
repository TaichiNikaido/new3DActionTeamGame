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
 125;
 0.60983;-4.31682;7.71696;,
 4.22776;-5.11755;9.26322;,
 3.39382;-2.11460;10.74807;,
 0.11299;-0.24609;10.38113;,
 -0.99220;1.72476;5.41291;,
 0.20897;1.41074;8.96051;,
 1.73897;6.31881;10.03765;,
 0.72787;7.72326;6.59105;,
 -1.44802;1.62371;-6.36418;,
 0.68133;8.20509;-4.21919;,
 1.10371;7.68952;-6.86425;,
 -0.19381;1.19634;-8.98110;,
 -2.41355;1.93527;-2.55004;,
 -0.02160;9.00671;-0.23734;,
 -1.39371;-5.52328;-7.36335;,
 -1.52353;-1.58851;-7.00078;,
 0.46398;-2.71255;-9.47566;,
 1.79829;-7.17346;-9.22105;,
 -2.86423;-4.95202;-3.75924;,
 -2.72344;-1.27094;-3.23700;,
 -1.40051;-1.30573;4.79384;,
 -1.47605;-4.36914;4.27625;,
 -1.75689;-7.23495;3.67563;,
 0.38799;-7.04937;7.08284;,
 -1.26829;-8.82607;-7.01253;,
 -2.71092;-8.35938;-3.97330;,
 2.31105;-10.19971;-8.09849;,
 3.82546;-8.88789;-5.49230;,
 3.98888;-10.52724;-5.00136;,
 4.98833;-7.52323;4.28268;,
 3.24381;-7.44207;7.83785;,
 4.68904;-8.91657;3.51521;,
 0.26140;-10.01124;5.89987;,
 -1.80387;-9.80232;2.65193;,
 -1.20945;-12.86664;1.00479;,
 0.31047;-12.67367;3.22429;,
 -2.52866;-10.68852;-3.75230;,
 -1.00789;-11.86759;-6.78979;,
 -0.34907;-15.08821;-6.08589;,
 -1.84865;-14.07296;-3.34171;,
 2.27732;-12.70459;-7.20983;,
 1.84503;-15.70707;-6.23891;,
 3.97086;-12.31429;-4.54913;,
 3.50218;-15.39942;-3.04878;,
 4.66342;-10.66496;2.76050;,
 3.10536;-10.16608;6.27728;,
 2.96766;-12.52101;4.03404;,
 3.88384;-13.49208;2.15657;,
 0.31611;-15.30404;5.79484;,
 -1.42781;-16.10273;4.10872;,
 -0.85271;-17.72228;4.93096;,
 0.48492;-16.93606;6.61353;,
 -1.22010;-17.61235;0.67520;,
 -0.14792;-18.57622;-1.20156;,
 -0.01524;-19.95306;0.45904;,
 -0.92793;-19.01721;2.10872;,
 1.83464;-18.97395;-1.36653;,
 1.80081;-20.29334;0.30452;,
 3.16817;-18.32748;0.40070;,
 3.01951;-19.57835;1.86040;,
 4.02678;-16.31577;4.57313;,
 2.47550;-15.25301;6.13842;,
 2.48859;-17.03688;6.81525;,
 3.60824;-17.91949;5.27688;,
 -1.73542;-16.88267;2.32019;,
 -1.36922;-18.29583;3.51682;,
 -3.38792;-10.39967;-0.94672;,
 -2.28756;-13.33066;-1.03177;,
 -3.23663;-4.59398;0.35950;,
 -3.42813;-7.71564;-0.10911;,
 -2.59187;-1.12765;0.81552;,
 -1.99120;2.08385;1.47591;,
 -0.05887;8.71736;3.30591;,
 5.41100;-9.44964;-1.26302;,
 5.05808;-11.04763;-1.36030;,
 4.82310;-12.21060;-1.50392;,
 4.35383;-14.89919;-0.31837;,
 3.86988;-17.53248;2.35628;,
 3.65096;-18.80035;3.54183;,
 -0.21630;-16.97798;-3.48099;,
 -1.53865;-15.94586;-1.39249;,
 -1.93091;-15.25646;0.49679;,
 -1.32954;-14.65219;2.29104;,
 0.13170;-13.85439;4.42451;,
 2.60628;-13.70442;4.95479;,
 3.96874;-14.98182;3.16317;,
 4.06913;-16.32889;0.95614;,
 3.32627;-17.02598;-1.42556;,
 1.81493;-17.47687;-3.62038;,
 0.09348;-21.11681;1.85942;,
 -0.67830;-20.41353;3.43380;,
 -0.95632;-19.86848;4.63767;,
 -0.18989;-19.54700;5.97269;,
 0.93017;-19.56353;7.60512;,
 2.42529;-19.75743;7.78468;,
 2.88609;-19.84345;6.09208;,
 3.35899;-20.33773;4.61354;,
 2.89645;-20.77207;3.05969;,
 1.79029;-21.46588;1.69057;,
 3.15033;5.72803;-3.23686;,
 3.41650;5.40313;-4.90371;,
 2.59884;1.31130;-6.23769;,
 3.01336;-1.15198;-6.54935;,
 3.85421;-3.96313;-6.38891;,
 5.13168;-5.04353;-4.03914;,
 6.13084;-5.39753;-1.37396;,
 5.86449;-4.18355;2.12080;,
 5.38520;-2.66755;5.25941;,
 4.85967;-0.77517;6.19512;,
 2.79217;-0.22149;8.81843;,
 2.85266;1.44641;8.12808;,
 3.81683;4.53935;5.74743;,
 3.17966;5.42440;3.57548;,
 2.68387;6.05085;1.50527;,
 2.70736;6.23319;-0.72760;,
 2.85796;-20.79818;4.81080;,
 2.50180;-20.42591;5.92436;,
 2.50960;-21.12531;3.64054;,
 2.15476;-20.36113;7.19912;,
 1.67651;-21.64784;2.60940;,
 1.02872;-20.21510;7.06389;,
 0.39857;-21.38494;2.73656;,
 0.18516;-20.20266;5.83443;,
 -0.18269;-20.85527;3.92229;,
 -0.39208;-20.44476;4.82898;;
 
 131;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,9,8;,
 4;14,15,16,17;,
 4;18,19,15,14;,
 4;0,3,20,21;,
 4;0,21,22,23;,
 4;18,14,24,25;,
 4;14,17,26,24;,
 4;17,27,28,26;,
 4;29,1,30,31;,
 4;1,0,23,30;,
 4;32,33,34,35;,
 4;36,37,38,39;,
 4;37,40,41,38;,
 4;41,40,42,43;,
 4;44,45,46,47;,
 4;45,32,35,46;,
 4;48,49,50,51;,
 4;52,53,54,55;,
 4;53,56,57,54;,
 4;56,58,59,57;,
 4;60,61,62,63;,
 4;61,48,51,62;,
 4;20,3,5,4;,
 4;15,19,12,8;,
 4;16,15,8,11;,
 4;64,52,55,65;,
 4;66,36,39,67;,
 4;68,18,25,69;,
 4;68,70,19,18;,
 4;12,19,70,71;,
 4;71,72,13,12;,
 4;71,4,7,72;,
 4;70,20,4,71;,
 4;21,20,70,68;,
 4;22,21,68,69;,
 4;33,66,67,34;,
 4;50,49,64,65;,
 4;28,27,73,74;,
 4;42,75,76,43;,
 4;59,58,77,78;,
 4;77,60,63,78;,
 4;75,44,47,76;,
 4;73,29,31,74;,
 4;24,26,40,37;,
 4;25,24,37,36;,
 4;69,25,36,66;,
 4;33,22,69,66;,
 4;23,22,33,32;,
 4;30,23,32,45;,
 4;31,30,45,44;,
 4;74,31,44,75;,
 4;42,28,74,75;,
 4;26,28,42,40;,
 4;39,38,79,80;,
 4;81,67,39,80;,
 4;82,34,67,81;,
 4;35,34,82,83;,
 4;84,46,35,83;,
 4;47,46,84,85;,
 4;86,76,47,85;,
 4;87,43,76,86;,
 4;88,41,43,87;,
 4;79,38,41,88;,
 4;80,79,53,52;,
 4;81,80,52,64;,
 4;49,82,81,64;,
 4;83,82,49,48;,
 4;84,83,48,61;,
 4;85,84,61,60;,
 4;86,85,60,77;,
 4;58,87,86,77;,
 4;88,87,58,56;,
 4;79,88,56,53;,
 4;55,54,89,90;,
 4;65,55,90,91;,
 4;92,50,65,91;,
 4;51,50,92,93;,
 4;62,51,93,94;,
 4;63,62,94,95;,
 4;78,63,95,96;,
 4;97,59,78,96;,
 4;57,59,97,98;,
 4;54,57,98,89;,
 4;9,99,100,10;,
 4;10,100,101,11;,
 4;11,101,102,16;,
 4;16,102,103,17;,
 4;17,103,104,27;,
 4;27,104,105,73;,
 4;73,105,106,29;,
 4;29,106,107,1;,
 4;1,107,108,2;,
 3;2,109,3;,
 3;3,109,5;,
 4;5,110,111,6;,
 4;6,111,112,7;,
 4;7,112,113,72;,
 4;72,113,114,13;,
 4;13,114,99,9;,
 3;109,110,5;,
 3;2,108,109;,
 4;99,104,103,100;,
 4;104,99,114,105;,
 4;105,114,113,106;,
 4;106,113,112,107;,
 4;100,103,102,101;,
 3;110,109,108;,
 3;107,112,108;,
 3;112,111,108;,
 3;111,110,108;,
 3;115,116,117;,
 3;116,118,117;,
 3;117,118,119;,
 3;118,120,119;,
 3;119,120,121;,
 3;120,122,121;,
 3;121,122,123;,
 3;122,124,123;,
 4;93,120,118,94;,
 4;94,118,116,95;,
 4;95,116,115,96;,
 4;96,115,117,97;,
 4;97,117,119,98;,
 4;98,119,121,89;,
 4;89,121,123,90;,
 4;90,123,124,91;,
 4;91,124,122,92;,
 4;92,122,120,93;;
 
 MeshMaterialList {
  11;
  131;
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
  1,
  1,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���̍�i\\�`�[��\\-s_0.2_0.2_dinosaur-skin0.png";
   }
  }
  Material {
   0.442400;0.442400;0.442400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.276500;0.276500;0.276500;;
   TextureFilename {
    "dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.448800;0.448800;0.448800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.280500;0.280500;0.280500;;
   TextureFilename {
    "dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.564800;0.564800;0.564800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.353000;0.353000;0.353000;;
   TextureFilename {
    "dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.552000;0.552000;0.552000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.345000;0.345000;0.345000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���̍�i\\�`�[��\\-s_0.2_0.2_dinosaur-skin3.png";
   }
  }
  Material {
   0.800000;0.784000;0.772000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.600000;0.588000;0.579000;;
   TextureFilename {
    "Eye.png";
   }
  }
  Material {
   0.455200;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.784000;0.674400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.490000;0.421500;;
  }
  Material {
   0.649600;0.649600;0.649600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.406000;0.406000;0.406000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���̍�i\\�`�[��\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���̍�i\\�`�[��\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\���̍�i\\�`�[��\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
 }
 MeshNormals {
  157;
  -0.917718;0.203492;0.341151;,
  -0.886736;0.359086;-0.291130;,
  -0.937212;0.334562;-0.098499;,
  -0.877684;0.341500;-0.336229;,
  -0.669527;-0.270092;0.691942;,
  -0.387758;-0.394780;0.832942;,
  -0.410936;-0.515472;0.751944;,
  -0.825121;-0.203707;0.526952;,
  -0.935523;0.176720;0.305887;,
  -0.929129;0.205693;0.307260;,
  -0.908934;0.218730;-0.354958;,
  -0.967401;0.230287;-0.105374;,
  -0.790364;-0.090635;-0.605897;,
  -0.875941;0.023333;-0.481854;,
  -0.772541;-0.033541;-0.634078;,
  -0.585184;-0.171402;-0.792579;,
  -0.972351;0.033161;-0.231157;,
  -0.983197;0.101658;-0.151625;,
  -0.943951;0.026254;0.329040;,
  -0.903339;-0.046437;0.426405;,
  -0.877180;-0.093258;0.471019;,
  -0.603948;-0.242797;0.759142;,
  -0.692758;-0.166649;-0.701652;,
  -0.953662;-0.041511;-0.298002;,
  -0.372391;-0.231024;-0.898862;,
  0.899587;-0.104493;-0.424058;,
  0.910088;-0.107933;-0.400113;,
  0.937079;-0.261545;0.231251;,
  0.842675;-0.356680;0.403334;,
  0.919431;-0.280976;0.275133;,
  -0.526394;-0.471363;0.707620;,
  -0.829709;-0.285963;0.479383;,
  -0.883848;-0.039849;0.466073;,
  -0.475811;-0.605004;0.638415;,
  -0.938066;-0.165651;-0.304289;,
  -0.622167;-0.232424;-0.747588;,
  -0.608353;-0.500036;-0.616337;,
  -0.918822;-0.312350;-0.241253;,
  -0.215110;-0.239479;-0.946772;,
  -0.219352;-0.563091;-0.796752;,
  0.903001;-0.215301;-0.371798;,
  0.874465;-0.359786;-0.325369;,
  0.923706;-0.238140;0.300094;,
  0.839948;-0.310264;0.445224;,
  0.875332;-0.093057;0.474482;,
  0.946410;-0.088166;0.310702;,
  -0.492244;0.446080;0.747468;,
  -0.897290;0.178177;0.403885;,
  -0.871013;0.023454;0.490700;,
  -0.481837;0.257906;0.837447;,
  -0.902280;-0.382873;-0.198238;,
  -0.581097;-0.670631;-0.461064;,
  -0.593204;-0.643951;-0.483152;,
  -0.910322;-0.367654;-0.190115;,
  0.117834;-0.809342;-0.575396;,
  -0.202787;-0.758982;-0.618727;,
  0.845624;-0.452817;-0.282625;,
  0.861453;-0.413740;-0.294480;,
  0.951892;0.077712;0.296417;,
  0.812295;0.259307;0.522433;,
  0.624251;0.188216;0.758212;,
  0.938436;-0.048583;0.342021;,
  -0.526654;-0.223625;0.820139;,
  -0.813272;-0.251213;0.524863;,
  -0.834583;-0.547693;-0.059188;,
  -0.542902;-0.784002;-0.300995;,
  0.448830;-0.853073;-0.266117;,
  0.779105;-0.601916;-0.175192;,
  0.873040;-0.343016;0.346613;,
  -0.073196;0.338424;0.938143;,
  -0.942940;0.165008;0.289199;,
  -0.877557;0.187361;-0.441349;,
  -0.878560;-0.400897;0.259643;,
  -0.987686;-0.146134;0.055862;,
  -0.972006;-0.198844;0.125159;,
  -0.969023;-0.214012;0.123261;,
  -0.973600;-0.182072;0.137666;,
  -0.987622;0.047006;0.149642;,
  -0.992121;-0.040664;0.118503;,
  -0.981703;0.098029;0.163247;,
  -0.969386;0.181029;0.165892;,
  -0.954944;0.247999;0.163028;,
  0.978161;-0.181980;-0.100422;,
  0.983783;-0.158661;-0.083652;,
  0.981793;-0.180417;-0.059431;,
  0.979606;-0.196380;-0.042510;,
  0.969577;-0.233507;-0.073443;,
  0.967801;-0.250514;-0.024569;,
  0.871369;-0.475924;0.119214;,
  -0.579113;-0.680186;-0.449416;,
  -0.905637;-0.373156;-0.201438;,
  -0.996244;-0.044999;0.073982;,
  -0.874680;0.330555;0.354499;,
  -0.514442;0.591757;0.620622;,
  -0.195224;0.657631;0.727605;,
  0.955908;0.146514;0.254508;,
  0.980383;-0.184542;-0.069237;,
  0.843939;-0.452724;-0.287765;,
  0.749963;-0.544642;-0.375395;,
  0.879820;0.468418;-0.080632;,
  0.821935;0.310251;-0.477668;,
  0.648021;0.156101;-0.745454;,
  0.647905;0.181246;-0.739844;,
  0.812276;0.101919;-0.574300;,
  0.955090;0.030128;-0.294781;,
  0.994949;0.049441;-0.087356;,
  0.994767;0.071500;0.072975;,
  0.983351;0.132826;0.124006;,
  0.911905;0.279526;0.300491;,
  0.524699;0.525858;0.669451;,
  0.660056;0.166848;0.732454;,
  0.738716;0.033606;0.673179;,
  0.898890;0.436945;-0.032800;,
  0.862056;0.506649;0.012859;,
  0.866545;0.498903;-0.013973;,
  -0.349703;-0.826114;0.441863;,
  0.321420;-0.863385;0.388915;,
  0.559519;-0.765753;0.317114;,
  0.477120;-0.838422;0.263447;,
  0.460703;-0.876362;0.140511;,
  0.077894;-0.991225;0.106794;,
  -0.343333;-0.927411;0.148426;,
  -0.468803;-0.855244;0.220865;,
  -0.583335;-0.730941;0.354183;,
  -0.468232;-0.777604;0.419632;,
  0.820162;0.008683;-0.572066;,
  0.863611;-0.103398;-0.493443;,
  0.930680;-0.172845;0.322428;,
  -0.287005;-0.342437;0.894631;,
  0.808592;-0.412285;-0.419762;,
  0.848056;-0.232805;-0.476028;,
  -0.185943;-0.560605;0.806937;,
  -0.151968;-0.689984;0.707692;,
  0.768622;-0.516126;-0.377935;,
  0.777354;-0.496250;-0.386597;,
  -0.142220;0.519634;0.842469;,
  -0.114112;0.392582;0.912610;,
  -0.534131;0.597543;0.598036;,
  -0.222841;0.678633;0.699857;,
  0.850906;0.294552;0.434969;,
  -0.234773;-0.801822;-0.549512;,
  0.883674;-0.299810;0.359492;,
  -0.205684;-0.753239;-0.624760;,
  0.711960;0.701953;-0.019390;,
  0.792925;0.447216;-0.413844;,
  0.689887;0.148619;-0.708497;,
  0.689484;0.186182;-0.699963;,
  0.706161;0.519956;0.480606;,
  0.376543;0.654257;0.655869;,
  0.478167;0.285630;0.830525;,
  0.661769;-0.137572;0.736978;,
  0.724906;0.685609;0.066719;,
  0.889025;0.451358;-0.076883;,
  0.717850;0.694059;0.054540;,
  0.713848;0.698271;0.053289;,
  0.714735;0.698977;0.024185;,
  -0.173029;-0.644686;0.744608;;
  131;
  4;4,5,6,7;,
  4;70,8,0,9;,
  4;10,1,3,71;,
  4;11,2,1,10;,
  4;12,13,14,15;,
  4;16,17,13,12;,
  4;4,7,18,19;,
  4;4,19,20,21;,
  4;16,12,22,23;,
  4;12,15,24,22;,
  4;125,25,26,126;,
  4;27,127,28,29;,
  4;5,4,21,128;,
  4;30,31,32,33;,
  4;34,35,36,37;,
  4;35,38,39,36;,
  4;129,130,40,41;,
  4;42,43,44,45;,
  4;131,30,33,132;,
  4;46,47,48,49;,
  4;50,51,52,53;,
  4;51,54,55,52;,
  4;133,56,57,134;,
  4;58,59,60,61;,
  4;135,46,49,136;,
  4;18,7,8,70;,
  4;13,17,11,10;,
  4;14,13,10,71;,
  4;73,50,53,74;,
  4;75,34,37,76;,
  4;77,16,23,78;,
  4;77,79,17,16;,
  4;11,17,79,80;,
  4;80,81,2,11;,
  4;80,70,9,81;,
  4;79,18,70,80;,
  4;19,18,79,77;,
  4;20,19,77,78;,
  4;31,75,76,32;,
  4;48,47,73,74;,
  4;26,25,82,83;,
  4;40,84,85,41;,
  4;57,56,86,87;,
  4;86,58,61,87;,
  4;84,42,45,85;,
  4;82,27,29,83;,
  4;22,24,38,35;,
  4;23,22,35,34;,
  4;78,23,34,75;,
  4;31,20,78,75;,
  4;21,20,31,30;,
  4;128,21,30,131;,
  4;29,28,43,42;,
  4;83,29,42,84;,
  4;40,26,83,84;,
  4;126,26,40,130;,
  4;37,36,89,90;,
  4;91,76,37,90;,
  4;92,32,76,91;,
  4;137,32,92,93;,
  4;94,138,137,93;,
  4;45,44,139,95;,
  4;96,85,45,95;,
  4;97,41,85,96;,
  4;98,129,41,97;,
  4;89,36,39,140;,
  4;90,89,51,50;,
  4;91,90,50,73;,
  4;47,92,91,73;,
  4;93,92,47,46;,
  4;94,93,46,135;,
  4;95,139,59,58;,
  4;96,95,58,86;,
  4;56,97,96,86;,
  4;98,97,56,54;,
  4;89,140,54,51;,
  4;53,52,65,64;,
  4;74,53,64,72;,
  4;63,48,74,72;,
  4;49,48,63,62;,
  4;60,49,62,69;,
  4;61,60,141,68;,
  4;87,61,68,88;,
  4;67,57,87,88;,
  4;134,57,67,66;,
  4;52,55,142,65;,
  4;143,99,100,144;,
  4;144,100,101,145;,
  4;145,101,102,146;,
  4;146,102,103,125;,
  4;125,103,104,25;,
  4;25,104,105,82;,
  4;82,105,106,27;,
  4;27,106,107,127;,
  4;127,107,108,147;,
  3;147,109,148;,
  3;148,109,149;,
  4;149,110,111,150;,
  4;151,152,112,153;,
  4;153,112,113,154;,
  4;154,113,114,155;,
  4;155,114,99,143;,
  3;109,110,149;,
  3;147,108,109;,
  4;99,104,103,100;,
  4;104,99,114,105;,
  4;105,114,113,106;,
  4;106,113,112,107;,
  4;100,103,102,101;,
  3;110,109,108;,
  3;107,112,108;,
  3;112,152,108;,
  3;111,110,108;,
  3;118,117,119;,
  3;117,116,119;,
  3;119,116,120;,
  3;116,115,120;,
  3;120,115,121;,
  3;115,124,121;,
  3;121,124,122;,
  3;124,123,122;,
  4;62,115,116,156;,
  4;141,116,117,68;,
  4;68,117,118,88;,
  4;88,118,119,67;,
  4;67,119,120,66;,
  4;66,120,121,65;,
  4;65,121,122,64;,
  4;64,122,123,72;,
  4;72,123,124,63;,
  4;63,124,115,62;;
 }
 MeshTextureCoords {
  125;
  0.609527;0.561417;,
  0.630171;0.572809;,
  0.651600;0.530085;,
  0.647603;0.503501;,
  0.577354;0.475461;,
  0.627362;0.479929;,
  0.642112;0.410100;,
  0.593470;0.390119;,
  0.410025;0.476899;,
  0.439739;0.383264;,
  0.401963;0.390599;,
  0.372339;0.482979;,
  0.464631;0.472466;,
  0.496633;0.371859;,
  0.395794;0.578581;,
  0.400999;0.522600;,
  0.365060;0.538592;,
  0.368185;0.602059;,
  0.447601;0.570454;,
  0.454976;0.518082;,
  0.568702;0.518577;,
  0.561368;0.562161;,
  0.552931;0.602934;,
  0.600591;0.600293;,
  0.400737;0.625571;,
  0.444500;0.618931;,
  0.383959;0.645114;,
  0.420462;0.626451;,
  0.427383;0.649774;,
  0.559052;0.607035;,
  0.610265;0.605880;,
  0.548249;0.626859;,
  0.583813;0.642433;,
  0.538389;0.639461;,
  0.514741;0.683057;,
  0.545742;0.680312;,
  0.447575;0.652069;,
  0.403808;0.668844;,
  0.413574;0.714664;,
  0.453161;0.700220;,
  0.396611;0.680752;,
  0.410580;0.723469;,
  0.433822;0.675199;,
  0.455335;0.719092;,
  0.537524;0.651734;,
  0.588122;0.644636;,
  0.556269;0.678140;,
  0.529225;0.691956;,
  0.582299;0.717735;,
  0.558968;0.729098;,
  0.570448;0.752140;,
  0.593880;0.740954;,
  0.510057;0.750576;,
  0.482966;0.764289;,
  0.506534;0.783878;,
  0.530337;0.770564;,
  0.479881;0.769948;,
  0.503660;0.788720;,
  0.504519;0.760751;,
  0.525335;0.778547;,
  0.563541;0.732129;,
  0.586381;0.717009;,
  0.596003;0.742389;,
  0.573706;0.754946;,
  0.533645;0.740195;,
  0.550528;0.760300;,
  0.487797;0.647959;,
  0.486178;0.689659;,
  0.506318;0.565360;,
  0.499725;0.609773;,
  0.512564;0.516043;,
  0.521733;0.470353;,
  0.547040;0.375975;,
  0.480022;0.634443;,
  0.478770;0.657178;,
  0.476814;0.673724;,
  0.493851;0.711975;,
  0.532071;0.749440;,
  0.549014;0.767478;,
  0.450572;0.741551;,
  0.480769;0.726867;,
  0.507785;0.717058;,
  0.533079;0.708461;,
  0.562878;0.697111;,
  0.569499;0.694977;,
  0.543510;0.713151;,
  0.512083;0.732316;,
  0.478486;0.742234;,
  0.447834;0.748649;,
  0.526411;0.800435;,
  0.549090;0.790429;,
  0.566315;0.782675;,
  0.585017;0.778101;,
  0.607817;0.778336;,
  0.609814;0.781095;,
  0.585569;0.782319;,
  0.564365;0.789351;,
  0.542438;0.795530;,
  0.523377;0.805402;,
  0.452791;0.418506;,
  0.428985;0.423128;,
  0.410317;0.481344;,
  0.405730;0.516390;,
  0.407699;0.556385;,
  0.440643;0.571756;,
  0.478176;0.576792;,
  0.527979;0.559521;,
  0.572796;0.537952;,
  0.586300;0.511029;,
  0.624380;0.503151;,
  0.614539;0.479422;,
  0.580321;0.435417;,
  0.549668;0.422825;,
  0.520409;0.413913;,
  0.488644;0.411319;,
  0.567357;0.795902;,
  0.583327;0.790606;,
  0.550843;0.800556;,
  0.601587;0.789684;,
  0.536488;0.807990;,
  0.600083;0.787606;,
  0.538772;0.804250;,
  0.582911;0.787429;,
  0.555853;0.796714;,
  0.568826;0.790874;;
 }
}
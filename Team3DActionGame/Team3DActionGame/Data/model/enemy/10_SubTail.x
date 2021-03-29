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
 48;
 -31.04630;-4.70710;33.37830;,
 -23.23560;-36.94590;32.78970;,
 -22.23440;-33.82690;76.30470;,
 -30.44780;-5.93260;76.05920;,
 -33.75910;-2.32710;-2.90050;,
 -23.76580;-38.20610;0.01680;,
 -22.37980;27.22880;31.18330;,
 -23.56540;33.10280;-2.05640;,
 -20.63860;20.91510;75.00760;,
 -0.27540;37.84760;29.71120;,
 -0.27540;43.76620;-1.99360;,
 -0.27540;30.94250;73.98900;,
 -0.27540;-43.06150;31.40690;,
 -0.27540;-39.31000;75.36920;,
 -0.27540;-45.18820;-0.05970;,
 -19.20780;18.48910;145.61150;,
 -0.27540;27.51280;143.74400;,
 -27.23920;-4.40460;148.06190;,
 -21.15680;-29.92090;147.52330;,
 -0.27540;-35.29290;145.54691;,
 30.49540;-4.70710;33.37830;,
 29.89690;-5.93260;76.05920;,
 21.68350;-33.82690;76.30470;,
 22.68480;-36.94590;32.78970;,
 23.21490;-38.20610;0.01700;,
 33.20830;-2.32710;-2.90050;,
 23.01450;33.10280;-2.05640;,
 21.82890;27.22880;31.18330;,
 20.08770;20.91510;75.00760;,
 18.65690;18.48910;145.61150;,
 26.68830;-4.40460;148.06190;,
 20.60590;-29.92090;147.52330;,
 16.42810;-9.05920;-16.44200;,
 11.81130;-25.63470;-15.09420;,
 11.71880;7.30880;-16.05200;,
 0.68330;-28.86030;-15.12950;,
 0.68330;12.23500;-16.02300;,
 -9.89290;-25.63470;-15.09420;,
 -9.80030;7.30880;-16.05200;,
 -14.50970;-9.05920;-16.44200;,
 17.41440;-6.14020;154.73019;,
 12.40230;8.14700;153.20110;,
 13.61860;-22.06410;154.39420;,
 -0.27540;-25.41670;153.16080;,
 -0.27540;13.77830;152.03571;,
 -11.22780;8.14700;153.20110;,
 -12.44410;-22.06410;154.39420;,
 -16.23990;-6.14020;154.73019;;
 
 52;
 4;0,1,2,3;,
 4;0,4,5,1;,
 4;0,6,7,4;,
 4;0,3,8,6;,
 4;7,6,9,10;,
 4;6,8,11,9;,
 4;2,1,12,13;,
 4;14,12,1,5;,
 4;8,15,16,11;,
 4;3,17,15,8;,
 4;3,2,18,17;,
 4;19,18,2,13;,
 4;20,21,22,23;,
 4;22,13,12,23;,
 4;20,23,24,25;,
 4;12,14,24,23;,
 4;26,10,9,27;,
 4;20,25,26,27;,
 4;27,9,11,28;,
 4;20,27,28,21;,
 4;28,11,16,29;,
 4;21,28,29,30;,
 4;21,30,31,22;,
 4;19,13,22,31;,
 3;32,33,34;,
 3;33,35,34;,
 3;34,35,36;,
 3;35,37,36;,
 3;36,37,38;,
 3;37,39,38;,
 4;4,7,38,39;,
 4;7,10,36,38;,
 4;10,26,34,36;,
 4;26,25,32,34;,
 4;25,24,33,32;,
 4;24,14,35,33;,
 4;14,5,37,35;,
 4;5,4,39,37;,
 3;40,41,42;,
 3;42,41,43;,
 3;41,44,43;,
 3;44,45,43;,
 3;43,45,46;,
 3;45,47,46;,
 4;18,19,43,46;,
 4;19,31,42,43;,
 4;31,30,40,42;,
 4;30,29,41,40;,
 4;29,16,44,41;,
 4;16,15,45,44;,
 4;15,17,47,45;,
 4;17,18,46,47;;
 
 MeshMaterialList {
  11;
  52;
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
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\他の作品\\チーム\\-s_0.2_0.2_dinosaur-skin0.png";
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
    "C:\\Users\\student\\Desktop\\他の作品\\チーム\\-s_0.2_0.2_dinosaur-skin3.png";
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
    "C:\\Users\\student\\Desktop\\他の作品\\チーム\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\他の作品\\チーム\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;
   TextureFilename {
    "C:\\Users\\student\\Desktop\\他の作品\\チーム\\-s_0.333333_1_dinosaur-skin-texture-600w-256919422.png";
   }
  }
 }
 MeshNormals {
  61;
  -0.000222;-0.925185;-0.379517;,
  -0.877661;-0.267683;-0.397564;,
  -0.967418;-0.080688;-0.239983;,
  -0.755061;0.640380;0.140699;,
  -0.998530;0.017231;0.051394;,
  -0.966551;-0.254589;0.031033;,
  -0.752733;0.646792;0.122692;,
  -0.998733;0.033372;0.037657;,
  -0.965558;-0.258369;0.030713;,
  0.000000;-0.997585;0.069457;,
  -0.746355;0.661588;0.072501;,
  -0.855050;0.056932;0.515410;,
  -0.840758;-0.225673;0.492136;,
  0.000001;0.985059;0.172219;,
  0.000001;0.994752;0.102318;,
  -0.001099;-0.881377;0.472413;,
  0.000000;-0.997680;0.068086;,
  -0.001565;0.846478;0.532421;,
  -0.724516;0.587237;0.360873;,
  0.000001;0.982419;0.186687;,
  0.712664;-0.452707;-0.535880;,
  0.860285;-0.229251;0.455362;,
  0.916682;-0.011322;-0.399457;,
  0.755061;0.640380;0.140700;,
  0.875087;0.056154;0.480697;,
  0.965558;-0.258368;0.030713;,
  0.998530;0.017232;0.051394;,
  0.998733;0.033372;0.037657;,
  0.966552;-0.254588;0.031033;,
  0.752733;0.646792;0.122693;,
  0.746355;0.661587;0.072501;,
  0.612116;0.602713;0.511909;,
  -0.348393;-0.032767;-0.936776;,
  -0.134055;0.133910;-0.981885;,
  -0.001030;0.149885;-0.988703;,
  0.120171;0.107499;-0.986916;,
  0.390436;-0.032723;-0.920048;,
  0.192797;-0.269887;-0.943393;,
  -0.002469;-0.301083;-0.953595;,
  -0.135339;-0.210216;-0.968242;,
  -0.079187;-0.186559;0.979247;,
  0.003853;-0.192386;0.981312;,
  0.100884;-0.193749;0.975850;,
  0.333882;0.052288;0.941163;,
  0.063104;0.187243;0.980285;,
  0.001855;0.280755;0.959778;,
  -0.046404;0.179929;0.982584;,
  -0.284148;0.051119;0.957417;,
  -0.243474;-0.967565;0.067367;,
  -0.257425;-0.964056;0.065791;,
  -0.258830;-0.891783;-0.371120;,
  -0.179176;-0.866459;0.465988;,
  0.243475;-0.967565;0.067367;,
  0.257425;-0.964056;0.065791;,
  0.269533;-0.961533;0.052972;,
  0.176831;-0.868141;0.463749;,
  -0.526113;0.171219;-0.833000;,
  -0.361102;0.288877;-0.886654;,
  0.000437;0.406517;-0.913643;,
  0.386738;0.302773;-0.871070;,
  -0.162499;0.503857;0.848365;;
  52;
  4;4,5,8,7;,
  4;4,2,1,5;,
  4;4,6,3,2;,
  4;4,7,10,6;,
  4;3,6,13,19;,
  4;6,10,14,13;,
  4;48,49,16,9;,
  4;0,16,49,50;,
  4;10,18,17,14;,
  4;7,11,18,10;,
  4;7,8,12,11;,
  4;15,51,48,9;,
  4;26,27,25,28;,
  4;52,9,16,53;,
  4;26,28,20,22;,
  4;16,0,54,53;,
  4;23,19,13,29;,
  4;26,22,23,29;,
  4;29,13,14,30;,
  4;26,29,30,27;,
  4;30,14,17,31;,
  4;27,30,31,24;,
  4;27,24,21,25;,
  4;15,9,52,55;,
  3;36,37,35;,
  3;37,38,35;,
  3;35,38,34;,
  3;38,39,34;,
  3;34,39,33;,
  3;39,32,33;,
  4;56,57,33,32;,
  4;57,58,34,33;,
  4;58,59,35,34;,
  4;59,22,36,35;,
  4;22,20,37,36;,
  4;20,0,38,37;,
  4;0,50,39,38;,
  4;1,2,32,39;,
  3;43,44,42;,
  3;42,44,41;,
  3;44,45,41;,
  3;45,46,41;,
  3;41,46,40;,
  3;46,47,40;,
  4;51,15,41,40;,
  4;15,55,42,41;,
  4;21,24,43,42;,
  4;24,31,44,43;,
  4;31,17,45,44;,
  4;17,60,46,45;,
  4;18,11,47,46;,
  4;11,12,40,47;;
 }
 MeshTextureCoords {
  48;
  0.448386;0.507662;,
  0.448677;0.560141;,
  0.377854;0.555064;,
  0.378953;0.509657;,
  0.507591;0.503788;,
  0.501997;0.562193;,
  0.451215;0.455676;,
  0.505350;0.446115;,
  0.379827;0.465954;,
  0.451725;0.438391;,
  0.503264;0.428756;,
  0.379748;0.449631;,
  0.448969;0.570096;,
  0.377504;0.563990;,
  0.500121;0.573558;,
  0.264932;0.469903;,
  0.266355;0.455214;,
  0.261633;0.507170;,
  0.261990;0.548706;,
  0.263424;0.557451;,
  0.443143;0.507662;,
  0.373812;0.509657;,
  0.374112;0.555064;,
  0.444765;0.560141;,
  0.497995;0.562193;,
  0.501886;0.503788;,
  0.501382;0.446115;,
  0.447449;0.455676;,
  0.376357;0.465954;,
  0.261706;0.469903;,
  0.257038;0.507170;,
  0.258432;0.548706;,
  0.525328;0.514747;,
  0.523531;0.541729;,
  0.525096;0.488103;,
  0.524536;0.546979;,
  0.525989;0.480084;,
  0.525380;0.541729;,
  0.526929;0.488103;,
  0.527964;0.514747;,
  0.246988;0.509995;,
  0.249901;0.486738;,
  0.247858;0.535916;,
  0.251047;0.541374;,
  0.252876;0.477571;,
  0.251914;0.486738;,
  0.250078;0.535916;,
  0.249856;0.509995;;
 }
}

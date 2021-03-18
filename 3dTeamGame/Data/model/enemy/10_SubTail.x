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
 -3.10463;0.05575;3.33777;,
 -2.32356;-3.16813;3.27892;,
 -2.22344;-2.85623;7.63041;,
 -3.04478;-0.06680;7.60586;,
 -3.37591;0.29375;-0.29011;,
 -2.37658;-3.29415;0.00163;,
 -2.23798;3.24934;3.11828;,
 -2.35654;3.83674;-0.20570;,
 -2.06386;2.61797;7.50071;,
 -0.02754;4.31122;2.97105;,
 -0.02754;4.90308;-0.19942;,
 -0.02754;3.62071;7.39885;,
 -0.02754;-3.77969;3.14062;,
 -0.02754;-3.40454;7.53688;,
 -0.02754;-3.99236;-0.00603;,
 -1.92078;2.37537;14.56110;,
 -0.02754;3.27774;14.37436;,
 -2.72392;0.08600;14.80614;,
 -2.11568;-2.46563;14.75229;,
 -0.02754;-3.00283;14.55464;,
 3.04954;0.05575;3.33777;,
 2.98969;-0.06680;7.60586;,
 2.16835;-2.85623;7.63041;,
 2.26848;-3.16813;3.27892;,
 2.32149;-3.29415;0.00164;,
 3.32083;0.29375;-0.29011;,
 2.30145;3.83674;-0.20570;,
 2.18289;3.24934;3.11828;,
 2.00877;2.61797;7.50071;,
 1.86569;2.37537;14.56110;,
 2.66883;0.08600;14.80614;,
 2.06059;-2.46563;14.75229;,
 1.64281;-0.37946;-1.64425;,
 1.18113;-2.03701;-1.50948;,
 1.17188;1.25734;-1.60526;,
 0.06833;-2.35957;-1.51302;,
 0.06833;1.74996;-1.60235;,
 -0.98929;-2.03701;-1.50948;,
 -0.98003;1.25734;-1.60526;,
 -1.45097;-0.37946;-1.64425;,
 1.74144;-0.08756;15.47298;,
 1.24023;1.34116;15.32006;,
 1.36186;-1.67995;15.43937;,
 -0.02754;-2.01521;15.31603;,
 -0.02754;1.90429;15.20353;,
 -1.12278;1.34116;15.32006;,
 -1.24441;-1.67995;15.43937;,
 -1.62399;-0.08756;15.47298;;
 
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
  -0.000222;-0.925185;-0.379516;,
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
  -0.855051;0.056933;0.515410;,
  -0.840758;-0.225673;0.492136;,
  0.000001;0.985059;0.172218;,
  0.000001;0.994752;0.102317;,
  -0.001099;-0.881376;0.472414;,
  0.000000;-0.997679;0.068086;,
  -0.001565;0.846478;0.532422;,
  -0.724515;0.587238;0.360872;,
  0.000001;0.982419;0.186687;,
  0.712664;-0.452706;-0.535879;,
  0.860284;-0.229251;0.455362;,
  0.916682;-0.011322;-0.399457;,
  0.755061;0.640380;0.140700;,
  0.875087;0.056154;0.480696;,
  0.965558;-0.258368;0.030713;,
  0.998530;0.017232;0.051394;,
  0.998733;0.033372;0.037657;,
  0.966552;-0.254588;0.031033;,
  0.752733;0.646792;0.122693;,
  0.746355;0.661587;0.072501;,
  0.612117;0.602713;0.511908;,
  -0.348395;-0.032768;-0.936775;,
  -0.134054;0.133909;-0.981885;,
  -0.001031;0.149886;-0.988703;,
  0.120173;0.107499;-0.986916;,
  0.390438;-0.032724;-0.920047;,
  0.192802;-0.269887;-0.943392;,
  -0.002469;-0.301083;-0.953595;,
  -0.135343;-0.210216;-0.968241;,
  -0.079181;-0.186560;0.979248;,
  0.003853;-0.192385;0.981312;,
  0.100878;-0.193749;0.975851;,
  0.333876;0.052289;0.941166;,
  0.063101;0.187243;0.980285;,
  0.001855;0.280754;0.959778;,
  -0.046401;0.179929;0.982585;,
  -0.284141;0.051120;0.957419;,
  -0.243474;-0.967565;0.067367;,
  -0.257424;-0.964056;0.065791;,
  -0.258832;-0.891783;-0.371119;,
  -0.179176;-0.866459;0.465989;,
  0.243475;-0.967565;0.067367;,
  0.257425;-0.964056;0.065791;,
  0.269533;-0.961533;0.052972;,
  0.176830;-0.868140;0.463750;,
  -0.526113;0.171217;-0.833001;,
  -0.361101;0.288876;-0.886655;,
  0.000437;0.406517;-0.913643;,
  0.386737;0.302772;-0.871070;,
  -0.162502;0.503854;0.848366;;
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
  0.548627;0.499207;,
  0.547500;0.545074;,
  0.609351;0.540636;,
  0.609308;0.500950;,
  0.497131;0.495821;,
  0.500908;0.546867;,
  0.545183;0.453771;,
  0.497952;0.445414;,
  0.607447;0.462753;,
  0.542266;0.438663;,
  0.497174;0.430242;,
  0.605240;0.448487;,
  0.544677;0.553775;,
  0.607203;0.548437;,
  0.499925;0.556800;,
  0.707810;0.466205;,
  0.704449;0.453367;,
  0.711594;0.498776;,
  0.710601;0.535079;,
  0.707013;0.542722;,
  0.546336;0.499207;,
  0.607060;0.500950;,
  0.607715;0.540636;,
  0.545789;0.545074;,
  0.499159;0.546867;,
  0.494637;0.495821;,
  0.496217;0.445414;,
  0.543536;0.453771;,
  0.605930;0.462753;,
  0.706399;0.466205;,
  0.709585;0.498776;,
  0.709046;0.535079;,
  0.476003;0.505399;,
  0.478092;0.528981;,
  0.476733;0.482111;,
  0.478456;0.533570;,
  0.477185;0.475103;,
  0.478900;0.528981;,
  0.477534;0.482111;,
  0.477155;0.505399;,
  0.719415;0.501246;,
  0.717427;0.480919;,
  0.719078;0.523901;,
  0.717841;0.528671;,
  0.716241;0.472907;,
  0.718307;0.480919;,
  0.720049;0.523901;,
  0.720668;0.501246;;
 }
}

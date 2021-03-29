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
 23;
 0.17590;-10.56860;-17.19960;,
 -8.03179;-10.56860;-12.90459;,
 -5.90388;-4.48876;-9.56403;,
 0.17590;-2.36086;-12.90459;,
 8.38359;-10.56860;-12.90459;,
 6.25566;-4.48876;-9.56403;,
 0.17590;0.37504;-0.01959;,
 8.38359;-2.36086;-0.01959;,
 -8.03179;-2.36086;-0.01959;,
 -5.90388;-4.48876;9.52486;,
 0.17590;-2.36086;12.86542;,
 6.25566;-4.48876;9.52486;,
 0.17590;-10.56860;17.16042;,
 8.38359;-10.56860;12.86542;,
 -8.03179;-10.56860;12.86542;,
 -10.76768;-10.56860;-0.01959;,
 -8.03179;-10.56860;12.86542;,
 -5.90388;-4.48876;9.52486;,
 -8.03179;-2.36086;-0.01959;,
 11.11949;-10.56860;-0.01959;,
 8.38359;-2.36086;-0.01959;,
 8.38359;-10.56860;12.86542;,
 6.25566;-4.48876;9.52486;;
 
 32;
 4;0,1,2,3;,
 4;4,0,3,5;,
 4;5,3,6,7;,
 4;3,2,8,6;,
 4;6,8,9,10;,
 4;7,6,10,11;,
 4;11,10,12,13;,
 4;10,9,14,12;,
 4;15,16,17,18;,
 4;1,15,18,2;,
 4;19,4,5,20;,
 4;21,19,20,22;,
 3;4,1,0;,
 4;4,19,15,1;,
 4;15,19,13,16;,
 3;16,13,12;,
 4;3,2,1,0;,
 4;5,3,0,4;,
 4;7,6,3,5;,
 4;6,8,2,3;,
 4;10,9,8,6;,
 4;11,10,6,7;,
 4;13,12,10,11;,
 4;12,14,9,10;,
 4;18,17,16,15;,
 4;2,18,15,1;,
 4;20,5,4,19;,
 4;22,20,19,21;,
 3;0,1,4;,
 4;1,15,19,4;,
 4;16,13,19,15;,
 3;12,13,16;;
 
 MeshMaterialList {
  1;
  32;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
   0.288800;0.144000;0.088000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.361000;0.180000;0.110000;;
  }
 }
 MeshNormals {
  36;
  0.634189;0.634187;-0.442280;,
  -0.634189;0.634187;-0.442280;,
  0.634189;0.634187;0.442280;,
  -0.634189;0.634187;0.442280;,
  0.707107;0.707106;-0.000000;,
  -0.730641;0.441732;0.520611;,
  0.730641;0.441733;0.520611;,
  -0.730641;0.441732;-0.520611;,
  0.000000;0.814405;-0.580297;,
  0.730641;0.441733;-0.520611;,
  -0.707108;0.707106;-0.000000;,
  0.000000;0.814404;0.580298;,
  0.000000;0.791861;-0.610701;,
  0.000000;1.000000;-0.000000;,
  0.000000;0.791861;0.610702;,
  -0.928753;0.370700;-0.000000;,
  0.928752;0.370701;-0.000000;,
  0.000000;-1.000000;0.000000;,
  -0.000000;-0.814405;0.580297;,
  0.634189;-0.634187;0.442280;,
  0.730641;-0.441732;0.520611;,
  -0.000000;-0.531790;0.846876;,
  -0.634189;-0.634187;0.442280;,
  -0.730641;-0.441733;0.520611;,
  -0.707107;-0.707106;0.000000;,
  -0.000000;-1.000000;0.000000;,
  0.707108;-0.707106;0.000000;,
  -0.000000;-0.814404;-0.580298;,
  0.634189;-0.634187;-0.442280;,
  -0.634189;-0.634187;-0.442280;,
  -0.730641;-0.441733;-0.520611;,
  -0.000000;-0.531790;-0.846876;,
  0.730641;-0.441732;-0.520611;,
  0.928753;-0.370700;0.000000;,
  -0.928752;-0.370701;0.000000;,
  0.000000;1.000000;0.000000;;
  32;
  4;12,7,1,8;,
  4;9,12,8,0;,
  4;0,8,13,4;,
  4;8,1,10,13;,
  4;13,10,3,11;,
  4;4,13,11,2;,
  4;2,11,14,6;,
  4;11,3,5,14;,
  4;15,5,3,10;,
  4;7,15,10,1;,
  4;16,9,0,4;,
  4;6,16,4,2;,
  3;17,17,17;,
  4;17,17,17,17;,
  4;17,17,17,17;,
  3;17,17,17;,
  4;18,19,20,21;,
  4;22,18,21,23;,
  4;24,25,18,22;,
  4;25,26,19,18;,
  4;27,28,26,25;,
  4;29,27,25,24;,
  4;30,31,27,29;,
  4;31,32,28,27;,
  4;26,28,32,33;,
  4;19,26,33,20;,
  4;24,22,23,34;,
  4;29,24,34,30;,
  3;12,35,35;,
  4;35,35,35,35;,
  4;35,35,35,35;,
  3;14,35,35;;
 }
 MeshTextureCoords {
  23;
  0.500000;0.875000;,
  0.625000;0.875000;,
  0.625000;0.750000;,
  0.500000;0.750000;,
  0.375000;0.875000;,
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
  0.750000;0.875000;,
  0.875000;0.875000;,
  0.875000;0.750000;,
  0.750000;0.750000;,
  0.250000;0.875000;,
  0.250000;0.750000;,
  0.125000;0.875000;,
  0.125000;0.750000;;
 }
}

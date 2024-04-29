xof 0303txt 0032

template Frame {
  <3d82ab46-62da-11cf-ab39-0020af71e433>
  [...]
}

template Matrix4x4 {
  <f6f23f45-7686-11cf-8f52-0040333594a3>
  array FLOAT matrix[16];
}

template FrameTransformMatrix {
  <f6f23f41-7686-11cf-8f52-0040333594a3>
  Matrix4x4 frameMatrix;
}

template Vector {
  <3d82ab5e-62da-11cf-ab39-0020af71e433>
  FLOAT x;
  FLOAT y;
  FLOAT z;
}

template MeshFace {
  <3d82ab5f-62da-11cf-ab39-0020af71e433>
  DWORD nFaceVertexIndices;
  array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
  <3d82ab44-62da-11cf-ab39-0020af71e433>
  DWORD nVertices;
  array Vector vertices[nVertices];
  DWORD nFaces;
  array MeshFace faces[nFaces];
  [...]
}

template MeshNormals {
  <f6f23f43-7686-11cf-8f52-0040333594a3>
  DWORD nNormals;
  array Vector normals[nNormals];
  DWORD nFaceNormals;
  array MeshFace faceNormals[nFaceNormals];
}

template Coords2d {
  <f6f23f44-7686-11cf-8f52-0040333594a3>
  FLOAT u;
  FLOAT v;
}

template MeshTextureCoords {
  <f6f23f40-7686-11cf-8f52-0040333594a3>
  DWORD nTextureCoords;
  array Coords2d textureCoords[nTextureCoords];
}

template ColorRGBA {
  <35ff44e0-6c7c-11cf-8f52-0040333594a3>
  FLOAT red;
  FLOAT green;
  FLOAT blue;
  FLOAT alpha;
}

template IndexedColor {
  <1630b820-7842-11cf-8f52-0040333594a3>
  DWORD index;
  ColorRGBA indexColor;
}

template MeshVertexColors {
  <1630b821-7842-11cf-8f52-0040333594a3>
  DWORD nVertexColors;
  array IndexedColor vertexColors[nVertexColors];
}

template VertexElement {
  <f752461c-1e23-48f6-b9f8-8350850f336f>
  DWORD Type;
  DWORD Method;
  DWORD Usage;
  DWORD UsageIndex;
}

template DeclData {
  <bf22e553-292c-4781-9fea-62bd554bdd93>
  DWORD nElements;
  array VertexElement Elements[nElements];
  DWORD nDWords;
  array DWORD data[nDWords];
}

Frame DXCC_ROOT {
  FrameTransformMatrix {
     1.0000000000000000, 0.0000000000000000, 0.0000000000000000, 0.0000000000000000,
    0.0000000000000000, 1.0000000000000000, 0.0000000000000000, 0.0000000000000000,
    0.0000000000000000, 0.0000000000000000, 1.0000000000000000, 0.0000000000000000,
    0.0000000000000000, 0.0000000000000000, 0.0000000000000000, 1.0000000000000000;;
  }

  Frame l6qvjkk7ut4k_obj {
    FrameTransformMatrix {
       1.0000000000000000, 0.0000000000000000, -0.0000000000000000, 0.0000000000000000,
      0.0000000000000000, 1.0000000000000000, -0.0000000000000000, 0.0000000000000000,
      -0.0000000000000000, -0.0000000000000000, 1.0000000000000000, -0.0000000000000000,
      0.0000000000000000, 0.0000000000000000, -0.0000000000000000, 1.0000000000000000;;
    }

    Frame Box011_002_Mesh_010 {
      FrameTransformMatrix {
         1.0000000000000000, 0.0000000000000000, -0.0000000000000000, 0.0000000000000000,
        0.0000000000000000, 1.0000000000000000, -0.0000000000000000, 0.0000000000000000,
        -0.0000000000000000, -0.0000000000000000, 1.0000000000000000, -0.0000000000000000,
        0.0000000000000000, 0.0000000000000000, -0.0000000000000000, 1.0000000000000000;;
      }

      Mesh Box011_002_Mesh_010_mShape {
        120;
        0.0668250024318695;0.0382370017468929;0.0560420006513596;,
        0.0656939968466759;0.0001029999984894;0.0845120027661324;,
        0.0440389998257160;0.0001029999984894;0.0796459987759590;,
        0.0440389998257160;0.0341029986739159;0.0558569990098476;,
        0.0440389998257160;0.0526820011436939;-0.0265330001711845;,
        0.0652090013027191;0.0564250014722347;-0.0296190008521080;,
        0.0664720013737679;0.0688429996371269;-0.0207240004092455;,
        0.0668009966611862;0.0452920012176037;-0.0546140000224113;,
        0.0652090013027191;0.0564250014722347;-0.0296190008521080;,
        0.0440389998257160;0.0526820011436939;-0.0265330001711845;,
        0.0440389998257160;0.0388269983232021;-0.0439549982547760;,
        0.0440389998257160;0.0540859997272491;0.0289229992777109;,
        0.0668250024318695;0.0382370017468929;0.0560420006513596;,
        0.0440389998257160;0.0341029986739159;0.0558569990098476;,
        0.0715700015425682;0.0001029999984894;-0.0696429982781410;,
        0.0668009966611862;0.0452920012176037;-0.0546140000224113;,
        0.0440389998257160;0.0388269983232021;-0.0439549982547760;,
        0.0440389998257160;0.0001029999984894;-0.0572340004146099;,
        0.0677350014448166;0.0658460035920143;-0.0013970000436530;,
        0.0652090013027191;0.0532720014452934;0.0313270017504692;,
        0.0440389998257160;0.0540859997272491;0.0289229992777109;,
        0.0440389998257160;0.0611989982426167;-0.0016309999627993;,
        0.0440389998257160;0.0540859997272491;0.0289229992777109;,
        0.0652090013027191;0.0532720014452934;0.0313270017504692;,
        0.0668250024318695;0.0382370017468929;0.0560420006513596;,
        0.0440389998257160;0.0341029986739159;0.0558569990098476;,
        0.0440389998257160;0.0001029999984894;0.0796459987759590;,
        0.0051959999836981;0.0001029999984894;0.0777439996600151;,
        0.0107410000637174;0.0323520004749298;0.0587509982287884;,
        0.0236850008368492;0.0486660003662109;-0.0278229992836714;,
        0.0440389998257160;0.0526820011436939;-0.0265330001711845;,
        0.0440389998257160;0.0611989982426167;-0.0016309999627993;,
        0.0174979995936155;0.0542050004005432;-0.0004339999868535;,
        0.0252899993211031;0.0396299995481968;-0.0404330007731915;,
        0.0440389998257160;0.0388269983232021;-0.0439549982547760;,
        0.0440389998257160;0.0526820011436939;-0.0265330001711845;,
        0.0236850008368492;0.0486660003662109;-0.0278229992836714;,
        0.0440389998257160;0.0540859997272491;0.0289229992777109;,
        0.0440389998257160;0.0341029986739159;0.0558569990098476;,
        0.0107410000637174;0.0323520004749298;0.0587509982287884;,
        0.0086599998176098;0.0496710017323494;0.0277950000017881;,
        0.0295359995216131;0.0001029999984894;-0.0545159988105297;,
        0.0440389998257160;0.0001029999984894;-0.0572340004146099;,
        0.0440389998257160;0.0388269983232021;-0.0439549982547760;,
        0.0252899993211031;0.0396299995481968;-0.0404330007731915;,
        0.0174979995936155;0.0542050004005432;-0.0004339999868535;,
        0.0440389998257160;0.0611989982426167;-0.0016309999627993;,
        0.0440389998257160;0.0540859997272491;0.0289229992777109;,
        0.0086599998176098;0.0496710017323494;0.0277950000017881;,
        0.0664720013737679;0.0688429996371269;-0.0207240004092455;,
        0.0677350014448166;0.0658460035920143;-0.0013970000436530;,
        0.0440389998257160;0.0611989982426167;-0.0016309999627993;,
        0.0440389998257160;0.0526820011436939;-0.0265330001711845;,
        0.0440389998257160;0.0001029999984894;0.0796459987759590;,
        0.0656939968466759;0.0001029999984894;0.0845120027661324;,
        0.0668250024318695;-0.0380310006439686;0.0560420006513596;,
        0.0440389998257160;-0.0338959991931915;0.0558569990098476;,
        0.0440389998257160;-0.0524760000407696;-0.0265330001711845;,
        0.0664720013737679;-0.0686369985342026;-0.0207240004092455;,
        0.0652090013027191;-0.0562190003693104;-0.0296190008521080;,
        0.0440389998257160;-0.0524760000407696;-0.0265330001711845;,
        0.0652090013027191;-0.0562190003693104;-0.0296190008521080;,
        0.0668009966611862;-0.0450860001146793;-0.0546140000224113;,
        0.0440389998257160;-0.0386210009455681;-0.0439549982547760;,
        0.0440389998257160;-0.0538799986243248;0.0289229992777109;,
        0.0440389998257160;-0.0338959991931915;0.0558569990098476;,
        0.0668250024318695;-0.0380310006439686;0.0560420006513596;,
        0.0440389998257160;-0.0386210009455681;-0.0439549982547760;,
        0.0668009966611862;-0.0450860001146793;-0.0546140000224113;,
        0.0715700015425682;0.0001029999984894;-0.0696429982781410;,
        0.0440389998257160;0.0001029999984894;-0.0572340004146099;,
        0.0440389998257160;-0.0538799986243248;0.0289229992777109;,
        0.0652090013027191;-0.0530660003423691;0.0313270017504692;,
        0.0677350014448166;-0.0656400024890900;-0.0013970000436530;,
        0.0440389998257160;-0.0609930008649826;-0.0016309999627993;,
        0.0440389998257160;-0.0538799986243248;0.0289229992777109;,
        0.0668250024318695;-0.0380310006439686;0.0560420006513596;,
        0.0652090013027191;-0.0530660003423691;0.0313270017504692;,
        0.0051959999836981;0.0001029999984894;0.0777439996600151;,
        0.0440389998257160;0.0001029999984894;0.0796459987759590;,
        0.0440389998257160;-0.0338959991931915;0.0558569990098476;,
        0.0107410000637174;-0.0321450009942055;0.0587509982287884;,
        0.0236850008368492;-0.0484599992632866;-0.0278229992836714;,
        0.0174979995936155;-0.0539989992976189;-0.0004339999868535;,
        0.0440389998257160;-0.0609930008649826;-0.0016309999627993;,
        0.0440389998257160;-0.0524760000407696;-0.0265330001711845;,
        0.0252899993211031;-0.0394239984452724;-0.0404330007731915;,
        0.0236850008368492;-0.0484599992632866;-0.0278229992836714;,
        0.0440389998257160;-0.0524760000407696;-0.0265330001711845;,
        0.0440389998257160;-0.0386210009455681;-0.0439549982547760;,
        0.0107410000637174;-0.0321450009942055;0.0587509982287884;,
        0.0440389998257160;-0.0338959991931915;0.0558569990098476;,
        0.0440389998257160;-0.0538799986243248;0.0289229992777109;,
        0.0086599998176098;-0.0494650006294250;0.0277950000017881;,
        0.0295359995216131;0.0001029999984894;-0.0545159988105297;,
        0.0252899993211031;-0.0394239984452724;-0.0404330007731915;,
        0.0440389998257160;-0.0386210009455681;-0.0439549982547760;,
        0.0440389998257160;0.0001029999984894;-0.0572340004146099;,
        0.0174979995936155;-0.0539989992976189;-0.0004339999868535;,
        0.0086599998176098;-0.0494650006294250;0.0277950000017881;,
        0.0440389998257160;-0.0538799986243248;0.0289229992777109;,
        0.0440389998257160;-0.0609930008649826;-0.0016309999627993;,
        0.0664720013737679;-0.0686369985342026;-0.0207240004092455;,
        0.0440389998257160;-0.0524760000407696;-0.0265330001711845;,
        0.0440389998257160;-0.0609930008649826;-0.0016309999627993;,
        0.0677350014448166;-0.0656400024890900;-0.0013970000436530;,
        0.0107410000637174;0.0323520004749298;0.0587509982287884;,
        0.0051959999836981;0.0001029999984894;0.0777439996600151;,
        -0.0227799993008375;0.0001029999984894;0.0730959996581078;,
        -0.0148050002753735;0.0323520004749298;0.0545209981501102;,
        0.0107410000637174;0.0323520004749298;0.0587509982287884;,
        -0.0148050002753735;0.0323520004749298;0.0545209981501102;,
        0.0086599998176098;0.0496710017323494;0.0277950000017881;,
        0.0051959999836981;0.0001029999984894;0.0777439996600151;,
        0.0107410000637174;-0.0321450009942055;0.0587509982287884;,
        -0.0148050002753735;-0.0321450009942055;0.0545209981501102;,
        -0.0227799993008375;0.0001029999984894;0.0730959996581078;,
        0.0107410000637174;-0.0321450009942055;0.0587509982287884;,
        0.0086599998176098;-0.0494650006294250;0.0277950000017881;,
        -0.0148050002753735;-0.0321450009942055;0.0545209981501102;;
        32;
        4;3,2,1,0;,
        3;6,5,4;,
        4;10,9,8,7;,
        3;13,12,11;,
        4;17,16,15,14;,
        4;21,20,19,18;,
        3;24,23,22;,
        4;28,27,26,25;,
        4;32,31,30,29;,
        4;36,35,34,33;,
        4;40,39,38,37;,
        4;44,43,42,41;,
        4;48,47,46,45;,
        4;52,51,50,49;,
        4;56,55,54,53;,
        3;59,58,57;,
        4;63,62,61,60;,
        3;66,65,64;,
        4;70,69,68,67;,
        4;74,73,72,71;,
        3;77,76,75;,
        4;81,80,79,78;,
        4;85,84,83,82;,
        4;89,88,87,86;,
        4;93,92,91,90;,
        4;97,96,95,94;,
        4;101,100,99,98;,
        4;105,104,103,102;,
        4;109,108,107,106;,
        3;112,111,110;,
        4;116,115,114,113;,
        3;119,118,117;;

        MeshMaterialList {
          1;
          32;
          0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
          Material {
            1.0; 1.0; 1.0; 1.000000;;
            1.000000;
            0.000000; 0.000000; 0.000000;;
            0.000000; 0.000000; 0.000000;;
            TextureFilename { ""; }
          }
        }

        MeshNormals {
        120;
        0.1257999986410141;-0.7172999978065491;-0.6852999925613403;,
        0.1783999949693680;-0.0000000000000000;-0.9840000271797180;,
        0.0932999998331070;-0.0000000000000000;-0.9955999851226807;,
        0.0921000018715858;-0.7027000188827515;-0.7055000066757202;,
        0.2639000117778778;-0.8647000193595886;0.4273000061511993;,
        0.2833000123500824;-0.7067000269889832;0.6482999920845032;,
        0.3630000054836273;-0.8622999787330627;0.3531999886035919;,
        0.4126999974250793;-0.5356000065803528;0.7368000149726868;,
        0.2833000123500824;-0.7067000269889832;0.6482999920845032;,
        0.2639000117778778;-0.8647000193595886;0.4273000061511993;,
        0.2834999859333038;-0.5706999897956848;0.7706999778747559;,
        0.1068999990820885;-0.9151999950408936;-0.3885000050067902;,
        0.1257999986410141;-0.7172999978065491;-0.6852999925613403;,
        0.0921000018715858;-0.7027000188827515;-0.7055000066757202;,
        0.4460999965667725;0.0000000000000000;0.8949999809265137;,
        0.4126999974250793;-0.5356000065803528;0.7368000149726868;,
        0.2834999859333038;-0.5706999897956848;0.7706999778747559;,
        0.3237999975681305;-0.0000000000000000;0.9460999965667725;,
        0.2606999874114990;-0.9610000252723694;-0.0918999984860420;,
        0.0604999996721745;-0.9065999984741211;-0.4176000058650970;,
        0.1068999990820885;-0.9151999950408936;-0.3885000050067902;,
        0.2328999936580658;-0.9722999930381775;-0.0197000000625849;,
        0.1068999990820885;-0.9151999950408936;-0.3885000050067902;,
        0.0604999996721745;-0.9065999984741211;-0.4176000058650970;,
        0.1257999986410141;-0.7172999978065491;-0.6852999925613403;,
        0.0921000018715858;-0.7027000188827515;-0.7055000066757202;,
        0.0932999998331070;-0.0000000000000000;-0.9955999851226807;,
        0.0886000022292137;0.0000000000000000;-0.9961000084877014;,
        0.0693000033497810;-0.7008000016212463;-0.7099999785423279;,
        0.1632000058889389;-0.8792999982833862;0.4474000036716461;,
        0.2639000117778778;-0.8647000193595886;0.4273000061511993;,
        0.2328999936580658;-0.9722999930381775;-0.0197000000625849;,
        0.2002000063657761;-0.9796000123023987;0.0178999993950129;,
        0.1340000033378601;-0.6136999726295471;0.7781000137329102;,
        0.2834999859333038;-0.5706999897956848;0.7706999778747559;,
        0.2639000117778778;-0.8647000193595886;0.4273000061511993;,
        0.1632000058889389;-0.8792999982833862;0.4474000036716461;,
        0.1068999990820885;-0.9151999950408936;-0.3885000050067902;,
        0.0921000018715858;-0.7027000188827515;-0.7055000066757202;,
        0.0693000033497810;-0.7008000016212463;-0.7099999785423279;,
        0.1099999994039536;-0.9089000225067139;-0.4023000001907349;,
        0.1766999959945679;-0.0000000000000000;0.9843000173568726;,
        0.3237999975681305;-0.0000000000000000;0.9460999965667725;,
        0.2834999859333038;-0.5706999897956848;0.7706999778747559;,
        0.1340000033378601;-0.6136999726295471;0.7781000137329102;,
        0.2002000063657761;-0.9796000123023987;0.0178999993950129;,
        0.2328999936580658;-0.9722999930381775;-0.0197000000625849;,
        0.1068999990820885;-0.9151999950408936;-0.3885000050067902;,
        0.1099999994039536;-0.9089000225067139;-0.4023000001907349;,
        0.3630000054836273;-0.8622999787330627;0.3531999886035919;,
        0.2606999874114990;-0.9610000252723694;-0.0918999984860420;,
        0.2328999936580658;-0.9722999930381775;-0.0197000000625849;,
        0.2639000117778778;-0.8647000193595886;0.4273000061511993;,
        0.0932999998331070;-0.0000000000000000;-0.9955999851226807;,
        0.1783999949693680;-0.0000000000000000;-0.9840000271797180;,
        0.1257999986410141;0.7172999978065491;-0.6852999925613403;,
        0.0921000018715858;0.7027000188827515;-0.7055000066757202;,
        0.2639000117778778;0.8647000193595886;0.4273000061511993;,
        0.3630000054836273;0.8622999787330627;0.3531999886035919;,
        0.2833000123500824;0.7067000269889832;0.6482999920845032;,
        0.2639000117778778;0.8647000193595886;0.4273000061511993;,
        0.2833000123500824;0.7067000269889832;0.6482999920845032;,
        0.4126999974250793;0.5356000065803528;0.7368000149726868;,
        0.2834999859333038;0.5706999897956848;0.7706999778747559;,
        0.1068999990820885;0.9151999950408936;-0.3885000050067902;,
        0.0921000018715858;0.7027000188827515;-0.7055000066757202;,
        0.1257999986410141;0.7172999978065491;-0.6852999925613403;,
        0.2834999859333038;0.5706999897956848;0.7706999778747559;,
        0.4126999974250793;0.5356000065803528;0.7368000149726868;,
        0.4460999965667725;0.0000000000000000;0.8949999809265137;,
        0.3237999975681305;-0.0000000000000000;0.9460999965667725;,
        0.1068999990820885;0.9151999950408936;-0.3885000050067902;,
        0.0604999996721745;0.9065999984741211;-0.4176000058650970;,
        0.2606999874114990;0.9610000252723694;-0.0918999984860420;,
        0.2328999936580658;0.9722999930381775;-0.0197000000625849;,
        0.1068999990820885;0.9151999950408936;-0.3885000050067902;,
        0.1257999986410141;0.7172999978065491;-0.6852999925613403;,
        0.0604999996721745;0.9065999984741211;-0.4176000058650970;,
        0.0886000022292137;0.0000000000000000;-0.9961000084877014;,
        0.0932999998331070;-0.0000000000000000;-0.9955999851226807;,
        0.0921000018715858;0.7027000188827515;-0.7055000066757202;,
        0.0693000033497810;0.7008000016212463;-0.7099999785423279;,
        0.1632000058889389;0.8792999982833862;0.4474000036716461;,
        0.2002000063657761;0.9796000123023987;0.0178999993950129;,
        0.2328999936580658;0.9722999930381775;-0.0197000000625849;,
        0.2639000117778778;0.8647000193595886;0.4273000061511993;,
        0.1340000033378601;0.6136999726295471;0.7781000137329102;,
        0.1632000058889389;0.8792999982833862;0.4474000036716461;,
        0.2639000117778778;0.8647000193595886;0.4273000061511993;,
        0.2834999859333038;0.5706999897956848;0.7706999778747559;,
        0.0693000033497810;0.7008000016212463;-0.7099999785423279;,
        0.0921000018715858;0.7027000188827515;-0.7055000066757202;,
        0.1068999990820885;0.9151999950408936;-0.3885000050067902;,
        0.1099999994039536;0.9089000225067139;-0.4023000001907349;,
        0.1766999959945679;-0.0000000000000000;0.9843000173568726;,
        0.1340000033378601;0.6136999726295471;0.7781000137329102;,
        0.2834999859333038;0.5706999897956848;0.7706999778747559;,
        0.3237999975681305;-0.0000000000000000;0.9460999965667725;,
        0.2002000063657761;0.9796000123023987;0.0178999993950129;,
        0.1099999994039536;0.9089000225067139;-0.4023000001907349;,
        0.1068999990820885;0.9151999950408936;-0.3885000050067902;,
        0.2328999936580658;0.9722999930381775;-0.0197000000625849;,
        0.3630000054836273;0.8622999787330627;0.3531999886035919;,
        0.2639000117778778;0.8647000193595886;0.4273000061511993;,
        0.2328999936580658;0.9722999930381775;-0.0197000000625849;,
        0.2606999874114990;0.9610000252723694;-0.0918999984860420;,
        0.0693000033497810;-0.7008000016212463;-0.7099999785423279;,
        0.0886000022292137;0.0000000000000000;-0.9961000084877014;,
        0.1635999977588654;0.0000000000000000;-0.9865000247955322;,
        0.1207000017166138;-0.6750000119209290;-0.7279000282287598;,
        0.0693000033497810;-0.7008000016212463;-0.7099999785423279;,
        0.1207000017166138;-0.6750000119209290;-0.7279000282287598;,
        0.1099999994039536;-0.9089000225067139;-0.4023000001907349;,
        0.0886000022292137;0.0000000000000000;-0.9961000084877014;,
        0.0693000033497810;0.7008000016212463;-0.7099999785423279;,
        0.1207000017166138;0.6750000119209290;-0.7279000282287598;,
        0.1635999977588654;0.0000000000000000;-0.9865000247955322;,
        0.0693000033497810;0.7008000016212463;-0.7099999785423279;,
        0.1099999994039536;0.9089000225067139;-0.4023000001907349;,
        0.1207000017166138;0.6750000119209290;-0.7279000282287598;;
        32;
        4;3,2,1,0;,
        3;6,5,4;,
        4;10,9,8,7;,
        3;13,12,11;,
        4;17,16,15,14;,
        4;21,20,19,18;,
        3;24,23,22;,
        4;28,27,26,25;,
        4;32,31,30,29;,
        4;36,35,34,33;,
        4;40,39,38,37;,
        4;44,43,42,41;,
        4;48,47,46,45;,
        4;52,51,50,49;,
        4;56,55,54,53;,
        3;59,58,57;,
        4;63,62,61,60;,
        3;66,65,64;,
        4;70,69,68,67;,
        4;74,73,72,71;,
        3;77,76,75;,
        4;81,80,79,78;,
        4;85,84,83,82;,
        4;89,88,87,86;,
        4;93,92,91,90;,
        4;97,96,95,94;,
        4;101,100,99,98;,
        4;105,104,103,102;,
        4;109,108,107,106;,
        3;112,111,110;,
        4;116,115,114,113;,
        3;119,118,117;;
        }

        MeshTextureCoords {
        120;
        0.9821940064430237;0.6996870040893555;,
        0.9927179813385010;0.4739459753036499;,
        0.8725529909133911;0.4825090169906616;,
        0.8587599992752075;0.6777930259704590;,
        0.1532090008258820;0.1134729981422424;,
        0.2703360021114349;0.1266559958457947;,
        0.2921299934387207;0.0552859902381897;,
        0.2741490006446838;0.2445120215415955;,
        0.2703360021114349;0.1266559958457947;,
        0.1532090008258820;0.1134729981422424;,
        0.1402609944343567;0.2170069813728333;,
        0.8422150015830994;0.8379629850387573;,
        0.9821940064430237;0.6996870040893555;,
        0.8587599992752075;0.6777930259704590;,
        0.2337650060653687;0.4593830108642578;,
        0.2741490006446838;0.2445120215415955;,
        0.1402609944343567;0.2170069813728333;,
        0.0847560018301010;0.3989710211753845;,
        0.9510740041732788;0.9922260046005249;,
        0.9581189751625061;0.8351579904556274;,
        0.8422150015830994;0.8379629850387573;,
        0.8226659893989563;0.9684579968452454;,
        0.8422150015830994;0.8379629850387573;,
        0.9581189751625061;0.8351579904556274;,
        0.9821940064430237;0.6996870040893555;,
        0.8587599992752075;0.6777930259704590;,
        0.8725529909133911;0.4825090169906616;,
        0.6614549756050110;0.4739459753036499;,
        0.6806610226631165;0.6488319635391235;,
        0.0422450006008148;0.1152399778366089;,
        0.1532090008258820;0.1134729981422424;,
        0.1534280031919479;0.0067890286445618;,
        0.0043170000426471;0.0067890286445618;,
        0.0427750013768673;0.1878730058670044;,
        0.1402609944343567;0.2170069813728333;,
        0.1532090008258820;0.1134729981422424;,
        0.0422450006008148;0.1152399778366089;,
        0.8422150015830994;0.8379629850387573;,
        0.8587599992752075;0.6777930259704590;,
        0.6806610226631165;0.6488319635391235;,
        0.6501179933547974;0.8135160207748413;,
        0.0083419997245073;0.3787270188331604;,
        0.0847560018301010;0.3989710211753845;,
        0.1402609944343567;0.2170069813728333;,
        0.0427750013768673;0.1878730058670044;,
        0.6797019839286804;0.9308369755744934;,
        0.8226659893989563;0.9684579968452454;,
        0.8422150015830994;0.8379629850387573;,
        0.6501179933547974;0.8135160207748413;,
        0.2921299934387207;0.0552859902381897;,
        0.2832570075988770;0.0086820125579834;,
        0.1534280031919479;0.0067890286445618;,
        0.1532090008258820;0.1134729981422424;,
        0.1274469941854477;0.4825090169906616;,
        0.0072820000350475;0.4739459753036499;,
        0.0178059991449118;0.6996870040893555;,
        0.1412400007247925;0.6777930259704590;,
        0.4396159946918488;0.1337860226631165;,
        0.3006710112094879;0.0799679756164551;,
        0.3224489986896515;0.1475930213928223;,
        0.4396159946918488;0.1337860226631165;,
        0.3224489986896515;0.1475930213928223;,
        0.3244459927082062;0.2779380083084106;,
        0.4550909996032715;0.2400599718093872;,
        0.1577849984169006;0.8379620313644409;,
        0.1412400007247925;0.6777930259704590;,
        0.0178059991449118;0.6996870040893555;,
        0.4550909996032715;0.2400599718093872;,
        0.3244459927082062;0.2779380083084106;,
        0.3576050102710724;0.4594449996948242;,
        0.5049629807472229;0.3950340151786804;,
        0.1577849984169006;0.8379620313644409;,
        0.0418809987604618;0.8351579904556274;,
        0.0489259995520115;0.9922260046005249;,
        0.1773339956998825;0.9684579968452454;,
        0.1577849984169006;0.8379620313644409;,
        0.0178059991449118;0.6996870040893555;,
        0.0418809987604618;0.8351579904556274;,
        0.3385449945926666;0.4739459753036499;,
        0.1274469941854477;0.4825090169906616;,
        0.1412400007247925;0.6777930259704590;,
        0.3193390071392059;0.6488319635391235;,
        0.5520330071449280;0.1386870145797729;,
        0.5822569727897644;0.0109869837760925;,
        0.4327560067176819;0.0115309953689575;,
        0.4396159946918488;0.1337860226631165;,
        0.5534350275993347;0.2138519883155823;,
        0.5520330071449280;0.1386870145797729;,
        0.4396159946918488;0.1337860226631165;,
        0.4550909996032715;0.2400599718093872;,
        0.3193390071392059;0.6488319635391235;,
        0.1412400007247925;0.6777930259704590;,
        0.1577849984169006;0.8379620313644409;,
        0.3498820066452026;0.8135160207748413;,
        0.5818750262260437;0.3764179944992065;,
        0.5534350275993347;0.2138519883155823;,
        0.4550909996032715;0.2400599718093872;,
        0.5049629807472229;0.3950340151786804;,
        0.3202979862689972;0.9308369755744934;,
        0.3498820066452026;0.8135160207748413;,
        0.1577849984169006;0.8379620313644409;,
        0.1773339956998825;0.9684579968452454;,
        0.3006710112094879;0.0799679756164551;,
        0.4396159946918488;0.1337860226631165;,
        0.4327560067176819;0.0115309953689575;,
        0.3016830086708069;0.0109859704971313;,
        0.6806610226631165;0.6488319635391235;,
        0.6614549756050110;0.4739459753036499;,
        0.5072820186614990;0.4792699813842773;,
        0.5398880243301392;0.6536419987678528;,
        0.6806610226631165;0.6488319635391235;,
        0.5398880243301392;0.6536419987678528;,
        0.6501179933547974;0.8135160207748413;,
        0.3385449945926666;0.4739459753036499;,
        0.3193390071392059;0.6488319635391235;,
        0.4601120054721832;0.6536409854888916;,
        0.4927189946174622;0.4792699813842773;,
        0.3193390071392059;0.6488319635391235;,
        0.3498820066452026;0.8135160207748413;,
        0.4601120054721832;0.6536409854888916;;
        }
      }

    }

  }

}

Shader "Nyanowire/Wireframe Overlay (Shaded)"
{
	Properties
	{
        _MainTex ("MainTex", 2D) = "white" {}
		_BaseColor ("Base Color", Color) = (0.0, 0.0, 0.0, 0.0)
		_WireframeDrawDistance ("Fade Distance", float) = 1.7
        _Rainbow ("Wireframe Texture", 2D) = "white" {}
        _Speed ("Wireframe Texture Speed", Float ) = 0.1
        _WireThickness ("Wire Thickness", RANGE(0, 800)) = 300
		_WireSmoothness ("Wire Intensity", RANGE(0, 20)) = 20
		_MaxTriSize ("Max Tri Size", RANGE(0, 200)) = 25
	}

	SubShader
	{
		Tags {
			"RenderType"="Opaque"
		}

		Pass
		{
			// Wireframe shader based on the the following
			// http://developer.download.nvidia.com/SDK/10/direct3d/Source/SolidWireframe/Doc/SolidWireframe.pdf
            Cull False

			CGPROGRAM
			#pragma geometry geom
			#pragma fragment fragShaded
			#pragma vertex vert
            #include "UnityCG.cginc"
			#include "Wireframe.cginc"
			ENDCG
        }
	}
}

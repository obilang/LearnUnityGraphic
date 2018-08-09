﻿Shader "MyShader/Transparent" {
	Properties {
		_MainTex ("Texture", 2D) = "black" {}
	}
	SubShader {
		Tags { "Queue" = "Transparent" }
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off
		Pass {
			SetTexture [_MainTex] {Combine texture}
		}
	}
}

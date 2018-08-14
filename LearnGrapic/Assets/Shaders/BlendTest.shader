Shader "MyShader/BlendTest" {
	Properties {
		_MainTex ("Texture", 2D) = "black" {}
	}
	SubShader {
		Tags { "Queue" = "Transparent" }
		Blend OneMinusDstColor One
		Pass {
			SetTexture [_MainTex] {Combine texture}
		}
	}
}
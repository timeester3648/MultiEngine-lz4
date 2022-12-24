include "../../premake/common_premake_defines.lua"

project "lz4"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	cdialect "C17"
	targetname "%{prj.name}"
	inlining "Auto"

	files {
		"./lib/**.h",
		"./lib/**.c"
	}
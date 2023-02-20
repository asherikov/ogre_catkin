#-------------------------------------------------------------------
# This file is part of the CMake build system for OGRE
#     (Object-oriented Graphics Rendering Engine)
# For the latest info, see http://www.ogre3d.org/
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

# This file prints a summary of the selected build features.

set(_features "\n")
set(_features "${_features}----------------------------------------------------------------------------\n")
set(_features "${_features}  FEATURE SUMMARY\n")
set(_features "${_features}----------------------------------------------------------------------------\n\n")

#summarise components
if (OGRE_BUILD_COMPONENT_BITES)
	set(_components "${_components}  + Bites\n")
	if(Qt5_FOUND)
	set(_components "${_components}  + Bites Qt Support\n")
	endif()
endif ()
if (OGRE_BUILD_COMPONENT_BULLET)
	set(_components "${_components}  + Bullet\n")
endif()
if (OGRE_BUILD_COMPONENT_MESHLODGENERATOR)
	set(_components "${_components}  + MeshLodGenerator\n")
endif ()
if (OGRE_BUILD_COMPONENT_OVERLAY)
	set(_components "${_components}  + Overlay\n")

    if (OGRE_BUILD_COMPONENT_OVERLAY_IMGUI)
        set(_components "${_components}  + Overlay Dear Imgui\n")
    endif ()
endif ()
if (OGRE_BUILD_COMPONENT_PAGING)
	set(_components "${_components}  + Paging\n")
endif ()
if (OGRE_BUILD_COMPONENT_PROPERTY)
	set(_components "${_components}  + Property\n")
endif ()
if (OGRE_BUILD_COMPONENT_PYTHON)
	set(_components "${_components}  + Python [BETA]\n")
endif ()
if (OGRE_BUILD_COMPONENT_JAVA)
	set(_components "${_components}  + Java/ JNI [BETA]\n")
endif ()
if (OGRE_BUILD_COMPONENT_CSHARP)
	set(_components "${_components}  + C#/ .NET [BETA]\n")
endif ()
if (OGRE_BUILD_COMPONENT_RTSHADERSYSTEM)
	set(_components "${_components}  + RTShader System\n")

	if (OGRE_BUILD_RTSHADERSYSTEM_SHADERS)
		set(_components "${_components}  + RTShader System Shaders\n")
	endif ()
endif ()
if (OGRE_BUILD_COMPONENT_TERRAIN)
	set(_components "${_components}  + Terrain\n")
endif ()
if (OGRE_BUILD_COMPONENT_VOLUME)
	set(_components "${_components}  + Volume\n")
endif ()

if (DEFINED _components)
	set(_features "${_features}Building components:\n${_components}")
endif ()

# summarise plugins
if (OGRE_BUILD_PLUGIN_BSP)
	set(_plugins "${_plugins}  + BSP scene manager\n")
endif ()
if (OGRE_BUILD_PLUGIN_CG)
	set(_plugins "${_plugins}  + Cg program manager\n")
endif ()
if (OGRE_BUILD_PLUGIN_GLSLANG)
	set(_plugins "${_plugins}  + Glslang (SPIRV) program manager\n")
endif ()
if (OGRE_BUILD_PLUGIN_OCTREE)
	set(_plugins "${_plugins}  + Octree scene manager\n")
endif ()
if(OGRE_BUILD_PLUGIN_EXRCODEC)
	set(_plugins "${_plugins}  + OpenEXR image codec\n")
endif()
if (OGRE_BUILD_PLUGIN_STBI)
	set(_plugins "${_plugins}  + STBI codec (generic)\n")
endif ()
if (OGRE_BUILD_PLUGIN_FREEIMAGE)
	set(_plugins "${_plugins}  + FreeImage codec (generic)\n")
endif ()
if (OGRE_BUILD_PLUGIN_PCZ)
	set(_plugins "${_plugins}  + Portal connected zone scene manager\n")
endif ()
if (OGRE_BUILD_PLUGIN_PFX)
	set(_plugins "${_plugins}  + Particle FX\n")
endif ()
if (OGRE_BUILD_PLUGIN_DOT_SCENE)
	set(_plugins "${_plugins}  + DotScene loader\n")
endif ()
if (OGRE_BUILD_PLUGIN_ASSIMP)
	set(_plugins "${_plugins}  + Assimp loader (.obj, .ply, .fbx and more)\n")
endif ()

if (DEFINED _plugins)
	set(_features "${_features}Building plugins:\n${_plugins}")
endif ()

# summarise rendersystems
if (OGRE_BUILD_RENDERSYSTEM_D3D9)
	set(_rendersystems "${_rendersystems}  + Direct3D 9\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_D3D11)
	set(_rendersystems "${_rendersystems}  + Direct3D 11\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_GL)
	set(_rendersystems "${_rendersystems}  + OpenGL\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_GL3PLUS)
	set(_rendersystems "${_rendersystems}  + OpenGL 3+\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_GLES2)
	set(_rendersystems "${_rendersystems}  + OpenGL ES2/ ES3\n")
endif ()
if (OGRE_CONFIG_ENABLE_GLES2_GLSL_OPTIMISER)
	set(_rendersystems "${_rendersystems}  + OpenGL ES2 GLSL Optimiser\n")
endif ()
if (OGRE_CONFIG_ENABLE_GLES2_CG_SUPPORT)
	set(_rendersystems "${_rendersystems}  + OpenGL ES2 Cg Support\n")
endif ()
if (OGRE_CONFIG_ENABLE_GL_STATE_CACHE_SUPPORT)
	set(_rendersystems "${_rendersystems}  + OpenGL (all) StateCacheManager\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_METAL)
	set(_rendersystems "${_rendersystems}  + Metal [EXPERIMENTAL]\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_TINY)
	set(_rendersystems "${_rendersystems}  + Tiny (Software) [EXPERIMENTAL]\n")
endif ()
if (OGRE_BUILD_RENDERSYSTEM_VULKAN)
	set(_rendersystems "${_rendersystems}  + Vulkan [BETA]\n")
endif ()

if (DEFINED _rendersystems)
	set(_features "${_features}Building rendersystems:\n${_rendersystems}")
endif ()

# summarise programs
if (OGRE_BUILD_SAMPLES)
	set(_programs "${_programs}  + Samples\n")
endif ()
if (OGRE_BUILD_TESTS)
	set(_programs "${_programs}  + Tests\n")
endif ()
if (OGRE_BUILD_TOOLS)
	set(_programs "${_programs}  + Tools\n")
endif ()

if (DEFINED _programs)
	set(_features "${_features}Building executables:\n${_programs}")
endif ()

# summarise core features
if (OGRE_CONFIG_ENABLE_MESHLOD)
	set(_core "${_core}  + Mesh Lod\n")
endif ()
if (OGRE_CONFIG_ENABLE_DDS)
	set(_core "${_core}  + DDS image codec (.dds)\n")
endif ()
if (OGRE_CONFIG_ENABLE_PVRTC)
	set(_core "${_core}  + PVRTC image codec (.pvr)\n")
endif ()
if (OGRE_CONFIG_ENABLE_ETC)
	set(_core "${_core}  + ETC image codec (.pkm, .ktx) \n")
endif ()
if (OGRE_CONFIG_ENABLE_ASTC)
	set(_core "${_core}  + ASTC image codec (.astc)\n")
endif ()
if (OGRE_CONFIG_ENABLE_ZIP)
	set(_core "${_core}  + ZIP archives\n")
endif ()
if (OGRE_CONFIG_ENABLE_VIEWPORT_ORIENTATIONMODE)
	set(_core "${_core}  + Viewport orientation mode support\n")
endif ()
if (OGRE_CONFIG_ENABLE_QUAD_BUFFER_STEREO)
	set(_core "${_core}  + Quad Buffer Stereo Technology (EXPERIMENTAL)\n")
endif ()
if (OGRE_RESOURCEMANAGER_STRICT EQUAL 1)
	set(_core "${_core}  + Pedantic resource lookup\n")
endif()
if (OGRE_CONFIG_THREADS GREATER 0)
	set(_core "${_core}  + Multi-threaded WorkQueue\n")
endif()
if (OGRE_CONFIG_NODE_INHERIT_TRANSFORM)
	set(_core "${_core}  + Non-uniform scaling & shearing of Nodes\n")
endif()
if (DEFINED _core)
	set(_features "${_features}Building core features:\n${_core}")
endif ()


if (OGRE_NODELESS_POSITIONING)
	set(_legacy "${_legacy}  + Nodeless positioning of Lights and Cameras\n")
endif ()
if (OGRE_RESOURCEMANAGER_STRICT EQUAL 0)
	set(_legacy "${_legacy}  + Sloppy resource lookup\n")
endif()
if (OGRE_CONFIG_THREADS EQUAL 1 OR OGRE_CONFIG_THREADS EQUAL 2)
	set(_legacy "${_legacy}  + Internal Resource locking\n")
endif()
if (DEFINED _legacy)
	set(_features "${_features}Deprecated 1.7 API-level features:\n${_legacy}")
endif ()

set(_features "${_features}\n")


# miscellaneous
macro(var_to_string VAR STR)
	if (${VAR})
		set(${STR} "enabled")
	else ()
		set(${STR} "disabled")
	endif ()
endmacro ()

# assert settings
if (OGRE_ASSERT_MODE EQUAL 0)
	set(_assert "standard")
elseif (OGRE_ASSERT_MODE EQUAL 1)
	set(_assert "release exceptions")
else ()
    set(_assert "exceptions")
endif()
# various true/false settings
var_to_string(OGRE_CONFIG_DOUBLE _double)

# build type
if (OGRE_STATIC)
	set(_buildtype "static")
else ()
	set(_buildtype "shared")
endif ()

set(_features "${_features}Build type:                      ${_buildtype}\n")
set(_features "${_features}Use double precision:            ${_double}\n")
set(_features "${_features}Assert mode:                     ${_assert}\n")


set(_features "${_features}\n----------------------------------------------------------------------------\n")

# Display results, terminate if anything required is missing
MACRO_DISPLAY_FEATURE_LOG()
message(STATUS ${_features})

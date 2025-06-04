project "The-Forge"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    defines
    {
        "D3D12_AGILITY_SDK=1",
        "D3D12_AGILITY_SDK_VERSION=715"
    }
    files
    {
        "./Common_3/Application/**.cpp",
        "./Common_3/Application/**.c",
        "./Common_3/Application/**.h",

        "./Common_3/Game/**.cpp",
        "./Common_3/Game/**.c",
        "./Common_3/Game/**.h",

        "./Common_3/Renderer/Interfaces/IParticleSystem.h",
        "./Common_3/Renderer/Interfaces/IVisibilityBuffer.h",
        "./Common_3/Renderer/ParticleSystem/**.cpp",
        "./Common_3/Renderer/VisibilityBuffer/**.cpp",

        "./Common_3/Resource/**.cpp",
        "./Common_3/Resource/**.c",
        "./Common_3/Resource/**.h",

        "./Common_3/Scripts/**.cpp",
        "./Common_3/Scripts/**.c",
        "./Common_3/Scripts/**.h",

        -- For now no tooling, we just want rendering...
        -- "./Common_3/Tools/**.cpp",
        -- "./Common_3/Tools/**.c",
        -- "./Common_3/Tools/**.h",

        "./Common_3/Utilities/Interfaces/**.h",
        "./Common_3/Utilities/Log/**.h",
        "./Common_3/Utilities/Log/**.c",
        "./Common_3/Utilities/Math/**.h",
        "./Common_3/Utilities/Math/**.c",
        "./Common_3/Utilities/MemoryTracking/**.h",
        "./Common_3/Utilities/MemoryTracking/**.c",
        "./Common_3/Utilities/Threading/**.h",
        "./Common_3/Utilities/Threading/**.c",

        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/bit_utils.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpu_features_cache_info.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpu_features_macros.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpu_features_types.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpuid_x86.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpuinfo_aarch64.h",
        "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/cpuinfo_x86.h",
        "./Common_3/OS/ThirdParty/OpenSource/agdk/**.h",
        "./Common_3/OS/WindowsSystem/**.cpp",
        "./Common_3/OS/WindowsSystem/**.c",
        "./Common_3/OS/WindowsSystem/**.h",
        "./Common_3/OS/Input/**.cpp",
        "./Common_3/OS/Input/**.c",
        "./Common_3/OS/Input/**.h",

        "./Common_3/Graphics/Interfaces/**.h",
        "./Common_3/Graphics/FSL/**.c",
        "./Common_3/Graphics/Vulkan/**.c",
        "./Common_3/Graphics/Vulkan/**.h",
        "./Common_3/Graphics/GraphicsConfig.cpp",
        "./Common_3/Graphics/GraphicsConfig.h",
        "./Common_3/Graphics/ThirdParty/**.h",
        "./Common_3/Graphics/ThirdParty/**.c",
        "./Common_3/Graphics/ThirdParty/**.cpp",

        "./**.md",
        "./**.lua",
        "./**.txt"
    }
    includedirs
    {
        "./Common_3",
        "./Common_3/**/include",
        "./Common_3/**/src",
        "./Examples_3",
    }

    filter "system:Windows"
        systemversion "latest"
        files
        {
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_windows.c",

            "./Common_3/OS/ThirdParty/OpenSource/hidapi/windows/**.cpp",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/windows/**.c",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/windows/**.h",
            "./Common_3/OS/Windows/**.cpp",
            "./Common_3/OS/Windows/**.c",
            "./Common_3/OS/Windows/**.h",

            "./Common_3/Graphics/Direct3D12/**.c",
            "./Common_3/Graphics/Direct3D12/**.h",

            "./Common_3/Utilities/FileSystem/FileSystem.c",
            "./Common_3/Utilities/FileSystem/ToolFileSystem.c"
        }
    filter "system:Linux"
        systemversion "latest"
        files
        {
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_aarch64_linux_or_android.c",
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_linux_or_android.c",
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/hwcaps.c",
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/hwcaps.h",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/linux/**.cpp",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/linux/**.c",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/linux/**.h",
            "./Common_3/OS/Linux/**.cpp",
            "./Common_3/OS/Linux/**.c",
            "./Common_3/OS/Linux/**.h",

            "./Common_3/Utilities/FileSystem/**.c"
        }
    filter "system:Macosx"
        systemversion "latest"
        files
        {
            "./Common_3/OS/ThirdParty/OpenSource/cpu_features/src/impl_x86_macos.c",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/mac/**.cpp",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/mac/**.c",
            "./Common_3/OS/ThirdParty/OpenSource/hidapi/mac/**.h",
            "./Common_3/OS/Darwin/**.cpp",
            "./Common_3/OS/Darwin/**.c",
            "./Common_3/OS/Darwin/**.h",

            "./Common_3/Graphics/Metal/**.cpp",
            "./Common_3/Graphics/Metal/**.c",
            "./Common_3/Graphics/Metal/**.h",

            "./Common_3/Utilities/FileSystem/**.c"
        }
    filter {}
add_rules("mode.debug", "mode.release")

set_plat("linux")
set_toolchains("gcc")
set_runtimes("c++_static")

target("cxxtoy_notcxx")
set_policy("build.c++.modules", true)
set_kind("binary")
add_files("src/*.mpp","src/__cxx_basics__/*.mpp",{ rule = "c++" })
set_languages("c++26")

target_end()

add_cxxflags("-freflection","-ffunction-sections","-fdata-sections"--[[, "-fmodules"]],{force = true})
add_ldflags("-Wl,--gc-sections", {force = true})

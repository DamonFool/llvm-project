set_property(DIRECTORY PROPERTY LLDB_PLUGIN_KIND Platform)
set_property(DIRECTORY PROPERTY LLDB_TOLERATED_PLUGIN_DEPENDENCIES
  DynamicLoader
  ObjectContainer
  Process
)

add_subdirectory(AIX)
add_subdirectory(Android)
add_subdirectory(FreeBSD)
add_subdirectory(gdb-server)
add_subdirectory(Linux)
add_subdirectory(MacOSX)
add_subdirectory(NetBSD)
add_subdirectory(OpenBSD)
add_subdirectory(POSIX)
add_subdirectory(QemuUser)
add_subdirectory(Windows)

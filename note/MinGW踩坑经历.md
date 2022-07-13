# MinGW踩坑经历

出坑参考https://blog.csdn.net/qq_40410597/article/details/122474487



```
cmake -G"Unix Makefiles" .
make   
dart pub get
dart run .\hello.dart
```

| [hello_world](https://github.com/dart-lang/samples/tree/master/ffi/hello_world) | 如何调用无参数和返回值的 C 语言函数。                     |
| ---------------------------------------- | ---------------------------------------- |
| [primitives](https://github.com/dart-lang/samples/tree/master/ffi/primitives) | 如何调用参数和返回值为 **整型和指针** 的 C 语言函数。同时演示 **varargs**。 |
| [structs](https://github.com/dart-lang/samples/tree/master/ffi/structs) | 如何与 C 语言互相传递字符串，以及如何处理 **C 语言定义的结构**。    |

```
 E:\test\samples-master\ffi\hello_world\hello_library> cmake .
-- Building for: NMake Makefiles
CMake Error at CMakeLists.txt:2 (project):
  Running

   'nmake' '-?'

  failed with:

   系统找不到指定的文件。

CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage
-- Configuring incomplete, errors occurred!
See also "E:/test/samples-master/ffi/hello_world/hello_library/CMakeFiles/CMakeOutput.log".


解决办法
cmake -G"Unix Makefiles" .
```

```
PS E:\flutter\test\samples-master\ffi\primitives> dart run .\primitives.dart
3 + 5 = 8
3 - 5 = -2
3 * 5 = 15
Unhandled exception:
Invalid argument(s): Failed to lookup symbol 'free_pointer': error code 127
#0      DynamicLibrary.lookup (dart:ffi-patch/ffi_dynamic_library_patch.dart:34:70)
#1      main (file:///E:/flutter/test/samples-master/ffi/primitives/primitives.dart:89:13)
#2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
PS E:\flutter\test\samples-master\ffi\primitives>

解决办法：
需要在primitives.def中注明free_pointer,在CMake时调用。
```


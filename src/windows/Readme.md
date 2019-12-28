# MGA source modifications

## CLR Init

The following modifications to MGA source code are necessary in order to allow
the windows CLR (Common Language Runtime) to load.

### aal/windows/accessible.h

Add `static void init()` to aal::Accessible

### aal/windows/accessible.cpp

Add to aal::Accessible:

```c++
void init() {
  AccessibleWr::init();
}
```

### aal/windows/accessible.wr/accessible.wr.h

Add `static void init()` to aal::AccessibleWr

### aal/windows/accessible.wr/accessible.wr.cpp

```c++
#using <mscorlib.dll>
#using "bin/x64/Release/aal.dll"
#include <gcroot.h>

using namespace System::Runtime::InteropServices;
using namespace System::Reflection;


// we need to look for the assembly in the current directory
// node will search for it next to the node.exe binary
System::Reflection::Assembly ^OnAssemblyResolve(System::Object ^obj, System::ResolveEventArgs ^args)
{
    System::String ^path = System::String::Concat(System::Environment::CurrentDirectory, (System::String^)"\\build\\Release\\");
    array<System::String^>^ assemblies =
        System::IO::Directory::GetFiles(path, "*.dll");
    for (long ii = 0; ii < assemblies->Length; ii++) {
        AssemblyName ^name = AssemblyName::GetAssemblyName(assemblies[ii]);
        if (AssemblyName::ReferenceMatchesDefinition(gcnew AssemblyName(args->Name), name)) {
            return Assembly::Load(name);
        }
    }
    return nullptr;
}

// register a custom assembly load handler
void LoadAssembly()
{
    System::AppDomain::CurrentDomain->AssemblyResolve +=
        gcnew System::ResolveEventHandler(OnAssemblyResolve);
}

void AccessibleWr::init() {
  LoadAssembly();
}
```

## Add Features

The following modifications should be made to add new features to the
accessibility API.

### aal/windows/accessible/accessible.cs

Overwrite `public void BringToFront()`

```csharp
[DllImport("user32.dll")]
static extern bool SetForegroundWindow(IntPtr hWnd);

[DllImport("user32.dll")]
static extern bool SetActiveWindow(IntPtr hWnd);

[DllImport("user32.dll")]
public static extern IntPtr SetWindowPos(IntPtr hWnd, int hWndInsertAfter, int x, int Y, int cx, int cy, int wFlags);

public void BringToFront() {
  const short SWP_NOMOVE = 0X2;
  const short SWP_NOSIZE = 1;
  const short SWP_NOZORDER = 0X4;
  const int SWP_SHOWWINDOW = 0x0040;
  const int HWND_TOP = 0;

  IntPtr handle = (IntPtr)this._element.Current.NativeWindowHandle;
  SetForegroundWindow (handle);
  SetActiveWindow (handle);
  SetWindowPos (handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOMOVE | SWP_NOSIZE);
}
```

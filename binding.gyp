{
    'conditions': [
        [ 'OS=="win"', {
            'targets': [
                {
                    "win_delay_load_hook": "false",
                    'target_name': 'aal.wr',
                    'type': 'none',
                    'dependencies': [
                      # 'aal.dll',
                    ],
                    'actions': [{
                      'action_name': 'compile',
                      'inputs': [
                      ],
                      'outputs': [
                        'build/aal.wr.dll'
                        ],
                      'message': 'msbuild src/vendor/mga/src/aal/windows/accessible.wr/aal.wr.vcxproj',
                      'action': ['msbuild', 'src/vendor/mga/src/aal/windows/accessible.wr/aal.wr.vcxproj', '/p:Configuration=Release', '/p:Platform=x64', '/p:PlatformToolset=v141']
                    }]
                }
            ],
        }],
    ],
    'targets': [
        {
         "win_delay_load_hook": "false",
        'target_name': 'mga-aal',
        'product_extension': 'node',
        'sources': [
        ],
        'include_dirs' : [
          'src/vendor/mga/src/',
          'src/vendor/mga/src/library',
          'src/vendor/mga/src/duktape',
          'src/vendor/mga/src/utf8proc',
          'src/vendor/mga/src/aal',
          'src/vendor/',
        ],
        'conditions': [
            [ 'OS=="win"', {
                'dependencies': [
                  'aal.wr'
                ],
                'sources': [
                  # 'src/vendor/mga/src/aal/aalcommon.cpp',
                  # 'src/vendor/mga/src/aal/geometry.cpp',
                  # 'src/vendor/mga/src/aal/role.cpp',
                  # 'src/vendor/mga/src/aal/windows/accessible.cpp',
                  # 'src/vendor/mga/src/aal/windows/accessible.wr/accessible.wr.cpp',
                  'src/windows/mga-aal.cc',
                ],
                'include_dirs' : [
                  'src/vendor/mga/src/aal/windows',
                  'src/vendor/mga/src/aal/windows/accessible.wr',
                ],
                'copies': [{
                    'destination': './build/Release',
                    'files': [
                        './src/vendor/mga/src/aal/windows/accessible.wr/bin/x64/Release/aal.wr.lib',
                        './src/vendor/mga/src/aal/windows/accessible.wr/bin/x64/Release/aal.wr.dll',
                        './src/vendor/mga/src/aal/windows/accessible.wr/bin/x64/Release/aal.dll',
                        './src/vendor/mga/bin/x64/Release/Interop.UIAutomationClient.dll',
                    ]
                }],
                'msvs_settings': {
                  'VCCLCompilerTool': {
                    'AdditionalOptions': [ '-std:c++17', ],
                    "RuntimeLibrary": 2,
                    "RuntimeTypeInfo": "true"
                  },
                  'VCLinkerTool': {
                    # 'DelayLoadDLLs': 'aal.dll',
                    'AdditionalOptions': [ '/ignore:4248' ],
                    'GenerateDebugInformation': 'true',
                  },
                  'VCLibrarianTool': {
                  },
                },
                'msbuild_settings': {
                  'Link': {
                    'AdditionalDependencies': ['Release/aal.wr.lib', 'kernel32.lib;user32.lib;gdi32.lib;winspool.lib;comdlg32.lib;advapi32.lib;shell32.lib;ole32.lib;oleaut32.lib;uuid.lib;odbc32.lib;odbccp32.lib'],
                    'GenerateDebugInformation': 'true',
                  },
                  'ClCompile': {
                    'AdditionalOptions': [ '-std:c++17' ],
                    'ForcedIncludeFiles': [],
                    #'PreprocessorDefinitions': ['ACCESSIBILITY_EXPORTS'],
                    #'ForcedIncludeFiles':  'stdafx.h',
                    # 'CompileAsManaged':'true', # can be safe, pure
                    # 'ExceptionHandling': 'Async',
                  }
                }
              }
            ],
            [ 'OS=="mac"', {
              'sources': [
                'src/vendor/mga/src/aal/geometry.cpp',
                'src/vendor/mga/src/aal/role.cpp',
                'src/macos/mga-aal.cc',
              ],
              'link_settings': {
                  'libraries': [
                    '-framework ApplicationServices',
                    '-framework CoreFoundation',
                    '-framework AppKit',
                  ]
              },
              'xcode_settings': {
                'OTHER_CFLAGS': [
                  '-mmacosx-version-min=10.13',
                  '-ObjC++',
                  '-std=c++',
                  '-stdlib=libc++',
                  '-fobjc-arc',
                ],
                'OTHER_LDFLAGS': [
                  '-stdlib=libc++',
                  '-v'
                ],
                'OTHER_CPLUSPLUSFLAGS': [
                  '-ObjC++',
                  '-std=c++14',
                  '-stdlib=libc++',
                  '-v'
                ],
                'GCC_ENABLE_CPP_RTTI': 'YES',
                'GCC_ENABLE_CPP_EXCEPTIONS': 'YES',
                'MACOSX_DEPLOYMENT_TARGET': '10.13',
              },
            }]
        ],
        'cflags': [
        ],
        'cflags!': [
          '-fno-exceptions'
        ],
        'cflags_cc!': [
          '-fno-rtti', '-fno-exceptions'
        ]
    }]
}

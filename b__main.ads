pragma Ada_95;
pragma Warnings (Off);
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2016 (20160515-49)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#73743d78#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#b6df930e#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#ddf3267e#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#87cd2ab9#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#b27fb9e9#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#c5dcd3d2#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#12a38fcc#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#da4d2671#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#4c8cceba#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#e947e6a9#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#2da59038#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#5f84b5ab#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#b321486d#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#b01dad17#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#538f9d47#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#0f0cb66d#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#86c45f51#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#0066da3c#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#a31afbd0#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#87a448ff#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#700bf97a#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#45c6fdce#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#4c9e814d#;
   pragma Export (C, u00028, "system__exceptions__machineS");
   u00029 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00029, "system__exceptions_debugB");
   u00030 : constant Version_32 := 16#532f69fc#;
   pragma Export (C, u00030, "system__exceptions_debugS");
   u00031 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00031, "system__img_intB");
   u00032 : constant Version_32 := 16#2f7e70fa#;
   pragma Export (C, u00032, "system__img_intS");
   u00033 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00033, "system__tracebackB");
   u00034 : constant Version_32 := 16#73874efc#;
   pragma Export (C, u00034, "system__tracebackS");
   u00035 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00035, "system__traceback_entriesB");
   u00036 : constant Version_32 := 16#2dfe6648#;
   pragma Export (C, u00036, "system__traceback_entriesS");
   u00037 : constant Version_32 := 16#d2b6296c#;
   pragma Export (C, u00037, "system__traceback__symbolicB");
   u00038 : constant Version_32 := 16#dd19f67a#;
   pragma Export (C, u00038, "system__traceback__symbolicS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#5d344636#;
   pragma Export (C, u00041, "system__crtlS");
   u00042 : constant Version_32 := 16#b6a35849#;
   pragma Export (C, u00042, "system__dwarf_linesB");
   u00043 : constant Version_32 := 16#44249c75#;
   pragma Export (C, u00043, "system__dwarf_linesS");
   u00044 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00044, "ada__charactersS");
   u00045 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00045, "ada__characters__handlingB");
   u00046 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00046, "ada__characters__handlingS");
   u00047 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00047, "ada__characters__latin_1S");
   u00048 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00048, "ada__stringsS");
   u00049 : constant Version_32 := 16#e2ea8656#;
   pragma Export (C, u00049, "ada__strings__mapsB");
   u00050 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00050, "ada__strings__mapsS");
   u00051 : constant Version_32 := 16#4a6f6ca4#;
   pragma Export (C, u00051, "system__bit_opsB");
   u00052 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00052, "system__bit_opsS");
   u00053 : constant Version_32 := 16#1923ecbb#;
   pragma Export (C, u00053, "system__unsigned_typesS");
   u00054 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00054, "ada__strings__maps__constantsS");
   u00055 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00055, "interfacesS");
   u00056 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00056, "system__address_imageB");
   u00057 : constant Version_32 := 16#8c490d02#;
   pragma Export (C, u00057, "system__address_imageS");
   u00058 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00058, "system__img_unsB");
   u00059 : constant Version_32 := 16#86d7d04c#;
   pragma Export (C, u00059, "system__img_unsS");
   u00060 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00060, "system__ioB");
   u00061 : constant Version_32 := 16#b3e76777#;
   pragma Export (C, u00061, "system__ioS");
   u00062 : constant Version_32 := 16#cf909744#;
   pragma Export (C, u00062, "system__object_readerB");
   u00063 : constant Version_32 := 16#6942daaf#;
   pragma Export (C, u00063, "system__object_readerS");
   u00064 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00064, "interfaces__cB");
   u00065 : constant Version_32 := 16#70be4e8c#;
   pragma Export (C, u00065, "interfaces__cS");
   u00066 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00066, "system__val_lliB");
   u00067 : constant Version_32 := 16#b7817698#;
   pragma Export (C, u00067, "system__val_lliS");
   u00068 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00068, "system__val_lluB");
   u00069 : constant Version_32 := 16#63d1bbc9#;
   pragma Export (C, u00069, "system__val_lluS");
   u00070 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00070, "system__val_utilB");
   u00071 : constant Version_32 := 16#810526c6#;
   pragma Export (C, u00071, "system__val_utilS");
   u00072 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00072, "system__case_utilB");
   u00073 : constant Version_32 := 16#09acf9ef#;
   pragma Export (C, u00073, "system__case_utilS");
   u00074 : constant Version_32 := 16#84a27f0d#;
   pragma Export (C, u00074, "interfaces__c_streamsB");
   u00075 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00075, "interfaces__c_streamsS");
   u00076 : constant Version_32 := 16#931ff6be#;
   pragma Export (C, u00076, "system__exception_tracesB");
   u00077 : constant Version_32 := 16#097ab0a2#;
   pragma Export (C, u00077, "system__exception_tracesS");
   u00078 : constant Version_32 := 16#ce7de326#;
   pragma Export (C, u00078, "system__win32S");
   u00079 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00079, "system__wch_conB");
   u00080 : constant Version_32 := 16#36d8b2ea#;
   pragma Export (C, u00080, "system__wch_conS");
   u00081 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00081, "system__wch_stwB");
   u00082 : constant Version_32 := 16#1bc99eeb#;
   pragma Export (C, u00082, "system__wch_stwS");
   u00083 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00083, "system__wch_cnvB");
   u00084 : constant Version_32 := 16#396f0819#;
   pragma Export (C, u00084, "system__wch_cnvS");
   u00085 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00085, "system__wch_jisB");
   u00086 : constant Version_32 := 16#b91f1138#;
   pragma Export (C, u00086, "system__wch_jisS");
   u00087 : constant Version_32 := 16#a99e1d66#;
   pragma Export (C, u00087, "system__os_primitivesB");
   u00088 : constant Version_32 := 16#a72a814e#;
   pragma Export (C, u00088, "system__os_primitivesS");
   u00089 : constant Version_32 := 16#b6166bc6#;
   pragma Export (C, u00089, "system__task_lockB");
   u00090 : constant Version_32 := 16#4c2fa756#;
   pragma Export (C, u00090, "system__task_lockS");
   u00091 : constant Version_32 := 16#1a9147da#;
   pragma Export (C, u00091, "system__win32__extS");
   u00092 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00092, "system__tracesB");
   u00093 : constant Version_32 := 16#dfb8f892#;
   pragma Export (C, u00093, "system__tracesS");
   u00094 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00094, "ada__numericsS");
   u00095 : constant Version_32 := 16#3ea7406d#;
   pragma Export (C, u00095, "ada__real_timeB");
   u00096 : constant Version_32 := 16#8a504209#;
   pragma Export (C, u00096, "ada__real_timeS");
   u00097 : constant Version_32 := 16#044a9dc0#;
   pragma Export (C, u00097, "system__taskingB");
   u00098 : constant Version_32 := 16#a52e3c8f#;
   pragma Export (C, u00098, "system__taskingS");
   u00099 : constant Version_32 := 16#d81a47c0#;
   pragma Export (C, u00099, "system__task_primitivesS");
   u00100 : constant Version_32 := 16#2dd04756#;
   pragma Export (C, u00100, "system__os_interfaceS");
   u00101 : constant Version_32 := 16#f5163a3e#;
   pragma Export (C, u00101, "interfaces__c__stringsB");
   u00102 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00102, "interfaces__c__stringsS");
   u00103 : constant Version_32 := 16#3dfacd19#;
   pragma Export (C, u00103, "system__task_primitives__operationsB");
   u00104 : constant Version_32 := 16#26d8e313#;
   pragma Export (C, u00104, "system__task_primitives__operationsS");
   u00105 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00105, "system__float_controlB");
   u00106 : constant Version_32 := 16#cd59d304#;
   pragma Export (C, u00106, "system__float_controlS");
   u00107 : constant Version_32 := 16#da8ccc08#;
   pragma Export (C, u00107, "system__interrupt_managementB");
   u00108 : constant Version_32 := 16#1065b90c#;
   pragma Export (C, u00108, "system__interrupt_managementS");
   u00109 : constant Version_32 := 16#f65595cf#;
   pragma Export (C, u00109, "system__multiprocessorsB");
   u00110 : constant Version_32 := 16#15090f4b#;
   pragma Export (C, u00110, "system__multiprocessorsS");
   u00111 : constant Version_32 := 16#77769007#;
   pragma Export (C, u00111, "system__task_infoB");
   u00112 : constant Version_32 := 16#fa4399cf#;
   pragma Export (C, u00112, "system__task_infoS");
   u00113 : constant Version_32 := 16#ab9ad34e#;
   pragma Export (C, u00113, "system__tasking__debugB");
   u00114 : constant Version_32 := 16#f1f2435f#;
   pragma Export (C, u00114, "system__tasking__debugS");
   u00115 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00115, "system__concat_2B");
   u00116 : constant Version_32 := 16#2f0547e8#;
   pragma Export (C, u00116, "system__concat_2S");
   u00117 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00117, "system__concat_3B");
   u00118 : constant Version_32 := 16#26d5cc9d#;
   pragma Export (C, u00118, "system__concat_3S");
   u00119 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00119, "system__img_enum_newB");
   u00120 : constant Version_32 := 16#4ce996f8#;
   pragma Export (C, u00120, "system__img_enum_newS");
   u00121 : constant Version_32 := 16#118e865d#;
   pragma Export (C, u00121, "system__stack_usageB");
   u00122 : constant Version_32 := 16#3a3ac346#;
   pragma Export (C, u00122, "system__stack_usageS");
   u00123 : constant Version_32 := 16#5c859aff#;
   pragma Export (C, u00123, "ada__real_time__delaysB");
   u00124 : constant Version_32 := 16#a062f703#;
   pragma Export (C, u00124, "ada__real_time__delaysS");
   u00125 : constant Version_32 := 16#920eada5#;
   pragma Export (C, u00125, "ada__tagsB");
   u00126 : constant Version_32 := 16#13ca27f3#;
   pragma Export (C, u00126, "ada__tagsS");
   u00127 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00127, "system__htableB");
   u00128 : constant Version_32 := 16#a96723d2#;
   pragma Export (C, u00128, "system__htableS");
   u00129 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00129, "system__string_hashB");
   u00130 : constant Version_32 := 16#0b3948ac#;
   pragma Export (C, u00130, "system__string_hashS");
   u00131 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00131, "system__val_unsB");
   u00132 : constant Version_32 := 16#098b0180#;
   pragma Export (C, u00132, "system__val_unsS");
   u00133 : constant Version_32 := 16#78c1fde3#;
   pragma Export (C, u00133, "consoleB");
   u00134 : constant Version_32 := 16#8fbba379#;
   pragma Export (C, u00134, "consoleS");
   u00135 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00135, "ada__integer_text_ioB");
   u00136 : constant Version_32 := 16#f1daf268#;
   pragma Export (C, u00136, "ada__integer_text_ioS");
   u00137 : constant Version_32 := 16#d5bfa9f3#;
   pragma Export (C, u00137, "ada__text_ioB");
   u00138 : constant Version_32 := 16#c3f01c15#;
   pragma Export (C, u00138, "ada__text_ioS");
   u00139 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00139, "ada__streamsB");
   u00140 : constant Version_32 := 16#2e6701ab#;
   pragma Export (C, u00140, "ada__streamsS");
   u00141 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00141, "ada__io_exceptionsS");
   u00142 : constant Version_32 := 16#b29d05bd#;
   pragma Export (C, u00142, "system__file_ioB");
   u00143 : constant Version_32 := 16#8ad4715d#;
   pragma Export (C, u00143, "system__file_ioS");
   u00144 : constant Version_32 := 16#cf417de3#;
   pragma Export (C, u00144, "ada__finalizationS");
   u00145 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00145, "system__finalization_rootB");
   u00146 : constant Version_32 := 16#6257e3a8#;
   pragma Export (C, u00146, "system__finalization_rootS");
   u00147 : constant Version_32 := 16#9dd55695#;
   pragma Export (C, u00147, "system__os_libB");
   u00148 : constant Version_32 := 16#bf5ce13f#;
   pragma Export (C, u00148, "system__os_libS");
   u00149 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00149, "system__stringsB");
   u00150 : constant Version_32 := 16#531a815e#;
   pragma Export (C, u00150, "system__stringsS");
   u00151 : constant Version_32 := 16#d03a0a90#;
   pragma Export (C, u00151, "system__file_control_blockS");
   u00152 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00152, "ada__text_io__integer_auxB");
   u00153 : constant Version_32 := 16#b9793d30#;
   pragma Export (C, u00153, "ada__text_io__integer_auxS");
   u00154 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00154, "ada__text_io__generic_auxB");
   u00155 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00155, "ada__text_io__generic_auxS");
   u00156 : constant Version_32 := 16#b10ba0c7#;
   pragma Export (C, u00156, "system__img_biuB");
   u00157 : constant Version_32 := 16#df0164f6#;
   pragma Export (C, u00157, "system__img_biuS");
   u00158 : constant Version_32 := 16#4e06ab0c#;
   pragma Export (C, u00158, "system__img_llbB");
   u00159 : constant Version_32 := 16#9ec67408#;
   pragma Export (C, u00159, "system__img_llbS");
   u00160 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00160, "system__img_lliB");
   u00161 : constant Version_32 := 16#3ceac5e9#;
   pragma Export (C, u00161, "system__img_lliS");
   u00162 : constant Version_32 := 16#a756d097#;
   pragma Export (C, u00162, "system__img_llwB");
   u00163 : constant Version_32 := 16#37aa579e#;
   pragma Export (C, u00163, "system__img_llwS");
   u00164 : constant Version_32 := 16#eb55dfbb#;
   pragma Export (C, u00164, "system__img_wiuB");
   u00165 : constant Version_32 := 16#b140e364#;
   pragma Export (C, u00165, "system__img_wiuS");
   u00166 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00166, "system__val_intB");
   u00167 : constant Version_32 := 16#6500ba07#;
   pragma Export (C, u00167, "system__val_intS");
   u00168 : constant Version_32 := 16#2d3a9dfd#;
   pragma Export (C, u00168, "controllerB");
   u00169 : constant Version_32 := 16#268adb10#;
   pragma Export (C, u00169, "controllerS");
   u00170 : constant Version_32 := 16#f67823c9#;
   pragma Export (C, u00170, "cooling_system_componentB");
   u00171 : constant Version_32 := 16#bf4b7783#;
   pragma Export (C, u00171, "cooling_system_componentS");
   u00172 : constant Version_32 := 16#3511a2e6#;
   pragma Export (C, u00172, "reactor_componentB");
   u00173 : constant Version_32 := 16#5d75a7bb#;
   pragma Export (C, u00173, "reactor_componentS");
   u00174 : constant Version_32 := 16#39a3d103#;
   pragma Export (C, u00174, "typedefsS");
   u00175 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00175, "ada__float_text_ioB");
   u00176 : constant Version_32 := 16#e61b3c6c#;
   pragma Export (C, u00176, "ada__float_text_ioS");
   u00177 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00177, "ada__text_io__float_auxB");
   u00178 : constant Version_32 := 16#f854caf5#;
   pragma Export (C, u00178, "ada__text_io__float_auxS");
   u00179 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00179, "system__img_realB");
   u00180 : constant Version_32 := 16#ea0dc1da#;
   pragma Export (C, u00180, "system__img_realS");
   u00181 : constant Version_32 := 16#29322bcb#;
   pragma Export (C, u00181, "system__fat_llfS");
   u00182 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00182, "system__img_lluB");
   u00183 : constant Version_32 := 16#50eaec78#;
   pragma Export (C, u00183, "system__img_lluS");
   u00184 : constant Version_32 := 16#7dd5f64f#;
   pragma Export (C, u00184, "system__powten_tableS");
   u00185 : constant Version_32 := 16#faa9a7b2#;
   pragma Export (C, u00185, "system__val_realB");
   u00186 : constant Version_32 := 16#d38ce729#;
   pragma Export (C, u00186, "system__val_realS");
   u00187 : constant Version_32 := 16#6c05c057#;
   pragma Export (C, u00187, "system__exn_llfB");
   u00188 : constant Version_32 := 16#91db2be4#;
   pragma Export (C, u00188, "system__exn_llfS");
   u00189 : constant Version_32 := 16#75d08c2c#;
   pragma Export (C, u00189, "system__fat_fltS");
   u00190 : constant Version_32 := 16#3a0a9639#;
   pragma Export (C, u00190, "steam_generator_componentB");
   u00191 : constant Version_32 := 16#73d582b4#;
   pragma Export (C, u00191, "steam_generator_componentS");
   u00192 : constant Version_32 := 16#5933ea28#;
   pragma Export (C, u00192, "system__tasking__protected_objectsB");
   u00193 : constant Version_32 := 16#5744f344#;
   pragma Export (C, u00193, "system__tasking__protected_objectsS");
   u00194 : constant Version_32 := 16#4fa7bdc7#;
   pragma Export (C, u00194, "system__soft_links__taskingB");
   u00195 : constant Version_32 := 16#5ae92880#;
   pragma Export (C, u00195, "system__soft_links__taskingS");
   u00196 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00196, "ada__exceptions__is_null_occurrenceB");
   u00197 : constant Version_32 := 16#e1d7566f#;
   pragma Export (C, u00197, "ada__exceptions__is_null_occurrenceS");
   u00198 : constant Version_32 := 16#3ea9332d#;
   pragma Export (C, u00198, "system__tasking__protected_objects__entriesB");
   u00199 : constant Version_32 := 16#a0c7bfc6#;
   pragma Export (C, u00199, "system__tasking__protected_objects__entriesS");
   u00200 : constant Version_32 := 16#100eaf58#;
   pragma Export (C, u00200, "system__restrictionsB");
   u00201 : constant Version_32 := 16#8405da99#;
   pragma Export (C, u00201, "system__restrictionsS");
   u00202 : constant Version_32 := 16#5f5b1a91#;
   pragma Export (C, u00202, "system__tasking__initializationB");
   u00203 : constant Version_32 := 16#ed62fcff#;
   pragma Export (C, u00203, "system__tasking__initializationS");
   u00204 : constant Version_32 := 16#d89f9b67#;
   pragma Export (C, u00204, "system__tasking__task_attributesB");
   u00205 : constant Version_32 := 16#a1da3c09#;
   pragma Export (C, u00205, "system__tasking__task_attributesS");
   u00206 : constant Version_32 := 16#6f8919f6#;
   pragma Export (C, u00206, "system__tasking__protected_objects__operationsB");
   u00207 : constant Version_32 := 16#902e29cd#;
   pragma Export (C, u00207, "system__tasking__protected_objects__operationsS");
   u00208 : constant Version_32 := 16#72d3cb03#;
   pragma Export (C, u00208, "system__tasking__entry_callsB");
   u00209 : constant Version_32 := 16#ddf2aa0b#;
   pragma Export (C, u00209, "system__tasking__entry_callsS");
   u00210 : constant Version_32 := 16#94c4f9d9#;
   pragma Export (C, u00210, "system__tasking__queuingB");
   u00211 : constant Version_32 := 16#05e644a6#;
   pragma Export (C, u00211, "system__tasking__queuingS");
   u00212 : constant Version_32 := 16#c6ee4b22#;
   pragma Export (C, u00212, "system__tasking__utilitiesB");
   u00213 : constant Version_32 := 16#deb05b52#;
   pragma Export (C, u00213, "system__tasking__utilitiesS");
   u00214 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00214, "system__traces__taskingB");
   u00215 : constant Version_32 := 16#0b40d4b2#;
   pragma Export (C, u00215, "system__traces__taskingS");
   u00216 : constant Version_32 := 16#3cc73d8e#;
   pragma Export (C, u00216, "system__tasking__rendezvousB");
   u00217 : constant Version_32 := 16#3e44c873#;
   pragma Export (C, u00217, "system__tasking__rendezvousS");
   u00218 : constant Version_32 := 16#496339b9#;
   pragma Export (C, u00218, "sensor_systemB");
   u00219 : constant Version_32 := 16#a21df300#;
   pragma Export (C, u00219, "sensor_systemS");
   u00220 : constant Version_32 := 16#1bec56b8#;
   pragma Export (C, u00220, "system__random_numbersB");
   u00221 : constant Version_32 := 16#eebd20a2#;
   pragma Export (C, u00221, "system__random_numbersS");
   u00222 : constant Version_32 := 16#880b169f#;
   pragma Export (C, u00222, "system__random_seedB");
   u00223 : constant Version_32 := 16#76b5b963#;
   pragma Export (C, u00223, "system__random_seedS");
   u00224 : constant Version_32 := 16#d2210985#;
   pragma Export (C, u00224, "system__tasking__stagesB");
   u00225 : constant Version_32 := 16#c1acd10e#;
   pragma Export (C, u00225, "system__tasking__stagesS");
   u00226 : constant Version_32 := 16#ee101ba4#;
   pragma Export (C, u00226, "system__memoryB");
   u00227 : constant Version_32 := 16#74d8f60c#;
   pragma Export (C, u00227, "system__memoryS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  system.task_lock%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.task_lock%b
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.fat_flt%s
   --  system.fat_llf%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_int%s
   --  system.val_lli%s
   --  system.val_llu%s
   --  system.val_real%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_real%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.win32%s
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.win32.ext%s
   --  system.task_primitives.operations%b
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  system.exception_traces%s
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.random_numbers%s
   --  system.random_seed%s
   --  system.random_seed%b
   --  system.secondary_stack%s
   --  system.file_io%b
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  system.random_numbers%b
   --  system.dwarf_lines%b
   --  system.object_reader%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.utilities%s
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.tasking.initialization%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.float_aux%s
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  console%s
   --  typedefs%s
   --  controller%s
   --  cooling_system_component%s
   --  reactor_component%s
   --  reactor_component%b
   --  sensor_system%s
   --  steam_generator_component%s
   --  steam_generator_component%b
   --  sensor_system%b
   --  cooling_system_component%b
   --  controller%b
   --  console%b
   --  main%b
   --  END ELABORATION ORDER


end ada_main;

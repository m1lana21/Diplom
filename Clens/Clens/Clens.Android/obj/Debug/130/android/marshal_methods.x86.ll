; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [326 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 114
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 143
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 66
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 138
	i32 68219467, ; 4: System.Security.Cryptography.Primitives => 0x410f24b => 3
	i32 83768722, ; 5: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 36
	i32 88799905, ; 6: Acr.UserDialogs => 0x54afaa1 => 22
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 128
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 157
	i32 120558881, ; 9: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 128
	i32 149972175, ; 10: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 3
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 95
	i32 176714968, ; 12: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 47
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 129
	i32 209399409, ; 14: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 93
	i32 220171995, ; 15: System.Diagnostics.Debug => 0xd1f8edb => 14
	i32 230216969, ; 16: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 109
	i32 231814094, ; 17: System.Globalization => 0xdd133ce => 5
	i32 232815796, ; 18: System.Web.Services => 0xde07cb4 => 152
	i32 261689757, ; 19: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 98
	i32 278686392, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 113
	i32 280482487, ; 21: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 107
	i32 300686228, ; 22: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 32
	i32 318968648, ; 23: Xamarin.AndroidX.Activity.dll => 0x13031348 => 85
	i32 321597661, ; 24: System.Numerics => 0x132b30dd => 74
	i32 342366114, ; 25: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 111
	i32 393699800, ; 26: Firebase => 0x177761d8 => 26
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 97
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 137
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 2
	i32 449147981, ; 30: Clens.dll => 0x1ac5744d => 24
	i32 450948140, ; 31: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 106
	i32 451504562, ; 32: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 11
	i32 465846621, ; 33: mscorlib => 0x1bc4415d => 64
	i32 469710990, ; 34: System.dll => 0x1bff388e => 70
	i32 476646585, ; 35: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 107
	i32 486930444, ; 36: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 118
	i32 490002678, ; 37: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 40
	i32 513247710, ; 38: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 57
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 147
	i32 540030774, ; 40: System.IO.FileSystem.dll => 0x20303736 => 6
	i32 545304856, ; 41: System.Runtime.Extensions => 0x2080b118 => 156
	i32 577335427, ; 42: System.Security.Cryptography.Cng => 0x22697083 => 153
	i32 601719167, ; 43: FirebaseAuth.dll => 0x23dd817f => 27
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 150
	i32 610194910, ; 45: System.Reactive.dll => 0x245ed5de => 76
	i32 613668793, ; 46: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 154
	i32 627609679, ; 47: Xamarin.AndroidX.CustomView => 0x2568904f => 102
	i32 662205335, ; 48: System.Text.Encodings.Web.dll => 0x27787397 => 82
	i32 663517072, ; 49: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 134
	i32 666292255, ; 50: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 90
	i32 672442732, ; 51: System.Collections.Concurrent => 0x2814a96c => 8
	i32 690569205, ; 52: System.Xml.Linq.dll => 0x29293ff5 => 84
	i32 691439157, ; 53: Acr.UserDialogs.dll => 0x29368635 => 22
	i32 775507847, ; 54: System.IO.Compression => 0x2e394f87 => 72
	i32 789151979, ; 55: Microsoft.Extensions.Options => 0x2f0980eb => 56
	i32 809851609, ; 56: System.Drawing.Common.dll => 0x30455ad9 => 149
	i32 843511501, ; 57: Xamarin.AndroidX.Print => 0x3246f6cd => 125
	i32 877678880, ; 58: System.Globalization.dll => 0x34505120 => 5
	i32 902159924, ; 59: Rg.Plugins.Popup => 0x35c5de34 => 67
	i32 928116545, ; 60: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 143
	i32 955402788, ; 61: Newtonsoft.Json => 0x38f24a24 => 66
	i32 967690846, ; 62: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 111
	i32 974778368, ; 63: FormsViewGroup.dll => 0x3a19f000 => 28
	i32 975236339, ; 64: System.Diagnostics.Tracing => 0x3a20ecf3 => 159
	i32 992768348, ; 65: System.Collections.dll => 0x3b2c715c => 2
	i32 994442037, ; 66: System.IO.FileSystem => 0x3b45fb35 => 6
	i32 1012816738, ; 67: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 127
	i32 1028951442, ; 68: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 51
	i32 1035644815, ; 69: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 89
	i32 1042160112, ; 70: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 140
	i32 1052210849, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 115
	i32 1098259244, ; 72: System => 0x41761b2c => 70
	i32 1110309514, ; 73: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 53
	i32 1112354281, ; 74: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 32
	i32 1143481946, ; 75: Clens.Android.dll => 0x4428265a => 0
	i32 1173126369, ; 76: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 52
	i32 1175144683, ; 77: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 132
	i32 1178241025, ; 78: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 122
	i32 1186231468, ; 79: Newtonsoft.Json.Bson.dll => 0x46b474ac => 65
	i32 1204270330, ; 80: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 90
	i32 1204575371, ; 81: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 49
	i32 1220193633, ; 82: Microsoft.Net.Http.Headers => 0x48baad61 => 61
	i32 1236289705, ; 83: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 40
	i32 1253011324, ; 84: Microsoft.Win32.Registry => 0x4aaf6f7c => 62
	i32 1267360935, ; 85: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 133
	i32 1269851834, ; 86: BouncyCastle.Crypto => 0x4bb066ba => 23
	i32 1293217323, ; 87: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 104
	i32 1324164729, ; 88: System.Linq => 0x4eed2679 => 158
	i32 1364015309, ; 89: System.IO => 0x514d38cd => 155
	i32 1365406463, ; 90: System.ServiceModel.Internals.dll => 0x516272ff => 144
	i32 1376866003, ; 91: Xamarin.AndroidX.SavedState => 0x52114ed3 => 127
	i32 1379779777, ; 92: System.Resources.ResourceManager => 0x523dc4c1 => 1
	i32 1395857551, ; 93: Xamarin.AndroidX.Media.dll => 0x5333188f => 119
	i32 1406073936, ; 94: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 99
	i32 1411638395, ; 95: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 77
	i32 1434145427, ; 96: System.Runtime.Handles => 0x557b5293 => 19
	i32 1441421556, ; 97: jose-jwt.dll => 0x55ea58f4 => 30
	i32 1457743152, ; 98: System.Runtime.Extensions.dll => 0x56e36530 => 156
	i32 1460219004, ; 99: Xamarin.Forms.Xaml => 0x57092c7c => 141
	i32 1460893475, ; 100: System.IdentityModel.Tokens.Jwt => 0x57137723 => 71
	i32 1462112819, ; 101: System.IO.Compression.dll => 0x57261233 => 72
	i32 1469204771, ; 102: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 88
	i32 1470490898, ; 103: Microsoft.Extensions.Primitives => 0x57a5e912 => 57
	i32 1543031311, ; 104: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 161
	i32 1565862583, ; 105: System.IO.FileSystem.Primitives => 0x5d552ab7 => 7
	i32 1582372066, ; 106: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 103
	i32 1592978981, ; 107: System.Runtime.Serialization.dll => 0x5ef2ee25 => 21
	i32 1596753216, ; 108: BouncyCastle.Crypto.dll => 0x5f2c8540 => 23
	i32 1622152042, ; 109: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 117
	i32 1624863272, ; 110: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 136
	i32 1636350590, ; 111: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 101
	i32 1639515021, ; 112: System.Net.Http.dll => 0x61b9038d => 20
	i32 1639986890, ; 113: System.Text.RegularExpressions => 0x61c036ca => 161
	i32 1657153582, ; 114: System.Runtime => 0x62c6282e => 78
	i32 1658241508, ; 115: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 130
	i32 1658251792, ; 116: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 142
	i32 1670060433, ; 117: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 98
	i32 1701541528, ; 118: System.Diagnostics.Debug.dll => 0x656b7698 => 14
	i32 1726116996, ; 119: System.Reflection.dll => 0x66e27484 => 160
	i32 1729485958, ; 120: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 94
	i32 1766324549, ; 121: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 129
	i32 1776026572, ; 122: System.Core.dll => 0x69dc03cc => 69
	i32 1788241197, ; 123: Xamarin.AndroidX.Fragment => 0x6a96652d => 106
	i32 1791755720, ; 124: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 34
	i32 1808609942, ; 125: Xamarin.AndroidX.Loader => 0x6bcd3296 => 117
	i32 1813201214, ; 126: Xamarin.Google.Android.Material => 0x6c13413e => 142
	i32 1818569960, ; 127: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 123
	i32 1819327070, ; 128: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 44
	i32 1820883333, ; 129: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 36
	i32 1824175904, ; 130: System.Text.Encoding.Extensions => 0x6cbab720 => 16
	i32 1828688058, ; 131: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 54
	i32 1867746548, ; 132: Xamarin.Essentials.dll => 0x6f538cf4 => 137
	i32 1878053835, ; 133: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 141
	i32 1885316902, ; 134: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 91
	i32 1900610850, ; 135: System.Resources.ResourceManager.dll => 0x71490522 => 1
	i32 1904755420, ; 136: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 18
	i32 1919157823, ; 137: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 120
	i32 1928288591, ; 138: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 41
	i32 1953382742, ; 139: Clens => 0x746e4156 => 24
	i32 1953680223, ; 140: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 37
	i32 1986222447, ; 141: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 60
	i32 2011961780, ; 142: System.Buffers.dll => 0x77ec19b4 => 68
	i32 2019465201, ; 143: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 115
	i32 2055257422, ; 144: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 112
	i32 2069514766, ; 145: Newtonsoft.Json.Bson => 0x7b5a4a0e => 65
	i32 2075706075, ; 146: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 41
	i32 2076659885, ; 147: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 58
	i32 2079903147, ; 148: System.Runtime.dll => 0x7bf8cdab => 78
	i32 2085039813, ; 149: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 80
	i32 2090596640, ; 150: System.Numerics.Vectors => 0x7c9bf920 => 75
	i32 2097448633, ; 151: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 108
	i32 2126786730, ; 152: Xamarin.Forms.Platform.Android => 0x7ec430aa => 139
	i32 2181898931, ; 153: Microsoft.Extensions.Options.dll => 0x820d22b3 => 56
	i32 2192057212, ; 154: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 54
	i32 2201231467, ; 155: System.Net.Http => 0x8334206b => 20
	i32 2204417087, ; 156: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 55
	i32 2216717168, ; 157: Firebase.Auth.dll => 0x84206b70 => 25
	i32 2217644978, ; 158: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 132
	i32 2242871324, ; 159: Microsoft.AspNetCore.Http.dll => 0x85af801c => 42
	i32 2244775296, ; 160: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 118
	i32 2256548716, ; 161: Xamarin.AndroidX.MultiDex => 0x8680336c => 120
	i32 2261435625, ; 162: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 110
	i32 2265110946, ; 163: System.Security.AccessControl.dll => 0x8702d9a2 => 79
	i32 2266799131, ; 164: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 50
	i32 2279755925, ; 165: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 126
	i32 2285293097, ; 166: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 45
	i32 2291847450, ; 167: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 38
	i32 2315684594, ; 168: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 86
	i32 2321784778, ; 169: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 45
	i32 2368005991, ; 170: System.Xml.ReaderWriter.dll => 0x8d24e767 => 10
	i32 2369706906, ; 171: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 59
	i32 2383496789, ; 172: System.Security.Principal.Windows.dll => 0x8e114655 => 81
	i32 2392818924, ; 173: System.Net.Http.Formatting.dll => 0x8e9f84ec => 73
	i32 2409053734, ; 174: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 124
	i32 2454642406, ; 175: System.Text.Encoding.dll => 0x924edee6 => 4
	i32 2458592288, ; 176: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 33
	i32 2465532216, ; 177: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 97
	i32 2471841756, ; 178: netstandard.dll => 0x93554fdc => 145
	i32 2475788418, ; 179: Java.Interop.dll => 0x93918882 => 29
	i32 2501346920, ; 180: System.Data.DataSetExtensions => 0x95178668 => 148
	i32 2505896520, ; 181: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 114
	i32 2530480918, ; 182: FirebaseAuth => 0x96d41316 => 27
	i32 2537015816, ; 183: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 35
	i32 2570120770, ; 184: System.Text.Encodings.Web => 0x9930ee42 => 82
	i32 2581819634, ; 185: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 133
	i32 2585220780, ; 186: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 16
	i32 2592341985, ; 187: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 52
	i32 2593268061, ; 188: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 46
	i32 2594125473, ; 189: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 39
	i32 2620871830, ; 190: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 101
	i32 2624644809, ; 191: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 105
	i32 2633051222, ; 192: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 113
	i32 2633959305, ; 193: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 43
	i32 2640290731, ; 194: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 59
	i32 2693849962, ; 195: System.IO.dll => 0xa090e36a => 155
	i32 2701096212, ; 196: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 130
	i32 2715334215, ; 197: System.Threading.Tasks.dll => 0xa1d8b647 => 13
	i32 2717744543, ; 198: System.Security.Claims => 0xa1fd7d9f => 9
	i32 2719963679, ; 199: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 153
	i32 2724373263, ; 200: System.Runtime.Numerics.dll => 0xa262a30f => 15
	i32 2732626843, ; 201: Xamarin.AndroidX.Activity => 0xa2e0939b => 85
	i32 2735631878, ; 202: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 35
	i32 2737747696, ; 203: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 88
	i32 2766581644, ; 204: Xamarin.Forms.Core => 0xa4e6af8c => 138
	i32 2778768386, ; 205: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 135
	i32 2810250172, ; 206: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 99
	i32 2819470561, ; 207: System.Xml.dll => 0xa80db4e1 => 83
	i32 2850549256, ; 208: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 44
	i32 2853208004, ; 209: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 135
	i32 2855708567, ; 210: Xamarin.AndroidX.Transition => 0xaa36a797 => 131
	i32 2861816565, ; 211: Rg.Plugins.Popup.dll => 0xaa93daf5 => 67
	i32 2889014027, ; 212: Clens.Android => 0xac32db0b => 0
	i32 2901442782, ; 213: System.Reflection => 0xacf080de => 160
	i32 2903344695, ; 214: System.ComponentModel.Composition => 0xad0d8637 => 151
	i32 2905242038, ; 215: mscorlib.dll => 0xad2a79b6 => 64
	i32 2916838712, ; 216: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 136
	i32 2919462931, ; 217: System.Numerics.Vectors.dll => 0xae037813 => 75
	i32 2921128767, ; 218: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 87
	i32 2921417940, ; 219: System.Security.Cryptography.Xml => 0xae214cd4 => 80
	i32 2930358886, ; 220: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 37
	i32 2968338931, ; 221: System.Security.Principal.Windows => 0xb0ed41f3 => 81
	i32 2972252294, ; 222: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 154
	i32 2978368250, ; 223: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 39
	i32 2978675010, ; 224: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 104
	i32 2996646946, ; 225: Microsoft.AspNetCore.Http => 0xb29d3422 => 42
	i32 3024354802, ; 226: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 109
	i32 3033331042, ; 227: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 33
	i32 3036999524, ; 228: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 43
	i32 3044182254, ; 229: FormsViewGroup => 0xb57288ee => 28
	i32 3057625584, ; 230: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 121
	i32 3069363400, ; 231: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 48
	i32 3075834255, ; 232: System.Threading.Tasks => 0xb755818f => 13
	i32 3084678329, ; 233: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 60
	i32 3090735792, ; 234: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 11
	i32 3093090641, ; 235: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 58
	i32 3099732863, ; 236: System.Security.Claims.dll => 0xb8c22b7f => 9
	i32 3111772706, ; 237: System.Runtime.Serialization => 0xb979e222 => 21
	i32 3113762169, ; 238: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 46
	i32 3132293585, ; 239: System.Security.AccessControl => 0xbab301d1 => 79
	i32 3147165239, ; 240: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 159
	i32 3155681111, ; 241: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 38
	i32 3195844289, ; 242: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 48
	i32 3204380047, ; 243: System.Data.dll => 0xbefef58f => 146
	i32 3211777861, ; 244: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 103
	i32 3220365878, ; 245: System.Threading => 0xbff2e236 => 12
	i32 3226221578, ; 246: System.Runtime.Handles.dll => 0xc04c3c0a => 19
	i32 3247949154, ; 247: Mono.Security => 0xc197c562 => 162
	i32 3258312781, ; 248: Xamarin.AndroidX.CardView => 0xc235e84d => 94
	i32 3267021929, ; 249: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 92
	i32 3279906254, ; 250: Microsoft.Win32.Registry.dll => 0xc37f65ce => 62
	i32 3299363146, ; 251: System.Text.Encoding => 0xc4a8494a => 4
	i32 3300764913, ; 252: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 47
	i32 3317135071, ; 253: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 102
	i32 3317144872, ; 254: System.Data => 0xc5b79d28 => 146
	i32 3322403133, ; 255: Firebase.dll => 0xc607d93d => 26
	i32 3340431453, ; 256: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 91
	i32 3346324047, ; 257: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 122
	i32 3353484488, ; 258: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 108
	i32 3362522851, ; 259: Xamarin.AndroidX.Core => 0xc86c06e3 => 100
	i32 3366347497, ; 260: Java.Interop => 0xc8a662e9 => 29
	i32 3374999561, ; 261: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 126
	i32 3395150330, ; 262: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 77
	i32 3404865022, ; 263: System.ServiceModel.Internals => 0xcaf21dfe => 144
	i32 3429136800, ; 264: System.Xml => 0xcc6479a0 => 83
	i32 3430777524, ; 265: netstandard => 0xcc7d82b4 => 145
	i32 3441283291, ; 266: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 105
	i32 3476120550, ; 267: Mono.Android => 0xcf3163e6 => 63
	i32 3486566296, ; 268: System.Transactions => 0xcfd0c798 => 147
	i32 3493954962, ; 269: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 96
	i32 3501239056, ; 270: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 92
	i32 3509114376, ; 271: System.Xml.Linq => 0xd128d608 => 84
	i32 3536029504, ; 272: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 139
	i32 3567349600, ; 273: System.ComponentModel.Composition.dll => 0xd4a16f60 => 151
	i32 3596207933, ; 274: LiteDB.dll => 0xd659c73d => 31
	i32 3608519521, ; 275: System.Linq.dll => 0xd715a361 => 158
	i32 3618140916, ; 276: Xamarin.AndroidX.Preference => 0xd7a872f4 => 124
	i32 3627220390, ; 277: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 125
	i32 3629588173, ; 278: LiteDB => 0xd8571ecd => 31
	i32 3632359727, ; 279: Xamarin.Forms.Platform => 0xd881692f => 140
	i32 3633644679, ; 280: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 87
	i32 3638274909, ; 281: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 7
	i32 3641597786, ; 282: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 112
	i32 3657292374, ; 283: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 50
	i32 3672681054, ; 284: Mono.Android.dll => 0xdae8aa5e => 63
	i32 3676310014, ; 285: System.Web.Services.dll => 0xdb2009fe => 152
	i32 3682565725, ; 286: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 93
	i32 3684561358, ; 287: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 96
	i32 3684933406, ; 288: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 18
	i32 3689375977, ; 289: System.Drawing.Common => 0xdbe768e9 => 149
	i32 3718780102, ; 290: Xamarin.AndroidX.Annotation => 0xdda814c6 => 86
	i32 3724971120, ; 291: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 121
	i32 3731644420, ; 292: System.Reactive => 0xde6c6004 => 76
	i32 3758932259, ; 293: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 110
	i32 3765508441, ; 294: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 55
	i32 3786282454, ; 295: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 95
	i32 3822602673, ; 296: Xamarin.AndroidX.Media => 0xe3d849b1 => 119
	i32 3829621856, ; 297: System.Numerics.dll => 0xe4436460 => 74
	i32 3841636137, ; 298: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 51
	i32 3849253459, ; 299: System.Runtime.InteropServices.dll => 0xe56ef253 => 157
	i32 3873536506, ; 300: System.Security.Principal => 0xe6e179fa => 17
	i32 3885922214, ; 301: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 131
	i32 3896106733, ; 302: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 303: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 100
	i32 3920810846, ; 304: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 150
	i32 3921031405, ; 305: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 134
	i32 3928044579, ; 306: System.Xml.ReaderWriter => 0xea213423 => 10
	i32 3930554604, ; 307: System.Security.Principal.dll => 0xea4780ec => 17
	i32 3931092270, ; 308: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 123
	i32 3945713374, ; 309: System.Data.DataSetExtensions.dll => 0xeb2ecede => 148
	i32 3955647286, ; 310: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 89
	i32 4024013275, ; 311: Firebase.Auth => 0xefd991db => 25
	i32 4044155772, ; 312: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 61
	i32 4073602200, ; 313: System.Threading.dll => 0xf2ce3c98 => 12
	i32 4078967171, ; 314: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 53
	i32 4101842092, ; 315: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 49
	i32 4105002889, ; 316: Mono.Security.dll => 0xf4ad5f89 => 162
	i32 4118552436, ; 317: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 34
	i32 4131741489, ; 318: System.Net.Http.Formatting => 0xf6455f31 => 73
	i32 4151237749, ; 319: System.Core => 0xf76edc75 => 69
	i32 4182413190, ; 320: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 116
	i32 4226117152, ; 321: jose-jwt => 0xfbe56e20 => 30
	i32 4260525087, ; 322: System.Buffers => 0xfdf2741f => 68
	i32 4263231520, ; 323: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 71
	i32 4274976490, ; 324: System.Runtime.Numerics => 0xfecef6ea => 15
	i32 4292120959 ; 325: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 116
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [326 x i32] [
	i32 114, i32 143, i32 66, i32 138, i32 3, i32 36, i32 22, i32 128, ; 0..7
	i32 157, i32 128, i32 3, i32 95, i32 47, i32 129, i32 93, i32 14, ; 8..15
	i32 109, i32 5, i32 152, i32 98, i32 113, i32 107, i32 32, i32 85, ; 16..23
	i32 74, i32 111, i32 26, i32 97, i32 137, i32 2, i32 24, i32 106, ; 24..31
	i32 11, i32 64, i32 70, i32 107, i32 118, i32 40, i32 57, i32 147, ; 32..39
	i32 6, i32 156, i32 153, i32 27, i32 150, i32 76, i32 154, i32 102, ; 40..47
	i32 82, i32 134, i32 90, i32 8, i32 84, i32 22, i32 72, i32 56, ; 48..55
	i32 149, i32 125, i32 5, i32 67, i32 143, i32 66, i32 111, i32 28, ; 56..63
	i32 159, i32 2, i32 6, i32 127, i32 51, i32 89, i32 140, i32 115, ; 64..71
	i32 70, i32 53, i32 32, i32 0, i32 52, i32 132, i32 122, i32 65, ; 72..79
	i32 90, i32 49, i32 61, i32 40, i32 62, i32 133, i32 23, i32 104, ; 80..87
	i32 158, i32 155, i32 144, i32 127, i32 1, i32 119, i32 99, i32 77, ; 88..95
	i32 19, i32 30, i32 156, i32 141, i32 71, i32 72, i32 88, i32 57, ; 96..103
	i32 161, i32 7, i32 103, i32 21, i32 23, i32 117, i32 136, i32 101, ; 104..111
	i32 20, i32 161, i32 78, i32 130, i32 142, i32 98, i32 14, i32 160, ; 112..119
	i32 94, i32 129, i32 69, i32 106, i32 34, i32 117, i32 142, i32 123, ; 120..127
	i32 44, i32 36, i32 16, i32 54, i32 137, i32 141, i32 91, i32 1, ; 128..135
	i32 18, i32 120, i32 41, i32 24, i32 37, i32 60, i32 68, i32 115, ; 136..143
	i32 112, i32 65, i32 41, i32 58, i32 78, i32 80, i32 75, i32 108, ; 144..151
	i32 139, i32 56, i32 54, i32 20, i32 55, i32 25, i32 132, i32 42, ; 152..159
	i32 118, i32 120, i32 110, i32 79, i32 50, i32 126, i32 45, i32 38, ; 160..167
	i32 86, i32 45, i32 10, i32 59, i32 81, i32 73, i32 124, i32 4, ; 168..175
	i32 33, i32 97, i32 145, i32 29, i32 148, i32 114, i32 27, i32 35, ; 176..183
	i32 82, i32 133, i32 16, i32 52, i32 46, i32 39, i32 101, i32 105, ; 184..191
	i32 113, i32 43, i32 59, i32 155, i32 130, i32 13, i32 9, i32 153, ; 192..199
	i32 15, i32 85, i32 35, i32 88, i32 138, i32 135, i32 99, i32 83, ; 200..207
	i32 44, i32 135, i32 131, i32 67, i32 0, i32 160, i32 151, i32 64, ; 208..215
	i32 136, i32 75, i32 87, i32 80, i32 37, i32 81, i32 154, i32 39, ; 216..223
	i32 104, i32 42, i32 109, i32 33, i32 43, i32 28, i32 121, i32 48, ; 224..231
	i32 13, i32 60, i32 11, i32 58, i32 9, i32 21, i32 46, i32 79, ; 232..239
	i32 159, i32 38, i32 48, i32 146, i32 103, i32 12, i32 19, i32 162, ; 240..247
	i32 94, i32 92, i32 62, i32 4, i32 47, i32 102, i32 146, i32 26, ; 248..255
	i32 91, i32 122, i32 108, i32 100, i32 29, i32 126, i32 77, i32 144, ; 256..263
	i32 83, i32 145, i32 105, i32 63, i32 147, i32 96, i32 92, i32 84, ; 264..271
	i32 139, i32 151, i32 31, i32 158, i32 124, i32 125, i32 31, i32 140, ; 272..279
	i32 87, i32 7, i32 112, i32 50, i32 63, i32 152, i32 93, i32 96, ; 280..287
	i32 18, i32 149, i32 86, i32 121, i32 76, i32 110, i32 55, i32 95, ; 288..295
	i32 119, i32 74, i32 51, i32 157, i32 17, i32 131, i32 8, i32 100, ; 296..303
	i32 150, i32 134, i32 10, i32 17, i32 123, i32 148, i32 89, i32 25, ; 304..311
	i32 61, i32 12, i32 53, i32 49, i32 162, i32 34, i32 73, i32 69, ; 312..319
	i32 116, i32 30, i32 68, i32 71, i32 15, i32 116 ; 320..325
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

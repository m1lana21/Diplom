; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [368 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 121
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 161
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 69
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 155
	i32 68219467, ; 4: System.Security.Cryptography.Primitives => 0x410f24b => 4
	i32 83768722, ; 5: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 38
	i32 88799905, ; 6: Acr.UserDialogs => 0x54afaa1 => 22
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 138
	i32 117431740, ; 8: System.Runtime.InteropServices => 0x6ffddbc => 178
	i32 120558881, ; 9: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 138
	i32 122201222, ; 10: CloudinaryDotNet.dll => 0x748a486 => 25
	i32 149972175, ; 11: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 4
	i32 165246403, ; 12: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 102
	i32 176714968, ; 13: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 49
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 141
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 100
	i32 220171995, ; 16: System.Diagnostics.Debug => 0xd1f8edb => 15
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 116
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 50
	i32 231814094, ; 19: System.Globalization => 0xdd133ce => 6
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 172
	i32 261689757, ; 21: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 105
	i32 278686392, ; 22: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 120
	i32 280482487, ; 23: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 114
	i32 300686228, ; 24: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 34
	i32 307891448, ; 25: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 149
	i32 318968648, ; 26: Xamarin.AndroidX.Activity.dll => 0x13031348 => 92
	i32 321597661, ; 27: System.Numerics => 0x132b30dd => 81
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 118
	i32 393699800, ; 29: Firebase => 0x177761d8 => 28
	i32 402672763, ; 30: Xamarin.Plugin.Calendar => 0x18004c7b => 165
	i32 419244643, ; 31: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 71
	i32 441335492, ; 32: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 104
	i32 442521989, ; 33: Xamarin.Essentials => 0x1a605985 => 150
	i32 442565967, ; 34: System.Collections => 0x1a61054f => 3
	i32 449147981, ; 35: Clens.dll => 0x1ac5744d => 24
	i32 450948140, ; 36: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 113
	i32 451504562, ; 37: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 12
	i32 465846621, ; 38: mscorlib => 0x1bc4415d => 67
	i32 469710990, ; 39: System.dll => 0x1bff388e => 76
	i32 476646585, ; 40: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 114
	i32 486930444, ; 41: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 126
	i32 490002678, ; 42: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 42
	i32 504143952, ; 43: Plugin.LocalNotification.dll => 0x1e0ca050 => 72
	i32 513247710, ; 44: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 60
	i32 526420162, ; 45: System.Transactions.dll => 0x1f6088c2 => 167
	i32 540030774, ; 46: System.IO.FileSystem.dll => 0x20303736 => 7
	i32 545304856, ; 47: System.Runtime.Extensions => 0x2080b118 => 177
	i32 577335427, ; 48: System.Security.Cryptography.Cng => 0x22697083 => 174
	i32 601719167, ; 49: FirebaseAuth.dll => 0x23dd817f => 29
	i32 605376203, ; 50: System.IO.Compression.FileSystem => 0x24154ecb => 170
	i32 610194910, ; 51: System.Reactive.dll => 0x245ed5de => 83
	i32 613668793, ; 52: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 175
	i32 627609679, ; 53: Xamarin.AndroidX.CustomView => 0x2568904f => 109
	i32 662205335, ; 54: System.Text.Encodings.Web.dll => 0x27787397 => 89
	i32 663517072, ; 55: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 146
	i32 666292255, ; 56: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 97
	i32 672442732, ; 57: System.Collections.Concurrent => 0x2814a96c => 9
	i32 690569205, ; 58: System.Xml.Linq.dll => 0x29293ff5 => 91
	i32 691439157, ; 59: Acr.UserDialogs.dll => 0x29368635 => 22
	i32 775507847, ; 60: System.IO.Compression => 0x2e394f87 => 78
	i32 782533833, ; 61: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 160
	i32 789151979, ; 62: Microsoft.Extensions.Options => 0x2f0980eb => 59
	i32 809851609, ; 63: System.Drawing.Common.dll => 0x30455ad9 => 169
	i32 836755697, ; 64: Xamarin.AndroidX.Lifecycle.Service => 0x31dfe0f1 => 122
	i32 843511501, ; 65: Xamarin.AndroidX.Print => 0x3246f6cd => 133
	i32 877678880, ; 66: System.Globalization.dll => 0x34505120 => 6
	i32 902159924, ; 67: Rg.Plugins.Popup => 0x35c5de34 => 73
	i32 906467404, ; 68: dotenv.net.dll => 0x3607984c => 26
	i32 928116545, ; 69: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 161
	i32 955402788, ; 70: Newtonsoft.Json => 0x38f24a24 => 69
	i32 957807352, ; 71: Plugin.CurrentActivity => 0x3916faf8 => 70
	i32 967690846, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 118
	i32 974778368, ; 73: FormsViewGroup.dll => 0x3a19f000 => 30
	i32 975236339, ; 74: System.Diagnostics.Tracing => 0x3a20ecf3 => 180
	i32 992768348, ; 75: System.Collections.dll => 0x3b2c715c => 3
	i32 994442037, ; 76: System.IO.FileSystem => 0x3b45fb35 => 7
	i32 1012816738, ; 77: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 137
	i32 1028951442, ; 78: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 54
	i32 1035644815, ; 79: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 96
	i32 1042160112, ; 80: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 157
	i32 1052210849, ; 81: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 123
	i32 1061503568, ; 82: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 160
	i32 1098259244, ; 83: System => 0x41761b2c => 76
	i32 1110309514, ; 84: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 56
	i32 1110581358, ; 85: Xamarin.Firebase.Auth => 0x4232206e => 151
	i32 1112354281, ; 86: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 34
	i32 1143481946, ; 87: Clens.Android.dll => 0x4428265a => 0
	i32 1173126369, ; 88: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 55
	i32 1175144683, ; 89: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 144
	i32 1178241025, ; 90: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 130
	i32 1186231468, ; 91: Newtonsoft.Json.Bson.dll => 0x46b474ac => 68
	i32 1204270330, ; 92: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 97
	i32 1204575371, ; 93: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 52
	i32 1220193633, ; 94: Microsoft.Net.Http.Headers => 0x48baad61 => 64
	i32 1236289705, ; 95: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 42
	i32 1253011324, ; 96: Microsoft.Win32.Registry => 0x4aaf6f7c => 65
	i32 1267360935, ; 97: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 145
	i32 1269851834, ; 98: BouncyCastle.Crypto => 0x4bb066ba => 23
	i32 1293217323, ; 99: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 111
	i32 1324164729, ; 100: System.Linq => 0x4eed2679 => 179
	i32 1333047053, ; 101: Xamarin.Firebase.Common => 0x4f74af0d => 153
	i32 1364015309, ; 102: System.IO => 0x514d38cd => 176
	i32 1365406463, ; 103: System.ServiceModel.Internals.dll => 0x516272ff => 173
	i32 1376866003, ; 104: Xamarin.AndroidX.SavedState => 0x52114ed3 => 137
	i32 1379779777, ; 105: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 106: Xamarin.AndroidX.Media.dll => 0x5333188f => 127
	i32 1406073936, ; 107: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 106
	i32 1411638395, ; 108: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 84
	i32 1411702249, ; 109: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 152
	i32 1434145427, ; 110: System.Runtime.Handles => 0x557b5293 => 20
	i32 1441421556, ; 111: jose-jwt.dll => 0x55ea58f4 => 32
	i32 1457743152, ; 112: System.Runtime.Extensions.dll => 0x56e36530 => 177
	i32 1460219004, ; 113: Xamarin.Forms.Xaml => 0x57092c7c => 158
	i32 1460893475, ; 114: System.IdentityModel.Tokens.Jwt => 0x57137723 => 77
	i32 1462112819, ; 115: System.IO.Compression.dll => 0x57261233 => 78
	i32 1469204771, ; 116: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 95
	i32 1470490898, ; 117: Microsoft.Extensions.Primitives => 0x57a5e912 => 60
	i32 1524747670, ; 118: Plugin.LocalNotification => 0x5ae1cd96 => 72
	i32 1543031311, ; 119: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 182
	i32 1565862583, ; 120: System.IO.FileSystem.Primitives => 0x5d552ab7 => 8
	i32 1582372066, ; 121: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 110
	i32 1592978981, ; 122: System.Runtime.Serialization.dll => 0x5ef2ee25 => 21
	i32 1596753216, ; 123: BouncyCastle.Crypto.dll => 0x5f2c8540 => 23
	i32 1622152042, ; 124: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 125
	i32 1624863272, ; 125: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 148
	i32 1634619362, ; 126: Xamarin.AndroidX.Room.Common => 0x616e4fe2 => 135
	i32 1636350590, ; 127: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 108
	i32 1639515021, ; 128: System.Net.Http.dll => 0x61b9038d => 79
	i32 1639986890, ; 129: System.Text.RegularExpressions => 0x61c036ca => 182
	i32 1657153582, ; 130: System.Runtime => 0x62c6282e => 85
	i32 1658241508, ; 131: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 142
	i32 1658251792, ; 132: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 159
	i32 1670060433, ; 133: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 105
	i32 1701541528, ; 134: System.Diagnostics.Debug.dll => 0x656b7698 => 15
	i32 1726116996, ; 135: System.Reflection.dll => 0x66e27484 => 181
	i32 1729485958, ; 136: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 101
	i32 1736948048, ; 137: Xamarin.AndroidX.Sqlite.dll => 0x6787b950 => 139
	i32 1758026047, ; 138: Xamarin.AndroidX.Room.Runtime.dll => 0x68c9593f => 136
	i32 1766324549, ; 139: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 141
	i32 1776026572, ; 140: System.Core.dll => 0x69dc03cc => 75
	i32 1788241197, ; 141: Xamarin.AndroidX.Fragment => 0x6a96652d => 113
	i32 1791755720, ; 142: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 36
	i32 1808609942, ; 143: Xamarin.AndroidX.Loader => 0x6bcd3296 => 125
	i32 1812481981, ; 144: Xamarin.Plugin.Calendar.dll => 0x6c0847bd => 165
	i32 1813201214, ; 145: Xamarin.Google.Android.Material => 0x6c13413e => 159
	i32 1818569960, ; 146: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 131
	i32 1819327070, ; 147: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 46
	i32 1820883333, ; 148: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 38
	i32 1824175904, ; 149: System.Text.Encoding.Extensions => 0x6cbab720 => 17
	i32 1828688058, ; 150: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 57
	i32 1867746548, ; 151: Xamarin.Essentials.dll => 0x6f538cf4 => 150
	i32 1875053220, ; 152: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 152
	i32 1878053835, ; 153: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 158
	i32 1885316902, ; 154: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 98
	i32 1900610850, ; 155: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1904755420, ; 156: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 19
	i32 1908813208, ; 157: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 163
	i32 1919157823, ; 158: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 128
	i32 1928288591, ; 159: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 43
	i32 1953382742, ; 160: Clens => 0x746e4156 => 24
	i32 1953680223, ; 161: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 39
	i32 1986222447, ; 162: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 63
	i32 2011961780, ; 163: System.Buffers.dll => 0x77ec19b4 => 74
	i32 2019465201, ; 164: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 123
	i32 2055257422, ; 165: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 119
	i32 2069514766, ; 166: Newtonsoft.Json.Bson => 0x7b5a4a0e => 68
	i32 2075706075, ; 167: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 43
	i32 2076659885, ; 168: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 61
	i32 2079903147, ; 169: System.Runtime.dll => 0x7bf8cdab => 85
	i32 2085039813, ; 170: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 87
	i32 2090596640, ; 171: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2097448633, ; 172: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 115
	i32 2126786730, ; 173: Xamarin.Forms.Platform.Android => 0x7ec430aa => 156
	i32 2129483829, ; 174: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 162
	i32 2181898931, ; 175: Microsoft.Extensions.Options.dll => 0x820d22b3 => 59
	i32 2187800146, ; 176: CloudinaryDotNet => 0x82672e52 => 25
	i32 2192057212, ; 177: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 57
	i32 2201231467, ; 178: System.Net.Http => 0x8334206b => 79
	i32 2204417087, ; 179: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 58
	i32 2216717168, ; 180: Firebase.Auth.dll => 0x84206b70 => 27
	i32 2217644978, ; 181: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 144
	i32 2242871324, ; 182: Microsoft.AspNetCore.Http.dll => 0x85af801c => 44
	i32 2244775296, ; 183: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 126
	i32 2256548716, ; 184: Xamarin.AndroidX.MultiDex => 0x8680336c => 128
	i32 2261435625, ; 185: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 117
	i32 2265110946, ; 186: System.Security.AccessControl.dll => 0x8702d9a2 => 86
	i32 2266799131, ; 187: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 53
	i32 2279703579, ; 188: Xamarin.AndroidX.Sqlite.Framework.dll => 0x87e1841b => 140
	i32 2279755925, ; 189: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 134
	i32 2285293097, ; 190: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 47
	i32 2291847450, ; 191: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 40
	i32 2315684594, ; 192: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 93
	i32 2321784778, ; 193: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 47
	i32 2368005991, ; 194: System.Xml.ReaderWriter.dll => 0x8d24e767 => 11
	i32 2369706906, ; 195: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 62
	i32 2382033717, ; 196: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 151
	i32 2383496789, ; 197: System.Security.Principal.Windows.dll => 0x8e114655 => 88
	i32 2392818924, ; 198: System.Net.Http.Formatting.dll => 0x8e9f84ec => 80
	i32 2409053734, ; 199: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 132
	i32 2454642406, ; 200: System.Text.Encoding.dll => 0x924edee6 => 5
	i32 2458592288, ; 201: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 35
	i32 2465532216, ; 202: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 104
	i32 2471841756, ; 203: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 204: Java.Interop.dll => 0x93918882 => 31
	i32 2501346920, ; 205: System.Data.DataSetExtensions => 0x95178668 => 168
	i32 2505896520, ; 206: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 121
	i32 2530480918, ; 207: FirebaseAuth => 0x96d41316 => 29
	i32 2537015816, ; 208: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 37
	i32 2562349572, ; 209: Microsoft.CSharp => 0x98ba5a04 => 50
	i32 2570120770, ; 210: System.Text.Encodings.Web => 0x9930ee42 => 89
	i32 2581819634, ; 211: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 145
	i32 2585220780, ; 212: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 17
	i32 2592341985, ; 213: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 55
	i32 2593268061, ; 214: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 48
	i32 2594125473, ; 215: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 41
	i32 2620871830, ; 216: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 108
	i32 2624644809, ; 217: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 112
	i32 2633051222, ; 218: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 120
	i32 2633959305, ; 219: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 45
	i32 2640290731, ; 220: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 62
	i32 2680438013, ; 221: dotenv.net => 0x9fc43cfd => 26
	i32 2693849962, ; 222: System.IO.dll => 0xa090e36a => 176
	i32 2701096212, ; 223: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 142
	i32 2715334215, ; 224: System.Threading.Tasks.dll => 0xa1d8b647 => 14
	i32 2717744543, ; 225: System.Security.Claims => 0xa1fd7d9f => 10
	i32 2719963679, ; 226: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 174
	i32 2724373263, ; 227: System.Runtime.Numerics.dll => 0xa262a30f => 16
	i32 2732626843, ; 228: Xamarin.AndroidX.Activity => 0xa2e0939b => 92
	i32 2735631878, ; 229: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 37
	i32 2737747696, ; 230: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 95
	i32 2739926663, ; 231: Xamarin.AndroidX.Sqlite.Framework => 0xa34ff687 => 140
	i32 2766581644, ; 232: Xamarin.Forms.Core => 0xa4e6af8c => 155
	i32 2778768386, ; 233: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 147
	i32 2804607052, ; 234: Xamarin.Firebase.Components.dll => 0xa72ae84c => 154
	i32 2806986428, ; 235: Plugin.CurrentActivity.dll => 0xa74f36bc => 70
	i32 2810250172, ; 236: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 106
	i32 2819470561, ; 237: System.Xml.dll => 0xa80db4e1 => 90
	i32 2847418871, ; 238: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 162
	i32 2850549256, ; 239: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 46
	i32 2853208004, ; 240: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 147
	i32 2855708567, ; 241: Xamarin.AndroidX.Transition => 0xaa36a797 => 143
	i32 2861816565, ; 242: Rg.Plugins.Popup.dll => 0xaa93daf5 => 73
	i32 2889014027, ; 243: Clens.Android => 0xac32db0b => 0
	i32 2901442782, ; 244: System.Reflection => 0xacf080de => 181
	i32 2903344695, ; 245: System.ComponentModel.Composition => 0xad0d8637 => 171
	i32 2905242038, ; 246: mscorlib.dll => 0xad2a79b6 => 67
	i32 2916838712, ; 247: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 148
	i32 2919462931, ; 248: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 249: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 94
	i32 2921417940, ; 250: System.Security.Cryptography.Xml => 0xae214cd4 => 87
	i32 2930358886, ; 251: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 39
	i32 2953735189, ; 252: Xamarin.AndroidX.Lifecycle.Service.dll => 0xb00e6c15 => 122
	i32 2968338931, ; 253: System.Security.Principal.Windows => 0xb0ed41f3 => 88
	i32 2972252294, ; 254: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 175
	i32 2978368250, ; 255: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 41
	i32 2978675010, ; 256: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 111
	i32 2996646946, ; 257: Microsoft.AspNetCore.Http => 0xb29d3422 => 44
	i32 3024354802, ; 258: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 116
	i32 3033331042, ; 259: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 35
	i32 3036999524, ; 260: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 45
	i32 3044182254, ; 261: FormsViewGroup => 0xb57288ee => 30
	i32 3057625584, ; 262: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 129
	i32 3058099980, ; 263: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 164
	i32 3069363400, ; 264: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 51
	i32 3071899978, ; 265: Xamarin.Firebase.Common.dll => 0xb719794a => 153
	i32 3075834255, ; 266: System.Threading.Tasks => 0xb755818f => 14
	i32 3084678329, ; 267: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 63
	i32 3090735792, ; 268: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 12
	i32 3093090641, ; 269: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 61
	i32 3099732863, ; 270: System.Security.Claims.dll => 0xb8c22b7f => 10
	i32 3111772706, ; 271: System.Runtime.Serialization => 0xb979e222 => 21
	i32 3113762169, ; 272: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 48
	i32 3132293585, ; 273: System.Security.AccessControl => 0xbab301d1 => 86
	i32 3144132135, ; 274: Xamarin.AndroidX.Sqlite => 0xbb67a627 => 139
	i32 3147165239, ; 275: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 180
	i32 3155681111, ; 276: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 40
	i32 3195844289, ; 277: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 51
	i32 3204380047, ; 278: System.Data.dll => 0xbefef58f => 166
	i32 3211777861, ; 279: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 110
	i32 3220365878, ; 280: System.Threading => 0xbff2e236 => 13
	i32 3226221578, ; 281: System.Runtime.Handles.dll => 0xc04c3c0a => 20
	i32 3230466174, ; 282: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 163
	i32 3247949154, ; 283: Mono.Security => 0xc197c562 => 183
	i32 3258312781, ; 284: Xamarin.AndroidX.CardView => 0xc235e84d => 101
	i32 3267021929, ; 285: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 99
	i32 3279906254, ; 286: Microsoft.Win32.Registry.dll => 0xc37f65ce => 65
	i32 3299363146, ; 287: System.Text.Encoding => 0xc4a8494a => 5
	i32 3300764913, ; 288: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 49
	i32 3317135071, ; 289: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 109
	i32 3317144872, ; 290: System.Data => 0xc5b79d28 => 166
	i32 3322403133, ; 291: Firebase.dll => 0xc607d93d => 28
	i32 3340431453, ; 292: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 98
	i32 3346324047, ; 293: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 130
	i32 3353484488, ; 294: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 115
	i32 3362522851, ; 295: Xamarin.AndroidX.Core => 0xc86c06e3 => 107
	i32 3366347497, ; 296: Java.Interop => 0xc8a662e9 => 31
	i32 3374999561, ; 297: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 134
	i32 3395150330, ; 298: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 84
	i32 3404865022, ; 299: System.ServiceModel.Internals => 0xcaf21dfe => 173
	i32 3429136800, ; 300: System.Xml => 0xcc6479a0 => 90
	i32 3430777524, ; 301: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 302: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 112
	i32 3476120550, ; 303: Mono.Android => 0xcf3163e6 => 66
	i32 3486566296, ; 304: System.Transactions => 0xcfd0c798 => 167
	i32 3493954962, ; 305: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 103
	i32 3501239056, ; 306: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 99
	i32 3509114376, ; 307: System.Xml.Linq => 0xd128d608 => 91
	i32 3536029504, ; 308: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 156
	i32 3567349600, ; 309: System.ComponentModel.Composition.dll => 0xd4a16f60 => 171
	i32 3596207933, ; 310: LiteDB.dll => 0xd659c73d => 33
	i32 3608519521, ; 311: System.Linq.dll => 0xd715a361 => 179
	i32 3612947231, ; 312: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 149
	i32 3618140916, ; 313: Xamarin.AndroidX.Preference => 0xd7a872f4 => 132
	i32 3627220390, ; 314: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 133
	i32 3629588173, ; 315: LiteDB => 0xd8571ecd => 33
	i32 3632359727, ; 316: Xamarin.Forms.Platform => 0xd881692f => 157
	i32 3633644679, ; 317: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 94
	i32 3638274909, ; 318: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 8
	i32 3641597786, ; 319: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 119
	i32 3657292374, ; 320: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 53
	i32 3672681054, ; 321: Mono.Android.dll => 0xdae8aa5e => 66
	i32 3676310014, ; 322: System.Web.Services.dll => 0xdb2009fe => 172
	i32 3682565725, ; 323: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 100
	i32 3684561358, ; 324: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 103
	i32 3684933406, ; 325: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 19
	i32 3689375977, ; 326: System.Drawing.Common => 0xdbe768e9 => 169
	i32 3718780102, ; 327: Xamarin.AndroidX.Annotation => 0xdda814c6 => 93
	i32 3724971120, ; 328: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 129
	i32 3731644420, ; 329: System.Reactive => 0xde6c6004 => 83
	i32 3735092365, ; 330: Xamarin.AndroidX.Room.Common.dll => 0xdea0fc8d => 135
	i32 3758932259, ; 331: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 117
	i32 3765508441, ; 332: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 58
	i32 3786282454, ; 333: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 102
	i32 3822602673, ; 334: Xamarin.AndroidX.Media => 0xe3d849b1 => 127
	i32 3829621856, ; 335: System.Numerics.dll => 0xe4436460 => 81
	i32 3841636137, ; 336: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 54
	i32 3849253459, ; 337: System.Runtime.InteropServices.dll => 0xe56ef253 => 178
	i32 3873536506, ; 338: System.Security.Principal => 0xe6e179fa => 18
	i32 3885922214, ; 339: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 143
	i32 3896106733, ; 340: System.Collections.Concurrent.dll => 0xe839deed => 9
	i32 3896760992, ; 341: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 107
	i32 3920810846, ; 342: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 170
	i32 3921031405, ; 343: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 146
	i32 3928044579, ; 344: System.Xml.ReaderWriter => 0xea213423 => 11
	i32 3930554604, ; 345: System.Security.Principal.dll => 0xea4780ec => 18
	i32 3931092270, ; 346: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 131
	i32 3945713374, ; 347: System.Data.DataSetExtensions.dll => 0xeb2ecede => 168
	i32 3955647286, ; 348: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 96
	i32 3970018735, ; 349: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 164
	i32 4024013275, ; 350: Firebase.Auth => 0xefd991db => 27
	i32 4044155772, ; 351: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 64
	i32 4073602200, ; 352: System.Threading.dll => 0xf2ce3c98 => 13
	i32 4078967171, ; 353: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 56
	i32 4101842092, ; 354: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 52
	i32 4105002889, ; 355: Mono.Security.dll => 0xf4ad5f89 => 183
	i32 4118552436, ; 356: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 36
	i32 4131741489, ; 357: System.Net.Http.Formatting => 0xf6455f31 => 80
	i32 4137181845, ; 358: Xamarin.AndroidX.Room.Runtime => 0xf6986295 => 136
	i32 4151237749, ; 359: System.Core => 0xf76edc75 => 75
	i32 4182413190, ; 360: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 124
	i32 4200179444, ; 361: Plugin.FirebaseAuth => 0xfa59a6f4 => 71
	i32 4226117152, ; 362: jose-jwt => 0xfbe56e20 => 32
	i32 4260525087, ; 363: System.Buffers => 0xfdf2741f => 74
	i32 4263231520, ; 364: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 77
	i32 4274976490, ; 365: System.Runtime.Numerics => 0xfecef6ea => 16
	i32 4284549794, ; 366: Xamarin.Firebase.Components => 0xff610aa2 => 154
	i32 4292120959 ; 367: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 124
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [368 x i32] [
	i32 121, i32 161, i32 69, i32 155, i32 4, i32 38, i32 22, i32 138, ; 0..7
	i32 178, i32 138, i32 25, i32 4, i32 102, i32 49, i32 141, i32 100, ; 8..15
	i32 15, i32 116, i32 50, i32 6, i32 172, i32 105, i32 120, i32 114, ; 16..23
	i32 34, i32 149, i32 92, i32 81, i32 118, i32 28, i32 165, i32 71, ; 24..31
	i32 104, i32 150, i32 3, i32 24, i32 113, i32 12, i32 67, i32 76, ; 32..39
	i32 114, i32 126, i32 42, i32 72, i32 60, i32 167, i32 7, i32 177, ; 40..47
	i32 174, i32 29, i32 170, i32 83, i32 175, i32 109, i32 89, i32 146, ; 48..55
	i32 97, i32 9, i32 91, i32 22, i32 78, i32 160, i32 59, i32 169, ; 56..63
	i32 122, i32 133, i32 6, i32 73, i32 26, i32 161, i32 69, i32 70, ; 64..71
	i32 118, i32 30, i32 180, i32 3, i32 7, i32 137, i32 54, i32 96, ; 72..79
	i32 157, i32 123, i32 160, i32 76, i32 56, i32 151, i32 34, i32 0, ; 80..87
	i32 55, i32 144, i32 130, i32 68, i32 97, i32 52, i32 64, i32 42, ; 88..95
	i32 65, i32 145, i32 23, i32 111, i32 179, i32 153, i32 176, i32 173, ; 96..103
	i32 137, i32 2, i32 127, i32 106, i32 84, i32 152, i32 20, i32 32, ; 104..111
	i32 177, i32 158, i32 77, i32 78, i32 95, i32 60, i32 72, i32 182, ; 112..119
	i32 8, i32 110, i32 21, i32 23, i32 125, i32 148, i32 135, i32 108, ; 120..127
	i32 79, i32 182, i32 85, i32 142, i32 159, i32 105, i32 15, i32 181, ; 128..135
	i32 101, i32 139, i32 136, i32 141, i32 75, i32 113, i32 36, i32 125, ; 136..143
	i32 165, i32 159, i32 131, i32 46, i32 38, i32 17, i32 57, i32 150, ; 144..151
	i32 152, i32 158, i32 98, i32 2, i32 19, i32 163, i32 128, i32 43, ; 152..159
	i32 24, i32 39, i32 63, i32 74, i32 123, i32 119, i32 68, i32 43, ; 160..167
	i32 61, i32 85, i32 87, i32 82, i32 115, i32 156, i32 162, i32 59, ; 168..175
	i32 25, i32 57, i32 79, i32 58, i32 27, i32 144, i32 44, i32 126, ; 176..183
	i32 128, i32 117, i32 86, i32 53, i32 140, i32 134, i32 47, i32 40, ; 184..191
	i32 93, i32 47, i32 11, i32 62, i32 151, i32 88, i32 80, i32 132, ; 192..199
	i32 5, i32 35, i32 104, i32 1, i32 31, i32 168, i32 121, i32 29, ; 200..207
	i32 37, i32 50, i32 89, i32 145, i32 17, i32 55, i32 48, i32 41, ; 208..215
	i32 108, i32 112, i32 120, i32 45, i32 62, i32 26, i32 176, i32 142, ; 216..223
	i32 14, i32 10, i32 174, i32 16, i32 92, i32 37, i32 95, i32 140, ; 224..231
	i32 155, i32 147, i32 154, i32 70, i32 106, i32 90, i32 162, i32 46, ; 232..239
	i32 147, i32 143, i32 73, i32 0, i32 181, i32 171, i32 67, i32 148, ; 240..247
	i32 82, i32 94, i32 87, i32 39, i32 122, i32 88, i32 175, i32 41, ; 248..255
	i32 111, i32 44, i32 116, i32 35, i32 45, i32 30, i32 129, i32 164, ; 256..263
	i32 51, i32 153, i32 14, i32 63, i32 12, i32 61, i32 10, i32 21, ; 264..271
	i32 48, i32 86, i32 139, i32 180, i32 40, i32 51, i32 166, i32 110, ; 272..279
	i32 13, i32 20, i32 163, i32 183, i32 101, i32 99, i32 65, i32 5, ; 280..287
	i32 49, i32 109, i32 166, i32 28, i32 98, i32 130, i32 115, i32 107, ; 288..295
	i32 31, i32 134, i32 84, i32 173, i32 90, i32 1, i32 112, i32 66, ; 296..303
	i32 167, i32 103, i32 99, i32 91, i32 156, i32 171, i32 33, i32 179, ; 304..311
	i32 149, i32 132, i32 133, i32 33, i32 157, i32 94, i32 8, i32 119, ; 312..319
	i32 53, i32 66, i32 172, i32 100, i32 103, i32 19, i32 169, i32 93, ; 320..327
	i32 129, i32 83, i32 135, i32 117, i32 58, i32 102, i32 127, i32 81, ; 328..335
	i32 54, i32 178, i32 18, i32 143, i32 9, i32 107, i32 170, i32 146, ; 336..343
	i32 11, i32 18, i32 131, i32 168, i32 96, i32 164, i32 27, i32 64, ; 344..351
	i32 13, i32 56, i32 52, i32 183, i32 36, i32 80, i32 136, i32 75, ; 352..359
	i32 124, i32 71, i32 32, i32 74, i32 77, i32 16, i32 154, i32 124 ; 368..367
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

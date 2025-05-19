; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [214 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 100
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 49
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 94
	i32 83768722, ; 3: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 18
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 2
	i32 122201222, ; 5: CloudinaryDotNet.dll => 0x748a486 => 5
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 73
	i32 176714968, ; 7: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 29
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 86
	i32 230752869, ; 9: Microsoft.CSharp.dll => 0xdc10265 => 30
	i32 300686228, ; 10: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 14
	i32 307891448, ; 11: Xamarin.AndroidX.Work.Runtime.dll => 0x125a0cf8 => 89
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 68
	i32 321597661, ; 13: System.Numerics => 0x132b30dd => 60
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 80
	i32 393699800, ; 15: Firebase => 0x177761d8 => 8
	i32 419244643, ; 16: Plugin.FirebaseAuth.dll => 0x18fd2a63 => 51
	i32 442521989, ; 17: Xamarin.Essentials => 0x1a605985 => 90
	i32 449147981, ; 18: Clens.dll => 0x1ac5744d => 4
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 78
	i32 465846621, ; 20: mscorlib => 0x1bc4415d => 47
	i32 469710990, ; 21: System.dll => 0x1bff388e => 56
	i32 490002678, ; 22: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 22
	i32 504143952, ; 23: Plugin.LocalNotification.dll => 0x1e0ca050 => 52
	i32 513247710, ; 24: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 40
	i32 601719167, ; 25: FirebaseAuth.dll => 0x23dd817f => 9
	i32 610194910, ; 26: System.Reactive.dll => 0x245ed5de => 61
	i32 627609679, ; 27: Xamarin.AndroidX.CustomView => 0x2568904f => 76
	i32 662205335, ; 28: System.Text.Encodings.Web.dll => 0x27787397 => 65
	i32 663517072, ; 29: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 87
	i32 666292255, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 71
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 67
	i32 691439157, ; 32: Acr.UserDialogs.dll => 0x29368635 => 2
	i32 782533833, ; 33: Xamarin.Google.AutoValue.Annotations.dll => 0x2ea484c9 => 99
	i32 789151979, ; 34: Microsoft.Extensions.Options => 0x2f0980eb => 39
	i32 809851609, ; 35: System.Drawing.Common.dll => 0x30455ad9 => 104
	i32 902159924, ; 36: Rg.Plugins.Popup => 0x35c5de34 => 53
	i32 906467404, ; 37: dotenv.net.dll => 0x3607984c => 6
	i32 928116545, ; 38: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 100
	i32 955402788, ; 39: Newtonsoft.Json => 0x38f24a24 => 49
	i32 957807352, ; 40: Plugin.CurrentActivity => 0x3916faf8 => 50
	i32 967690846, ; 41: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 80
	i32 974778368, ; 42: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 1012816738, ; 43: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1028951442, ; 44: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 34
	i32 1035644815, ; 45: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 70
	i32 1042160112, ; 46: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 96
	i32 1052210849, ; 47: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1061503568, ; 48: Xamarin.Google.AutoValue.Annotations => 0x3f454250 => 99
	i32 1098259244, ; 49: System => 0x41761b2c => 56
	i32 1110309514, ; 50: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 36
	i32 1110581358, ; 51: Xamarin.Firebase.Auth => 0x4232206e => 91
	i32 1112354281, ; 52: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 14
	i32 1143481946, ; 53: Clens.Android.dll => 0x4428265a => 0
	i32 1173126369, ; 54: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 35
	i32 1186231468, ; 55: Newtonsoft.Json.Bson.dll => 0x46b474ac => 48
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 71
	i32 1204575371, ; 57: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 32
	i32 1220193633, ; 58: Microsoft.Net.Http.Headers => 0x48baad61 => 44
	i32 1236289705, ; 59: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 22
	i32 1253011324, ; 60: Microsoft.Win32.Registry => 0x4aaf6f7c => 45
	i32 1269851834, ; 61: BouncyCastle.Crypto => 0x4bb066ba => 3
	i32 1293217323, ; 62: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 77
	i32 1333047053, ; 63: Xamarin.Firebase.Common => 0x4f74af0d => 93
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 105
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1406073936, ; 66: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 74
	i32 1411638395, ; 67: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 62
	i32 1411702249, ; 68: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 92
	i32 1441421556, ; 69: jose-jwt.dll => 0x55ea58f4 => 12
	i32 1460219004, ; 70: Xamarin.Forms.Xaml => 0x57092c7c => 97
	i32 1460893475, ; 71: System.IdentityModel.Tokens.Jwt => 0x57137723 => 57
	i32 1469204771, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 69
	i32 1470490898, ; 73: Microsoft.Extensions.Primitives => 0x57a5e912 => 40
	i32 1524747670, ; 74: Plugin.LocalNotification => 0x5ae1cd96 => 52
	i32 1592978981, ; 75: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1596753216, ; 76: BouncyCastle.Crypto.dll => 0x5f2c8540 => 3
	i32 1622152042, ; 77: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 83
	i32 1639515021, ; 78: System.Net.Http.dll => 0x61b9038d => 58
	i32 1658251792, ; 79: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 98
	i32 1729485958, ; 80: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 72
	i32 1766324549, ; 81: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 86
	i32 1776026572, ; 82: System.Core.dll => 0x69dc03cc => 55
	i32 1788241197, ; 83: Xamarin.AndroidX.Fragment => 0x6a96652d => 78
	i32 1791755720, ; 84: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 16
	i32 1808609942, ; 85: Xamarin.AndroidX.Loader => 0x6bcd3296 => 83
	i32 1813201214, ; 86: Xamarin.Google.Android.Material => 0x6c13413e => 98
	i32 1819327070, ; 87: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 26
	i32 1820883333, ; 88: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 18
	i32 1828688058, ; 89: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 37
	i32 1867746548, ; 90: Xamarin.Essentials.dll => 0x6f538cf4 => 90
	i32 1875053220, ; 91: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 92
	i32 1878053835, ; 92: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 97
	i32 1908813208, ; 93: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 101
	i32 1928288591, ; 94: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 23
	i32 1953382742, ; 95: Clens => 0x746e4156 => 4
	i32 1953680223, ; 96: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 19
	i32 1986222447, ; 97: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 43
	i32 2011961780, ; 98: System.Buffers.dll => 0x77ec19b4 => 54
	i32 2019465201, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2055257422, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 81
	i32 2069514766, ; 101: Newtonsoft.Json.Bson => 0x7b5a4a0e => 48
	i32 2075706075, ; 102: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 23
	i32 2076659885, ; 103: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 41
	i32 2085039813, ; 104: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 63
	i32 2097448633, ; 105: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 79
	i32 2126786730, ; 106: Xamarin.Forms.Platform.Android => 0x7ec430aa => 95
	i32 2181898931, ; 107: Microsoft.Extensions.Options.dll => 0x820d22b3 => 39
	i32 2187800146, ; 108: CloudinaryDotNet => 0x82672e52 => 5
	i32 2192057212, ; 109: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 37
	i32 2201231467, ; 110: System.Net.Http => 0x8334206b => 58
	i32 2204417087, ; 111: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 38
	i32 2216717168, ; 112: Firebase.Auth.dll => 0x84206b70 => 7
	i32 2242871324, ; 113: Microsoft.AspNetCore.Http.dll => 0x85af801c => 24
	i32 2266799131, ; 114: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 33
	i32 2279755925, ; 115: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2285293097, ; 116: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 27
	i32 2291847450, ; 117: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 20
	i32 2321784778, ; 118: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 27
	i32 2369706906, ; 119: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 42
	i32 2382033717, ; 120: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 91
	i32 2383496789, ; 121: System.Security.Principal.Windows.dll => 0x8e114655 => 64
	i32 2392818924, ; 122: System.Net.Http.Formatting.dll => 0x8e9f84ec => 59
	i32 2458592288, ; 123: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 15
	i32 2475788418, ; 124: Java.Interop.dll => 0x93918882 => 11
	i32 2530480918, ; 125: FirebaseAuth => 0x96d41316 => 9
	i32 2537015816, ; 126: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 17
	i32 2562349572, ; 127: Microsoft.CSharp => 0x98ba5a04 => 30
	i32 2570120770, ; 128: System.Text.Encodings.Web => 0x9930ee42 => 65
	i32 2592341985, ; 129: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 35
	i32 2593268061, ; 130: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 28
	i32 2594125473, ; 131: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 21
	i32 2633959305, ; 132: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 25
	i32 2640290731, ; 133: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 42
	i32 2680438013, ; 134: dotenv.net => 0x9fc43cfd => 6
	i32 2732626843, ; 135: Xamarin.AndroidX.Activity => 0xa2e0939b => 68
	i32 2735631878, ; 136: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 17
	i32 2737747696, ; 137: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 69
	i32 2766581644, ; 138: Xamarin.Forms.Core => 0xa4e6af8c => 94
	i32 2778768386, ; 139: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 88
	i32 2806986428, ; 140: Plugin.CurrentActivity.dll => 0xa74f36bc => 50
	i32 2810250172, ; 141: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 74
	i32 2819470561, ; 142: System.Xml.dll => 0xa80db4e1 => 66
	i32 2850549256, ; 143: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 26
	i32 2853208004, ; 144: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 88
	i32 2861816565, ; 145: Rg.Plugins.Popup.dll => 0xaa93daf5 => 53
	i32 2889014027, ; 146: Clens.Android => 0xac32db0b => 0
	i32 2905242038, ; 147: mscorlib.dll => 0xad2a79b6 => 47
	i32 2921417940, ; 148: System.Security.Cryptography.Xml => 0xae214cd4 => 63
	i32 2930358886, ; 149: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 19
	i32 2968338931, ; 150: System.Security.Principal.Windows => 0xb0ed41f3 => 64
	i32 2978368250, ; 151: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 21
	i32 2978675010, ; 152: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 77
	i32 2996646946, ; 153: Microsoft.AspNetCore.Http => 0xb29d3422 => 24
	i32 3033331042, ; 154: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 15
	i32 3036999524, ; 155: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 25
	i32 3044182254, ; 156: FormsViewGroup => 0xb57288ee => 10
	i32 3058099980, ; 157: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 102
	i32 3069363400, ; 158: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 31
	i32 3071899978, ; 159: Xamarin.Firebase.Common.dll => 0xb719794a => 93
	i32 3084678329, ; 160: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 43
	i32 3093090641, ; 161: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 41
	i32 3111772706, ; 162: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3113762169, ; 163: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 28
	i32 3155681111, ; 164: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 20
	i32 3195844289, ; 165: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 31
	i32 3204380047, ; 166: System.Data.dll => 0xbefef58f => 103
	i32 3230466174, ; 167: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 101
	i32 3247949154, ; 168: Mono.Security => 0xc197c562 => 106
	i32 3258312781, ; 169: Xamarin.AndroidX.CardView => 0xc235e84d => 72
	i32 3279906254, ; 170: Microsoft.Win32.Registry.dll => 0xc37f65ce => 45
	i32 3300764913, ; 171: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 29
	i32 3317135071, ; 172: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 76
	i32 3317144872, ; 173: System.Data => 0xc5b79d28 => 103
	i32 3322403133, ; 174: Firebase.dll => 0xc607d93d => 8
	i32 3353484488, ; 175: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 79
	i32 3362522851, ; 176: Xamarin.AndroidX.Core => 0xc86c06e3 => 75
	i32 3366347497, ; 177: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 178: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3395150330, ; 179: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 62
	i32 3404865022, ; 180: System.ServiceModel.Internals => 0xcaf21dfe => 105
	i32 3429136800, ; 181: System.Xml => 0xcc6479a0 => 66
	i32 3476120550, ; 182: Mono.Android => 0xcf3163e6 => 46
	i32 3509114376, ; 183: System.Xml.Linq => 0xd128d608 => 67
	i32 3536029504, ; 184: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 95
	i32 3596207933, ; 185: LiteDB.dll => 0xd659c73d => 13
	i32 3612947231, ; 186: Xamarin.AndroidX.Work.Runtime => 0xd759331f => 89
	i32 3629588173, ; 187: LiteDB => 0xd8571ecd => 13
	i32 3632359727, ; 188: Xamarin.Forms.Platform => 0xd881692f => 96
	i32 3641597786, ; 189: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 81
	i32 3657292374, ; 190: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 33
	i32 3672681054, ; 191: Mono.Android.dll => 0xdae8aa5e => 46
	i32 3689375977, ; 192: System.Drawing.Common => 0xdbe768e9 => 104
	i32 3731644420, ; 193: System.Reactive => 0xde6c6004 => 61
	i32 3765508441, ; 194: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 38
	i32 3786282454, ; 195: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 73
	i32 3829621856, ; 196: System.Numerics.dll => 0xe4436460 => 60
	i32 3841636137, ; 197: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 34
	i32 3896760992, ; 198: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 75
	i32 3921031405, ; 199: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 87
	i32 3955647286, ; 200: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 70
	i32 3970018735, ; 201: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 102
	i32 4024013275, ; 202: Firebase.Auth => 0xefd991db => 7
	i32 4044155772, ; 203: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 44
	i32 4078967171, ; 204: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 36
	i32 4101842092, ; 205: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 32
	i32 4105002889, ; 206: Mono.Security.dll => 0xf4ad5f89 => 106
	i32 4118552436, ; 207: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 16
	i32 4131741489, ; 208: System.Net.Http.Formatting => 0xf6455f31 => 59
	i32 4151237749, ; 209: System.Core => 0xf76edc75 => 55
	i32 4200179444, ; 210: Plugin.FirebaseAuth => 0xfa59a6f4 => 51
	i32 4226117152, ; 211: jose-jwt => 0xfbe56e20 => 12
	i32 4260525087, ; 212: System.Buffers => 0xfdf2741f => 54
	i32 4263231520 ; 213: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 57
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [214 x i32] [
	i32 100, i32 49, i32 94, i32 18, i32 2, i32 5, i32 73, i32 29, ; 0..7
	i32 86, i32 30, i32 14, i32 89, i32 68, i32 60, i32 80, i32 8, ; 8..15
	i32 51, i32 90, i32 4, i32 78, i32 47, i32 56, i32 22, i32 52, ; 16..23
	i32 40, i32 9, i32 61, i32 76, i32 65, i32 87, i32 71, i32 67, ; 24..31
	i32 2, i32 99, i32 39, i32 104, i32 53, i32 6, i32 100, i32 49, ; 32..39
	i32 50, i32 80, i32 10, i32 85, i32 34, i32 70, i32 96, i32 82, ; 40..47
	i32 99, i32 56, i32 36, i32 91, i32 14, i32 0, i32 35, i32 48, ; 48..55
	i32 71, i32 32, i32 44, i32 22, i32 45, i32 3, i32 77, i32 93, ; 56..63
	i32 105, i32 85, i32 74, i32 62, i32 92, i32 12, i32 97, i32 57, ; 64..71
	i32 69, i32 40, i32 52, i32 1, i32 3, i32 83, i32 58, i32 98, ; 72..79
	i32 72, i32 86, i32 55, i32 78, i32 16, i32 83, i32 98, i32 26, ; 80..87
	i32 18, i32 37, i32 90, i32 92, i32 97, i32 101, i32 23, i32 4, ; 88..95
	i32 19, i32 43, i32 54, i32 82, i32 81, i32 48, i32 23, i32 41, ; 96..103
	i32 63, i32 79, i32 95, i32 39, i32 5, i32 37, i32 58, i32 38, ; 104..111
	i32 7, i32 24, i32 33, i32 84, i32 27, i32 20, i32 27, i32 42, ; 112..119
	i32 91, i32 64, i32 59, i32 15, i32 11, i32 9, i32 17, i32 30, ; 120..127
	i32 65, i32 35, i32 28, i32 21, i32 25, i32 42, i32 6, i32 68, ; 128..135
	i32 17, i32 69, i32 94, i32 88, i32 50, i32 74, i32 66, i32 26, ; 136..143
	i32 88, i32 53, i32 0, i32 47, i32 63, i32 19, i32 64, i32 21, ; 144..151
	i32 77, i32 24, i32 15, i32 25, i32 10, i32 102, i32 31, i32 93, ; 152..159
	i32 43, i32 41, i32 1, i32 28, i32 20, i32 31, i32 103, i32 101, ; 160..167
	i32 106, i32 72, i32 45, i32 29, i32 76, i32 103, i32 8, i32 79, ; 168..175
	i32 75, i32 11, i32 84, i32 62, i32 105, i32 66, i32 46, i32 67, ; 176..183
	i32 95, i32 13, i32 89, i32 13, i32 96, i32 81, i32 33, i32 46, ; 184..191
	i32 104, i32 61, i32 38, i32 73, i32 60, i32 34, i32 75, i32 87, ; 192..199
	i32 70, i32 102, i32 7, i32 44, i32 36, i32 32, i32 106, i32 16, ; 200..207
	i32 59, i32 55, i32 51, i32 12, i32 54, i32 57 ; 208..213
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

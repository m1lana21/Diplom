; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [368 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 112
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 72
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 60
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 66
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 56
	i64 195258733703605363, ; 5: System.Net.Http.Formatting => 0x2b5b2c8a5b22c73 => 80
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 102
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 137
	i64 263803244706540312, ; 8: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 73
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 138
	i64 464346026994987652, ; 10: System.Reactive.dll => 0x671b04057e67284 => 83
	i64 535107122908063503, ; 11: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 58
	i64 634308326490598313, ; 12: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 121
	i64 687654259221141486, ; 13: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 162
	i64 702024105029695270, ; 14: System.Drawing.Common => 0x9be17343c0e7726 => 169
	i64 720058930071658100, ; 15: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 115
	i64 733635950719068722, ; 16: Plugin.FirebaseAuth => 0xa2e66029d10ea32 => 71
	i64 872800313462103108, ; 17: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 111
	i64 940822596282819491, ; 18: System.Transactions => 0xd0e792aa81923a3 => 167
	i64 960778385402502048, ; 19: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 20
	i64 996343623809489702, ; 20: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 157
	i64 1000557547492888992, ; 21: Mono.Security.dll => 0xde2b1c9cba651a0 => 183
	i64 1001381392624924420, ; 22: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 35
	i64 1120440138749646132, ; 23: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 159
	i64 1174316278192966533, ; 24: Clens => 0x104c026ee7a68b85 => 24
	i64 1315114680217950157, ; 25: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 97
	i64 1326794923564391531, ; 26: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 36
	i64 1392315331768750440, ; 27: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 152
	i64 1425944114962822056, ; 28: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 21
	i64 1465843056802068477, ; 29: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 154
	i64 1491290866305144020, ; 30: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 160
	i64 1624659445732251991, ; 31: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 95
	i64 1628611045998245443, ; 32: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 124
	i64 1636321030536304333, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 116
	i64 1639340239664632727, ; 34: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 38
	i64 1731380447121279447, ; 35: Newtonsoft.Json => 0x18071957e9b889d7 => 69
	i64 1795316252682057001, ; 36: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 96
	i64 1836611346387731153, ; 37: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 137
	i64 1875917498431009007, ; 38: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 93
	i64 1972385128188460614, ; 39: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 175
	i64 1981742497975770890, ; 40: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 123
	i64 2133195048986300728, ; 41: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 69
	i64 2136356949452311481, ; 42: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 128
	i64 2165725771938924357, ; 43: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 100
	i64 2262844636196693701, ; 44: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 111
	i64 2284400282711631002, ; 45: System.Web.Services => 0x1fb3d1f42fd4249a => 172
	i64 2287834202362508563, ; 46: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 9
	i64 2315304989185124968, ; 47: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 7
	i64 2329709569556905518, ; 48: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 119
	i64 2335503487726329082, ; 49: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 89
	i64 2337758774805907496, ; 50: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 84
	i64 2470498323731680442, ; 51: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 106
	i64 2479423007379663237, ; 52: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 144
	i64 2489738558632930771, ; 53: Acr.UserDialogs.dll => 0x228d540722e8add3 => 22
	i64 2497223385847772520, ; 54: System.Runtime => 0x22a7eb7046413568 => 85
	i64 2547086958574651984, ; 55: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 92
	i64 2592350477072141967, ; 56: System.Xml.dll => 0x23f9e10627330e8f => 90
	i64 2612152650457191105, ; 57: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 63
	i64 2624866290265602282, ; 58: mscorlib.dll => 0x246d65fbde2db8ea => 67
	i64 2694427813909235223, ; 59: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 132
	i64 2783046991838674048, ; 60: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 84
	i64 2801558180824670388, ; 61: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 70
	i64 2815524396660695947, ; 62: System.Security.AccessControl => 0x2712c0857f68238b => 86
	i64 2823013021940677500, ; 63: CloudinaryDotNet => 0x272d5b62f1137b7c => 25
	i64 2960931600190307745, ; 64: Xamarin.Forms.Core => 0x2917579a49927da1 => 155
	i64 3017704767998173186, ; 65: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 159
	i64 3168817962471953758, ; 66: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 56
	i64 3266690593535380875, ; 67: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 37
	i64 3281594302220646930, ; 68: System.Security.Principal => 0x2d8a90a198ceba12 => 18
	i64 3289520064315143713, ; 69: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 118
	i64 3303437397778967116, ; 70: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 94
	i64 3311221304742556517, ; 71: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 72: System.Runtime.Numerics => 0x2e27e21c8958b48d => 16
	i64 3339480741387858005, ; 73: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 149
	i64 3364695309916733813, ; 74: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 153
	i64 3396143930648122816, ; 75: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 55
	i64 3402534845034375023, ; 76: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 77
	i64 3411255996856937470, ; 77: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 163
	i64 3493805808809882663, ; 78: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 142
	i64 3522470458906976663, ; 79: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 141
	i64 3523004241079211829, ; 80: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 52
	i64 3531994851595924923, ; 81: System.Numerics => 0x31042a9aade235bb => 81
	i64 3571415421602489686, ; 82: System.Runtime.dll => 0x319037675df7e556 => 85
	i64 3609787854626478660, ; 83: Plugin.CurrentActivity => 0x32188aeda587da44 => 70
	i64 3638003163729360188, ; 84: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 53
	i64 3647754201059316852, ; 85: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 11
	i64 3716579019761409177, ; 86: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 87: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 134
	i64 3772598417116884899, ; 88: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 112
	i64 4005135229510678782, ; 89: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 39
	i64 4168469861834746866, ; 90: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 10
	i64 4202567570116092282, ; 91: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 68
	i64 4225924121207573736, ; 92: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 34
	i64 4243591448627561453, ; 93: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 45
	i64 4247996603072512073, ; 94: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 164
	i64 4248804899347366872, ; 95: Xamarin.AndroidX.Room.Common.dll => 0x3af6c98b798a03d8 => 135
	i64 4250192876909962317, ; 96: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 41
	i64 4456825071931920169, ; 97: dotenv.net.dll => 0x3dd9d2ca268e8f29 => 26
	i64 4525561845656915374, ; 98: System.ServiceModel.Internals => 0x3ece06856b710dae => 173
	i64 4636684751163556186, ; 99: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 146
	i64 4702770163853758138, ; 100: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 154
	i64 4782108999019072045, ; 101: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 99
	i64 4794310189461587505, ; 102: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 92
	i64 4795410492532947900, ; 103: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 141
	i64 5081566143765835342, ; 104: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 105: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5106322746114322454, ; 106: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 36
	i64 5112836352847824253, ; 107: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 49
	i64 5142919913060024034, ; 108: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 156
	i64 5177565741364132164, ; 109: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 44
	i64 5203618020066742981, ; 110: Xamarin.Essentials => 0x4836f704f0e652c5 => 150
	i64 5205316157927637098, ; 111: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 126
	i64 5262971552273843408, ; 112: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 18
	i64 5348796042099802469, ; 113: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 127
	i64 5376510917114486089, ; 114: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 144
	i64 5408338804355907810, ; 115: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 143
	i64 5427880336170504416, ; 116: Plugin.FirebaseAuth.dll => 0x4b53b46858c550e0 => 71
	i64 5446034149219586269, ; 117: System.Diagnostics.Debug => 0x4b94333452e150dd => 15
	i64 5451019430259338467, ; 118: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 105
	i64 5507995362134886206, ; 119: System.Core.dll => 0x4c705499688c873e => 75
	i64 5514426807633697079, ; 120: Xamarin.AndroidX.Sqlite => 0x4c872df700e5d937 => 139
	i64 5527431512186326818, ; 121: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 8
	i64 5528247634813456972, ; 122: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 72
	i64 5610815111739789596, ; 123: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 35
	i64 5650097808083101034, ; 124: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 175
	i64 5692067934154308417, ; 125: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 148
	i64 5757522595884336624, ; 126: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 103
	i64 5759039185982771185, ; 127: Xamarin.AndroidX.Lifecycle.Service => 0x4fec37a0800ecff1 => 122
	i64 5814345312393086621, ; 128: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 132
	i64 5896680224035167651, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 120
	i64 5984759512290286505, ; 130: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 4
	i64 6085203216496545422, ; 131: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 157
	i64 6086316965293125504, ; 132: FormsViewGroup.dll => 0x5476f10882baef80 => 30
	i64 6089874397499778571, ; 133: Clens.Android.dll => 0x5483947fbdb8660b => 0
	i64 6093913051823437908, ; 134: Clens.Android => 0x5491eda23a0d7854 => 0
	i64 6218967553231149354, ; 135: Firebase.Auth.dll => 0x564e360a4805d92a => 27
	i64 6319713645133255417, ; 136: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 121
	i64 6401687960814735282, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 119
	i64 6403742896930319886, ; 138: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 151
	i64 6504860066809920875, ; 139: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 100
	i64 6548213210057960872, ; 140: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 109
	i64 6560151584539558821, ; 141: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 59
	i64 6591024623626361694, ; 142: System.Web.Services.dll => 0x5b7805f9751a1b5e => 172
	i64 6659513131007730089, ; 143: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 115
	i64 6876862101832370452, ; 144: System.Xml.Linq => 0x5f6f85a57d108914 => 91
	i64 6894844156784520562, ; 145: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911788284027924527, ; 146: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 42
	i64 7036436454368433159, ; 147: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 117
	i64 7060448593242414269, ; 148: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 87
	i64 7103753931438454322, ; 149: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 114
	i64 7111211609209905225, ; 150: Xamarin.Plugin.Calendar => 0x62b0194821972049 => 165
	i64 7112547816752919026, ; 151: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 7
	i64 7141577505875122296, ; 152: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 19
	i64 7270811800166795866, ; 153: System.Linq => 0x64e71ccf51a90a5a => 179
	i64 7331765743953618630, ; 154: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 44
	i64 7338192458477945005, ; 155: System.Reflection => 0x65d67f295d0740ad => 181
	i64 7363614467969488359, ; 156: Xamarin.AndroidX.Sqlite.Framework.dll => 0x6630d058323f95e7 => 140
	i64 7488575175965059935, ; 157: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 91
	i64 7496222613193209122, ; 158: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 77
	i64 7602111570124318452, ; 159: System.Reactive => 0x698020320025a6f4 => 83
	i64 7635363394907363464, ; 160: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 155
	i64 7637365915383206639, ; 161: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 150
	i64 7654504624184590948, ; 162: System.Net.Http => 0x6a3a4366801b8264 => 79
	i64 7735176074855944702, ; 163: Microsoft.CSharp => 0x6b58dda848e391fe => 50
	i64 7756332380610150586, ; 164: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 160
	i64 7820441508502274321, ; 165: System.Data => 0x6c87ca1e14ff8111 => 166
	i64 7836164640616011524, ; 166: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 95
	i64 7842383726582361265, ; 167: Xamarin.AndroidX.Sqlite.dll => 0x6cd5be72d73eecb1 => 139
	i64 7972383140441761405, ; 168: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 51
	i64 8044118961405839122, ; 169: System.ComponentModel.Composition => 0x6fa2739369944712 => 171
	i64 8064050204834738623, ; 170: System.Collections.dll => 0x6fe942efa61731bf => 3
	i64 8083354569033831015, ; 171: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 118
	i64 8103644804370223335, ; 172: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 168
	i64 8167236081217502503, ; 173: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 31
	i64 8185542183669246576, ; 174: System.Collections => 0x7198e33f4794aa70 => 3
	i64 8290740647658429042, ; 175: System.Runtime.Extensions => 0x730ea0b15c929a72 => 177
	i64 8398329775253868912, ; 176: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 104
	i64 8399132193771933415, ; 177: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 61
	i64 8400357532724379117, ; 178: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 131
	i64 8601935802264776013, ; 179: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 143
	i64 8611142787134128904, ; 180: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 42
	i64 8626175481042262068, ; 181: Java.Interop => 0x77b654e585b55834 => 31
	i64 8638972117149407195, ; 182: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 50
	i64 8639588376636138208, ; 183: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 130
	i64 8646252517957300335, ; 184: jose-jwt.dll => 0x77fda8daf32bf06f => 32
	i64 8648495978913578441, ; 185: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 65
	i64 8684531736582871431, ; 186: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 170
	i64 8702320156596882678, ; 187: Firebase.dll => 0x78c4da1357adccf6 => 28
	i64 9041985878101337471, ; 188: BouncyCastle.Crypto => 0x7d7b963fe854257f => 23
	i64 9057635389615298436, ; 189: LiteDB => 0x7db32f65bf06d784 => 33
	i64 9073964088825785326, ; 190: FirebaseAuth => 0x7ded32434b1cabee => 29
	i64 9111603110219107042, ; 191: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 52
	i64 9238909584418939062, ; 192: Xamarin.AndroidX.Sqlite.Framework => 0x80373351333e20b6 => 140
	i64 9296667808972889535, ; 193: LiteDB.dll => 0x8104661dcca35dbf => 33
	i64 9312692141327339315, ; 194: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 148
	i64 9324707631942237306, ; 195: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 96
	i64 9413000421947348542, ; 196: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 41
	i64 9427266486299436557, ; 197: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 62
	i64 9584643793929893533, ; 198: System.IO.dll => 0x85037ebfbbd7f69d => 176
	i64 9659729154652888475, ; 199: System.Text.RegularExpressions => 0x860e407c9991dd9b => 182
	i64 9662334977499516867, ; 200: System.Numerics.dll => 0x8617827802b0cfc3 => 81
	i64 9678050649315576968, ; 201: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 106
	i64 9711637524876806384, ; 202: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 127
	i64 9808709177481450983, ; 203: Mono.Android.dll => 0x881f890734e555e7 => 66
	i64 9825649861376906464, ; 204: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 103
	i64 9834056768316610435, ; 205: System.Transactions.dll => 0x8879968718899783 => 167
	i64 9864374015518639636, ; 206: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 38
	i64 9875200773399460291, ; 207: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 162
	i64 9994308163963284983, ; 208: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 68
	i64 9998632235833408227, ; 209: Mono.Security => 0x8ac2470b209ebae3 => 183
	i64 10038780035334861115, ; 210: System.Net.Http.dll => 0x8b50e941206af13b => 79
	i64 10144742755892837524, ; 211: Firebase => 0x8cc95dc98eb5bc94 => 28
	i64 10229024438826829339, ; 212: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 109
	i64 10243523786148452761, ; 213: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 43
	i64 10360651442923773544, ; 214: System.Text.Encoding => 0x8fc86d98211c1e68 => 5
	i64 10376576884623852283, ; 215: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 142
	i64 10421511051509811956, ; 216: Xamarin.AndroidX.Room.Runtime.dll => 0x90a0a515f80ccaf4 => 136
	i64 10430153318873392755, ; 217: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 107
	i64 10458986597687352396, ; 218: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 48
	i64 10566960649245365243, ; 219: System.Globalization.dll => 0x92a562b96dcd13fb => 6
	i64 10679925812255520825, ; 220: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 149
	i64 10714184849103829812, ; 221: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 177
	i64 10847732767863316357, ; 222: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 97
	i64 10849603794298325860, ; 223: Xamarin.AndroidX.Room.Common => 0x9691892ad0e1cb64 => 135
	i64 10964653383833615866, ; 224: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 180
	i64 11002576679268595294, ; 225: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 57
	i64 11023048688141570732, ; 226: System.Core => 0x98f9bc61168392ac => 75
	i64 11037814507248023548, ; 227: System.Xml => 0x992e31d0412bf7fc => 90
	i64 11050168729868392624, ; 228: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 46
	i64 11162124722117608902, ; 229: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 147
	i64 11226290749488709958, ; 230: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 59
	i64 11340910727871153756, ; 231: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 108
	i64 11392833485892708388, ; 232: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 133
	i64 11485890710487134646, ; 233: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 178
	i64 11529969570048099689, ; 234: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 147
	i64 11578238080964724296, ; 235: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 117
	i64 11580057168383206117, ; 236: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 93
	i64 11597940890313164233, ; 237: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11666126733838079721, ; 238: Xamarin.Plugin.Calendar.dll => 0xa1e66874631b56e9 => 165
	i64 11672361001936329215, ; 239: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 114
	i64 11743665907891708234, ; 240: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 14
	i64 12102847907131387746, ; 241: System.Buffers => 0xa7f5f40c43256f62 => 74
	i64 12137774235383566651, ; 242: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 145
	i64 12332222936682028543, ; 243: System.Runtime.Handles => 0xab24db6c07db5dff => 20
	i64 12441092376399691269, ; 244: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 34
	i64 12451044538927396471, ; 245: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 113
	i64 12466513435562512481, ; 246: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 125
	i64 12472616430980764132, ; 247: CloudinaryDotNet.dll => 0xad17a28fac4f11e4 => 25
	i64 12487638416075308985, ; 248: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 110
	i64 12528155905152483962, ; 249: Firebase.Auth => 0xaddcf36b3153827a => 27
	i64 12538491095302438457, ; 250: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 101
	i64 12550732019250633519, ; 251: System.IO.Compression => 0xae2d28465e8e1b2f => 78
	i64 12700543734426720211, ; 252: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 102
	i64 12708238894395270091, ; 253: System.IO => 0xb05cbbf17d3ba3cb => 176
	i64 12708922737231849740, ; 254: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 17
	i64 12843321153144804894, ; 255: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 60
	i64 12963446364377008305, ; 256: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 169
	i64 13081516019875753442, ; 257: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 23
	i64 13086625805112021739, ; 258: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 39
	i64 13308002692117796025, ; 259: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 48
	i64 13370592475155966277, ; 260: System.Runtime.Serialization => 0xb98de304062ea945 => 21
	i64 13401370062847626945, ; 261: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 145
	i64 13404347523447273790, ; 262: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 104
	i64 13404984788036896679, ; 263: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 43
	i64 13433674248395881694, ; 264: jose-jwt => 0xba6dff8de3f2fcde => 32
	i64 13454009404024712428, ; 265: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 161
	i64 13491513212026656886, ; 266: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 98
	i64 13550417756503177631, ; 267: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 55
	i64 13572454107664307259, ; 268: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 134
	i64 13647894001087880694, ; 269: System.Data.dll => 0xbd670f48cb071df6 => 166
	i64 13710614125866346983, ; 270: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 86
	i64 13921917134693230900, ; 271: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 49
	i64 13959074834287824816, ; 272: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 113
	i64 13967638549803255703, ; 273: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 156
	i64 13987974187833695008, ; 274: Xamarin.AndroidX.Lifecycle.Service.dll => 0xc21f446991291b20 => 122
	i64 14124974489674258913, ; 275: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 101
	i64 14125464355221830302, ; 276: System.Threading.dll => 0xc407bafdbc707a9e => 13
	i64 14161076099266624234, ; 277: Acr.UserDialogs => 0xc4863faf060fbaea => 22
	i64 14165531176311179688, ; 278: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 151
	i64 14172845254133543601, ; 279: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 128
	i64 14212104595480609394, ; 280: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 174
	i64 14254574811015963973, ; 281: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 17
	i64 14261073672896646636, ; 282: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 133
	i64 14261232074598307362, ; 283: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 47
	i64 14327695147300244862, ; 284: System.Reflection.dll => 0xc6d632d338eb4d7e => 181
	i64 14327709162229390963, ; 285: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 12
	i64 14382082037123372364, ; 286: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 152
	i64 14486659737292545672, ; 287: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 120
	i64 14528548208938697926, ; 288: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 47
	i64 14551742072151931844, ; 289: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 89
	i64 14561513370130550166, ; 290: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 4
	i64 14644440854989303794, ; 291: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 126
	i64 14789919016435397935, ; 292: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 153
	i64 14792063746108907174, ; 293: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 161
	i64 14832630590065248058, ; 294: System.Security.Claims => 0xcdd816ef5d6e873a => 10
	i64 14852515768018889994, ; 295: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 108
	i64 14912225920358050525, ; 296: System.Security.Principal.Windows => 0xcef2de7759506add => 88
	i64 14954917835170835695, ; 297: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 54
	i64 14976391165339598545, ; 298: dotenv.net => 0xcfd6d46aa35d7ed1 => 26
	i64 14987728460634540364, ; 299: System.IO.Compression.dll => 0xcfff1ba06622494c => 78
	i64 14988210264188246988, ; 300: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 110
	i64 15133485256822086103, ; 301: System.Linq.dll => 0xd204f0a9127dd9d7 => 179
	i64 15227001540531775957, ; 302: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 53
	i64 15370334346939861994, ; 303: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 107
	i64 15391712275433856905, ; 304: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 54
	i64 15526743539506359484, ; 305: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 5
	i64 15541854775306130054, ; 306: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 12
	i64 15565247197164990907, ; 307: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 45
	i64 15582737692548360875, ; 308: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 124
	i64 15592226634512578529, ; 309: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 37
	i64 15609085926864131306, ; 310: System.dll => 0xd89e9cf3334914ea => 76
	i64 15661133872274321916, ; 311: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 11
	i64 15710114879900314733, ; 312: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 65
	i64 15755368083429170162, ; 313: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 8
	i64 15777549416145007739, ; 314: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 138
	i64 15810740023422282496, ; 315: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 158
	i64 15817206913877585035, ; 316: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 14
	i64 15852824340364052161, ; 317: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 46
	i64 15930129725311349754, ; 318: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 164
	i64 15937190497610202713, ; 319: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 174
	i64 16027684189145026053, ; 320: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 40
	i64 16046481083542319511, ; 321: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 58
	i64 16153500642854367575, ; 322: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 61
	i64 16154507427712707110, ; 323: System => 0xe03056ea4e39aa26 => 76
	i64 16321164108206115771, ; 324: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 57
	i64 16337011941688632206, ; 325: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 88
	i64 16523284800709429098, ; 326: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 40
	i64 16565028646146589191, ; 327: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 171
	i64 16621146507174665210, ; 328: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 105
	i64 16677317093839702854, ; 329: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 131
	i64 16822611501064131242, ; 330: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 168
	i64 16833383113903931215, ; 331: mscorlib => 0xe99c30c1484d7f4f => 67
	i64 16866861824412579935, ; 332: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 19
	i64 16890310621557459193, ; 333: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 182
	i64 16996613738374461477, ; 334: FirebaseAuth.dll => 0xebe01a24a4557825 => 29
	i64 17024911836938395553, ; 335: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 94
	i64 17031351772568316411, ; 336: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 129
	i64 17037200463775726619, ; 337: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 116
	i64 17126545051278881272, ; 338: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 64
	i64 17137864900836977098, ; 339: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 63
	i64 17285063141349522879, ; 340: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 73
	i64 17333249706306540043, ; 341: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 180
	i64 17544493274320527064, ; 342: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 99
	i64 17627500474728259406, ; 343: System.Globalization => 0xf4a176498a351f4e => 6
	i64 17685921127322830888, ; 344: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 15
	i64 17704177640604968747, ; 345: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 125
	i64 17710060891934109755, ; 346: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 123
	i64 17712670374920797664, ; 347: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 178
	i64 17727188866493996799, ; 348: System.Net.Http.Formatting.dll => 0xf603a059f5a25eff => 80
	i64 17777860260071588075, ; 349: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 16
	i64 17790600151040787804, ; 350: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 62
	i64 17838668724098252521, ; 351: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 74
	i64 17865949717230441556, ; 352: Xamarin.AndroidX.Room.Runtime => 0xf7f09a9c2682d454 => 136
	i64 17882897186074144999, ; 353: FormsViewGroup => 0xf82cd03e3ac830e7 => 30
	i64 17892495832318972303, ; 354: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 158
	i64 17911643751311784505, ; 355: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 64
	i64 17928294245072900555, ; 356: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 170
	i64 17958987610413280667, ; 357: Clens.dll => 0xf93b2414b4532d9b => 24
	i64 17986907704309214542, ; 358: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 163
	i64 18017743553296241350, ; 359: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 51
	i64 18025913125965088385, ; 360: System.Threading => 0xfa28e87b91334681 => 13
	i64 18116111925905154859, ; 361: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 98
	i64 18121036031235206392, ; 362: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 129
	i64 18129453464017766560, ; 363: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 173
	i64 18245806341561545090, ; 364: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 9
	i64 18305135509493619199, ; 365: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 130
	i64 18380184030268848184, ; 366: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 146
	i64 18428404840311395189 ; 367: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 87
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [368 x i32] [
	i32 112, i32 72, i32 60, i32 66, i32 56, i32 80, i32 102, i32 137, ; 0..7
	i32 73, i32 138, i32 83, i32 58, i32 121, i32 162, i32 169, i32 115, ; 8..15
	i32 71, i32 111, i32 167, i32 20, i32 157, i32 183, i32 35, i32 159, ; 16..23
	i32 24, i32 97, i32 36, i32 152, i32 21, i32 154, i32 160, i32 95, ; 24..31
	i32 124, i32 116, i32 38, i32 69, i32 96, i32 137, i32 93, i32 175, ; 32..39
	i32 123, i32 69, i32 128, i32 100, i32 111, i32 172, i32 9, i32 7, ; 40..47
	i32 119, i32 89, i32 84, i32 106, i32 144, i32 22, i32 85, i32 92, ; 48..55
	i32 90, i32 63, i32 67, i32 132, i32 84, i32 70, i32 86, i32 25, ; 56..63
	i32 155, i32 159, i32 56, i32 37, i32 18, i32 118, i32 94, i32 82, ; 64..71
	i32 16, i32 149, i32 153, i32 55, i32 77, i32 163, i32 142, i32 141, ; 72..79
	i32 52, i32 81, i32 85, i32 70, i32 53, i32 11, i32 1, i32 134, ; 80..87
	i32 112, i32 39, i32 10, i32 68, i32 34, i32 45, i32 164, i32 135, ; 88..95
	i32 41, i32 26, i32 173, i32 146, i32 154, i32 99, i32 92, i32 141, ; 96..103
	i32 2, i32 2, i32 36, i32 49, i32 156, i32 44, i32 150, i32 126, ; 104..111
	i32 18, i32 127, i32 144, i32 143, i32 71, i32 15, i32 105, i32 75, ; 112..119
	i32 139, i32 8, i32 72, i32 35, i32 175, i32 148, i32 103, i32 122, ; 120..127
	i32 132, i32 120, i32 4, i32 157, i32 30, i32 0, i32 0, i32 27, ; 128..135
	i32 121, i32 119, i32 151, i32 100, i32 109, i32 59, i32 172, i32 115, ; 136..143
	i32 91, i32 82, i32 42, i32 117, i32 87, i32 114, i32 165, i32 7, ; 144..151
	i32 19, i32 179, i32 44, i32 181, i32 140, i32 91, i32 77, i32 83, ; 152..159
	i32 155, i32 150, i32 79, i32 50, i32 160, i32 166, i32 95, i32 139, ; 160..167
	i32 51, i32 171, i32 3, i32 118, i32 168, i32 31, i32 3, i32 177, ; 168..175
	i32 104, i32 61, i32 131, i32 143, i32 42, i32 31, i32 50, i32 130, ; 176..183
	i32 32, i32 65, i32 170, i32 28, i32 23, i32 33, i32 29, i32 52, ; 184..191
	i32 140, i32 33, i32 148, i32 96, i32 41, i32 62, i32 176, i32 182, ; 192..199
	i32 81, i32 106, i32 127, i32 66, i32 103, i32 167, i32 38, i32 162, ; 200..207
	i32 68, i32 183, i32 79, i32 28, i32 109, i32 43, i32 5, i32 142, ; 208..215
	i32 136, i32 107, i32 48, i32 6, i32 149, i32 177, i32 97, i32 135, ; 216..223
	i32 180, i32 57, i32 75, i32 90, i32 46, i32 147, i32 59, i32 108, ; 224..231
	i32 133, i32 178, i32 147, i32 117, i32 93, i32 1, i32 165, i32 114, ; 232..239
	i32 14, i32 74, i32 145, i32 20, i32 34, i32 113, i32 125, i32 25, ; 240..247
	i32 110, i32 27, i32 101, i32 78, i32 102, i32 176, i32 17, i32 60, ; 248..255
	i32 169, i32 23, i32 39, i32 48, i32 21, i32 145, i32 104, i32 43, ; 256..263
	i32 32, i32 161, i32 98, i32 55, i32 134, i32 166, i32 86, i32 49, ; 264..271
	i32 113, i32 156, i32 122, i32 101, i32 13, i32 22, i32 151, i32 128, ; 272..279
	i32 174, i32 17, i32 133, i32 47, i32 181, i32 12, i32 152, i32 120, ; 280..287
	i32 47, i32 89, i32 4, i32 126, i32 153, i32 161, i32 10, i32 108, ; 288..295
	i32 88, i32 54, i32 26, i32 78, i32 110, i32 179, i32 53, i32 107, ; 296..303
	i32 54, i32 5, i32 12, i32 45, i32 124, i32 37, i32 76, i32 11, ; 304..311
	i32 65, i32 8, i32 138, i32 158, i32 14, i32 46, i32 164, i32 174, ; 312..319
	i32 40, i32 58, i32 61, i32 76, i32 57, i32 88, i32 40, i32 171, ; 320..327
	i32 105, i32 131, i32 168, i32 67, i32 19, i32 182, i32 29, i32 94, ; 328..335
	i32 129, i32 116, i32 64, i32 63, i32 73, i32 180, i32 99, i32 6, ; 336..343
	i32 15, i32 125, i32 123, i32 178, i32 80, i32 16, i32 62, i32 74, ; 344..351
	i32 136, i32 30, i32 158, i32 64, i32 170, i32 24, i32 163, i32 51, ; 352..359
	i32 13, i32 98, i32 129, i32 173, i32 9, i32 130, i32 146, i32 87 ; 368..367
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

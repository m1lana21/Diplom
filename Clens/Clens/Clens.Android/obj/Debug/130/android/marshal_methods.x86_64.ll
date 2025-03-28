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
@assembly_image_cache_hashes = local_unnamed_addr constant [340 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 106
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 67
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 57
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 63
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 53
	i64 195258733703605363, ; 5: System.Net.Http.Formatting => 0x2b5b2c8a5b22c73 => 74
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 96
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 131
	i64 263803244706540312, ; 8: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 68
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 132
	i64 464346026994987652, ; 10: System.Reactive.dll => 0x671b04057e67284 => 77
	i64 535107122908063503, ; 11: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 55
	i64 634308326490598313, ; 12: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 115
	i64 702024105029695270, ; 13: System.Drawing.Common => 0x9be17343c0e7726 => 156
	i64 720058930071658100, ; 14: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 109
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 105
	i64 940822596282819491, ; 16: System.Transactions => 0xd0e792aa81923a3 => 154
	i64 960778385402502048, ; 17: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 19
	i64 996343623809489702, ; 18: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 147
	i64 1000557547492888992, ; 19: Mono.Security.dll => 0xde2b1c9cba651a0 => 169
	i64 1001381392624924420, ; 20: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 33
	i64 1120440138749646132, ; 21: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 149
	i64 1174316278192966533, ; 22: Clens => 0x104c026ee7a68b85 => 24
	i64 1315114680217950157, ; 23: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 91
	i64 1326794923564391531, ; 24: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 34
	i64 1425944114962822056, ; 25: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 21
	i64 1624659445732251991, ; 26: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 89
	i64 1628611045998245443, ; 27: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 118
	i64 1636321030536304333, ; 28: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 110
	i64 1639340239664632727, ; 29: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 36
	i64 1731380447121279447, ; 30: Newtonsoft.Json => 0x18071957e9b889d7 => 66
	i64 1795316252682057001, ; 31: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 90
	i64 1836611346387731153, ; 32: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 131
	i64 1875917498431009007, ; 33: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 87
	i64 1972385128188460614, ; 34: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 161
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 117
	i64 2133195048986300728, ; 36: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 66
	i64 2136356949452311481, ; 37: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 122
	i64 2165725771938924357, ; 38: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 94
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 105
	i64 2284400282711631002, ; 40: System.Web.Services => 0x1fb3d1f42fd4249a => 159
	i64 2287834202362508563, ; 41: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2315304989185124968, ; 42: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 6
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 113
	i64 2335503487726329082, ; 44: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 83
	i64 2337758774805907496, ; 45: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 78
	i64 2470498323731680442, ; 46: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 100
	i64 2479423007379663237, ; 47: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 138
	i64 2489738558632930771, ; 48: Acr.UserDialogs.dll => 0x228d540722e8add3 => 22
	i64 2497223385847772520, ; 49: System.Runtime => 0x22a7eb7046413568 => 79
	i64 2547086958574651984, ; 50: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 86
	i64 2592350477072141967, ; 51: System.Xml.dll => 0x23f9e10627330e8f => 84
	i64 2612152650457191105, ; 52: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 60
	i64 2624866290265602282, ; 53: mscorlib.dll => 0x246d65fbde2db8ea => 64
	i64 2694427813909235223, ; 54: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 126
	i64 2783046991838674048, ; 55: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 78
	i64 2815524396660695947, ; 56: System.Security.AccessControl => 0x2712c0857f68238b => 80
	i64 2960931600190307745, ; 57: Xamarin.Forms.Core => 0x2917579a49927da1 => 145
	i64 3017704767998173186, ; 58: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 149
	i64 3168817962471953758, ; 59: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 53
	i64 3266690593535380875, ; 60: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 35
	i64 3281594302220646930, ; 61: System.Security.Principal => 0x2d8a90a198ceba12 => 17
	i64 3289520064315143713, ; 62: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 112
	i64 3303437397778967116, ; 63: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 88
	i64 3311221304742556517, ; 64: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 76
	i64 3325875462027654285, ; 65: System.Runtime.Numerics => 0x2e27e21c8958b48d => 15
	i64 3339480741387858005, ; 66: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 143
	i64 3396143930648122816, ; 67: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 52
	i64 3402534845034375023, ; 68: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 72
	i64 3493805808809882663, ; 69: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 136
	i64 3522470458906976663, ; 70: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 135
	i64 3523004241079211829, ; 71: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 49
	i64 3531994851595924923, ; 72: System.Numerics => 0x31042a9aade235bb => 75
	i64 3571415421602489686, ; 73: System.Runtime.dll => 0x319037675df7e556 => 79
	i64 3638003163729360188, ; 74: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 50
	i64 3647754201059316852, ; 75: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 10
	i64 3716579019761409177, ; 76: netstandard.dll => 0x3393f0ed5c8c5c99 => 152
	i64 3727469159507183293, ; 77: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 128
	i64 3772598417116884899, ; 78: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 106
	i64 4005135229510678782, ; 79: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 37
	i64 4168469861834746866, ; 80: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 9
	i64 4202567570116092282, ; 81: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 65
	i64 4225924121207573736, ; 82: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 32
	i64 4243591448627561453, ; 83: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 43
	i64 4248804899347366872, ; 84: Xamarin.AndroidX.Room.Common.dll => 0x3af6c98b798a03d8 => 129
	i64 4250192876909962317, ; 85: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 39
	i64 4525561845656915374, ; 86: System.ServiceModel.Internals => 0x3ece06856b710dae => 151
	i64 4636684751163556186, ; 87: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 140
	i64 4782108999019072045, ; 88: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 93
	i64 4794310189461587505, ; 89: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 86
	i64 4795410492532947900, ; 90: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 135
	i64 5081566143765835342, ; 91: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 1
	i64 5099468265966638712, ; 92: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 1
	i64 5106322746114322454, ; 93: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 34
	i64 5112836352847824253, ; 94: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 47
	i64 5142919913060024034, ; 95: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 146
	i64 5177565741364132164, ; 96: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 42
	i64 5203618020066742981, ; 97: Xamarin.Essentials => 0x4836f704f0e652c5 => 144
	i64 5205316157927637098, ; 98: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 120
	i64 5262971552273843408, ; 99: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 17
	i64 5348796042099802469, ; 100: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 121
	i64 5376510917114486089, ; 101: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 138
	i64 5408338804355907810, ; 102: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 137
	i64 5446034149219586269, ; 103: System.Diagnostics.Debug => 0x4b94333452e150dd => 14
	i64 5451019430259338467, ; 104: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 99
	i64 5507995362134886206, ; 105: System.Core.dll => 0x4c705499688c873e => 70
	i64 5514426807633697079, ; 106: Xamarin.AndroidX.Sqlite => 0x4c872df700e5d937 => 133
	i64 5527431512186326818, ; 107: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 7
	i64 5528247634813456972, ; 108: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 67
	i64 5610815111739789596, ; 109: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 33
	i64 5650097808083101034, ; 110: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 161
	i64 5692067934154308417, ; 111: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 142
	i64 5757522595884336624, ; 112: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 97
	i64 5759039185982771185, ; 113: Xamarin.AndroidX.Lifecycle.Service => 0x4fec37a0800ecff1 => 116
	i64 5814345312393086621, ; 114: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 126
	i64 5896680224035167651, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 114
	i64 5984759512290286505, ; 116: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 3
	i64 6085203216496545422, ; 117: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 147
	i64 6086316965293125504, ; 118: FormsViewGroup.dll => 0x5476f10882baef80 => 28
	i64 6089874397499778571, ; 119: Clens.Android.dll => 0x5483947fbdb8660b => 0
	i64 6093913051823437908, ; 120: Clens.Android => 0x5491eda23a0d7854 => 0
	i64 6218967553231149354, ; 121: Firebase.Auth.dll => 0x564e360a4805d92a => 25
	i64 6319713645133255417, ; 122: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 115
	i64 6401687960814735282, ; 123: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 113
	i64 6504860066809920875, ; 124: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 94
	i64 6548213210057960872, ; 125: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 103
	i64 6560151584539558821, ; 126: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 56
	i64 6591024623626361694, ; 127: System.Web.Services.dll => 0x5b7805f9751a1b5e => 159
	i64 6659513131007730089, ; 128: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 109
	i64 6876862101832370452, ; 129: System.Xml.Linq => 0x5f6f85a57d108914 => 85
	i64 6894844156784520562, ; 130: System.Numerics.Vectors => 0x5faf683aead1ad72 => 76
	i64 6911788284027924527, ; 131: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 40
	i64 7036436454368433159, ; 132: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 111
	i64 7060448593242414269, ; 133: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 81
	i64 7103753931438454322, ; 134: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 108
	i64 7112547816752919026, ; 135: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 6
	i64 7141577505875122296, ; 136: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 18
	i64 7270811800166795866, ; 137: System.Linq => 0x64e71ccf51a90a5a => 165
	i64 7331765743953618630, ; 138: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 42
	i64 7338192458477945005, ; 139: System.Reflection => 0x65d67f295d0740ad => 167
	i64 7363614467969488359, ; 140: Xamarin.AndroidX.Sqlite.Framework.dll => 0x6630d058323f95e7 => 134
	i64 7488575175965059935, ; 141: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 85
	i64 7496222613193209122, ; 142: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 72
	i64 7602111570124318452, ; 143: System.Reactive => 0x698020320025a6f4 => 77
	i64 7635363394907363464, ; 144: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 145
	i64 7637365915383206639, ; 145: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 144
	i64 7654504624184590948, ; 146: System.Net.Http => 0x6a3a4366801b8264 => 20
	i64 7820441508502274321, ; 147: System.Data => 0x6c87ca1e14ff8111 => 153
	i64 7836164640616011524, ; 148: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 89
	i64 7842383726582361265, ; 149: Xamarin.AndroidX.Sqlite.dll => 0x6cd5be72d73eecb1 => 133
	i64 7972383140441761405, ; 150: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 48
	i64 8044118961405839122, ; 151: System.ComponentModel.Composition => 0x6fa2739369944712 => 158
	i64 8064050204834738623, ; 152: System.Collections.dll => 0x6fe942efa61731bf => 2
	i64 8083354569033831015, ; 153: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 112
	i64 8103644804370223335, ; 154: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 155
	i64 8167236081217502503, ; 155: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 29
	i64 8185542183669246576, ; 156: System.Collections => 0x7198e33f4794aa70 => 2
	i64 8290740647658429042, ; 157: System.Runtime.Extensions => 0x730ea0b15c929a72 => 163
	i64 8398329775253868912, ; 158: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 98
	i64 8399132193771933415, ; 159: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 58
	i64 8400357532724379117, ; 160: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 125
	i64 8601935802264776013, ; 161: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 137
	i64 8611142787134128904, ; 162: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 40
	i64 8626175481042262068, ; 163: Java.Interop => 0x77b654e585b55834 => 29
	i64 8639588376636138208, ; 164: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 124
	i64 8646252517957300335, ; 165: jose-jwt.dll => 0x77fda8daf32bf06f => 30
	i64 8648495978913578441, ; 166: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 62
	i64 8684531736582871431, ; 167: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 157
	i64 8702320156596882678, ; 168: Firebase.dll => 0x78c4da1357adccf6 => 26
	i64 9041985878101337471, ; 169: BouncyCastle.Crypto => 0x7d7b963fe854257f => 23
	i64 9057635389615298436, ; 170: LiteDB => 0x7db32f65bf06d784 => 31
	i64 9073964088825785326, ; 171: FirebaseAuth => 0x7ded32434b1cabee => 27
	i64 9111603110219107042, ; 172: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 49
	i64 9238909584418939062, ; 173: Xamarin.AndroidX.Sqlite.Framework => 0x80373351333e20b6 => 134
	i64 9296667808972889535, ; 174: LiteDB.dll => 0x8104661dcca35dbf => 31
	i64 9312692141327339315, ; 175: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 142
	i64 9324707631942237306, ; 176: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 90
	i64 9413000421947348542, ; 177: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 39
	i64 9427266486299436557, ; 178: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 59
	i64 9584643793929893533, ; 179: System.IO.dll => 0x85037ebfbbd7f69d => 162
	i64 9659729154652888475, ; 180: System.Text.RegularExpressions => 0x860e407c9991dd9b => 168
	i64 9662334977499516867, ; 181: System.Numerics.dll => 0x8617827802b0cfc3 => 75
	i64 9678050649315576968, ; 182: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 100
	i64 9711637524876806384, ; 183: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 121
	i64 9808709177481450983, ; 184: Mono.Android.dll => 0x881f890734e555e7 => 63
	i64 9825649861376906464, ; 185: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 97
	i64 9834056768316610435, ; 186: System.Transactions.dll => 0x8879968718899783 => 154
	i64 9864374015518639636, ; 187: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 36
	i64 9994308163963284983, ; 188: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 65
	i64 9998632235833408227, ; 189: Mono.Security => 0x8ac2470b209ebae3 => 169
	i64 10038780035334861115, ; 190: System.Net.Http.dll => 0x8b50e941206af13b => 20
	i64 10144742755892837524, ; 191: Firebase => 0x8cc95dc98eb5bc94 => 26
	i64 10229024438826829339, ; 192: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 103
	i64 10243523786148452761, ; 193: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 41
	i64 10360651442923773544, ; 194: System.Text.Encoding => 0x8fc86d98211c1e68 => 4
	i64 10376576884623852283, ; 195: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 136
	i64 10421511051509811956, ; 196: Xamarin.AndroidX.Room.Runtime.dll => 0x90a0a515f80ccaf4 => 130
	i64 10430153318873392755, ; 197: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 101
	i64 10458986597687352396, ; 198: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 46
	i64 10566960649245365243, ; 199: System.Globalization.dll => 0x92a562b96dcd13fb => 5
	i64 10679925812255520825, ; 200: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 143
	i64 10714184849103829812, ; 201: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 163
	i64 10847732767863316357, ; 202: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 91
	i64 10849603794298325860, ; 203: Xamarin.AndroidX.Room.Common => 0x9691892ad0e1cb64 => 129
	i64 10964653383833615866, ; 204: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 166
	i64 11002576679268595294, ; 205: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 54
	i64 11023048688141570732, ; 206: System.Core => 0x98f9bc61168392ac => 70
	i64 11037814507248023548, ; 207: System.Xml => 0x992e31d0412bf7fc => 84
	i64 11050168729868392624, ; 208: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 44
	i64 11162124722117608902, ; 209: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 141
	i64 11226290749488709958, ; 210: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 56
	i64 11340910727871153756, ; 211: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 102
	i64 11392833485892708388, ; 212: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 127
	i64 11485890710487134646, ; 213: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 164
	i64 11529969570048099689, ; 214: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 141
	i64 11578238080964724296, ; 215: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 111
	i64 11580057168383206117, ; 216: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 87
	i64 11597940890313164233, ; 217: netstandard => 0xa0f429ca8d1805c9 => 152
	i64 11672361001936329215, ; 218: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 108
	i64 11743665907891708234, ; 219: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 13
	i64 12102847907131387746, ; 220: System.Buffers => 0xa7f5f40c43256f62 => 69
	i64 12137774235383566651, ; 221: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 139
	i64 12332222936682028543, ; 222: System.Runtime.Handles => 0xab24db6c07db5dff => 19
	i64 12441092376399691269, ; 223: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 32
	i64 12451044538927396471, ; 224: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 107
	i64 12466513435562512481, ; 225: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 119
	i64 12487638416075308985, ; 226: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 104
	i64 12528155905152483962, ; 227: Firebase.Auth => 0xaddcf36b3153827a => 25
	i64 12538491095302438457, ; 228: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 95
	i64 12550732019250633519, ; 229: System.IO.Compression => 0xae2d28465e8e1b2f => 73
	i64 12700543734426720211, ; 230: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 96
	i64 12708238894395270091, ; 231: System.IO => 0xb05cbbf17d3ba3cb => 162
	i64 12708922737231849740, ; 232: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 16
	i64 12843321153144804894, ; 233: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 57
	i64 12963446364377008305, ; 234: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 156
	i64 13081516019875753442, ; 235: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 23
	i64 13086625805112021739, ; 236: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 37
	i64 13308002692117796025, ; 237: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 46
	i64 13370592475155966277, ; 238: System.Runtime.Serialization => 0xb98de304062ea945 => 21
	i64 13401370062847626945, ; 239: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 139
	i64 13404347523447273790, ; 240: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 98
	i64 13404984788036896679, ; 241: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 41
	i64 13433674248395881694, ; 242: jose-jwt => 0xba6dff8de3f2fcde => 30
	i64 13454009404024712428, ; 243: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 150
	i64 13491513212026656886, ; 244: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 92
	i64 13550417756503177631, ; 245: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 52
	i64 13572454107664307259, ; 246: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 128
	i64 13647894001087880694, ; 247: System.Data.dll => 0xbd670f48cb071df6 => 153
	i64 13710614125866346983, ; 248: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 80
	i64 13921917134693230900, ; 249: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 47
	i64 13959074834287824816, ; 250: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 107
	i64 13967638549803255703, ; 251: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 146
	i64 13987974187833695008, ; 252: Xamarin.AndroidX.Lifecycle.Service.dll => 0xc21f446991291b20 => 116
	i64 14124974489674258913, ; 253: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 95
	i64 14125464355221830302, ; 254: System.Threading.dll => 0xc407bafdbc707a9e => 12
	i64 14161076099266624234, ; 255: Acr.UserDialogs => 0xc4863faf060fbaea => 22
	i64 14172845254133543601, ; 256: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 122
	i64 14212104595480609394, ; 257: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 160
	i64 14254574811015963973, ; 258: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 16
	i64 14261073672896646636, ; 259: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 127
	i64 14261232074598307362, ; 260: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 45
	i64 14327695147300244862, ; 261: System.Reflection.dll => 0xc6d632d338eb4d7e => 167
	i64 14327709162229390963, ; 262: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 11
	i64 14486659737292545672, ; 263: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 114
	i64 14528548208938697926, ; 264: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 45
	i64 14551742072151931844, ; 265: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 83
	i64 14561513370130550166, ; 266: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 3
	i64 14644440854989303794, ; 267: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 120
	i64 14792063746108907174, ; 268: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 150
	i64 14832630590065248058, ; 269: System.Security.Claims => 0xcdd816ef5d6e873a => 9
	i64 14852515768018889994, ; 270: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 102
	i64 14912225920358050525, ; 271: System.Security.Principal.Windows => 0xcef2de7759506add => 82
	i64 14954917835170835695, ; 272: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 51
	i64 14987728460634540364, ; 273: System.IO.Compression.dll => 0xcfff1ba06622494c => 73
	i64 14988210264188246988, ; 274: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 104
	i64 15133485256822086103, ; 275: System.Linq.dll => 0xd204f0a9127dd9d7 => 165
	i64 15227001540531775957, ; 276: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 50
	i64 15370334346939861994, ; 277: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 101
	i64 15391712275433856905, ; 278: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 51
	i64 15526743539506359484, ; 279: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 4
	i64 15541854775306130054, ; 280: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 11
	i64 15565247197164990907, ; 281: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 43
	i64 15582737692548360875, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 118
	i64 15592226634512578529, ; 283: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 35
	i64 15609085926864131306, ; 284: System.dll => 0xd89e9cf3334914ea => 71
	i64 15661133872274321916, ; 285: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 10
	i64 15710114879900314733, ; 286: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 62
	i64 15755368083429170162, ; 287: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 7
	i64 15777549416145007739, ; 288: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 132
	i64 15810740023422282496, ; 289: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 148
	i64 15817206913877585035, ; 290: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 13
	i64 15852824340364052161, ; 291: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 44
	i64 15937190497610202713, ; 292: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 160
	i64 16027684189145026053, ; 293: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 38
	i64 16046481083542319511, ; 294: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 55
	i64 16153500642854367575, ; 295: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 58
	i64 16154507427712707110, ; 296: System => 0xe03056ea4e39aa26 => 71
	i64 16321164108206115771, ; 297: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 54
	i64 16337011941688632206, ; 298: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 82
	i64 16523284800709429098, ; 299: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 38
	i64 16565028646146589191, ; 300: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 158
	i64 16621146507174665210, ; 301: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 99
	i64 16677317093839702854, ; 302: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 125
	i64 16822611501064131242, ; 303: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 155
	i64 16833383113903931215, ; 304: mscorlib => 0xe99c30c1484d7f4f => 64
	i64 16866861824412579935, ; 305: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 18
	i64 16890310621557459193, ; 306: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 168
	i64 16996613738374461477, ; 307: FirebaseAuth.dll => 0xebe01a24a4557825 => 27
	i64 17024911836938395553, ; 308: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 88
	i64 17031351772568316411, ; 309: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 123
	i64 17037200463775726619, ; 310: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 110
	i64 17126545051278881272, ; 311: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 61
	i64 17137864900836977098, ; 312: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 60
	i64 17285063141349522879, ; 313: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 68
	i64 17333249706306540043, ; 314: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 166
	i64 17544493274320527064, ; 315: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 93
	i64 17627500474728259406, ; 316: System.Globalization => 0xf4a176498a351f4e => 5
	i64 17685921127322830888, ; 317: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 14
	i64 17704177640604968747, ; 318: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 119
	i64 17710060891934109755, ; 319: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 117
	i64 17712670374920797664, ; 320: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 164
	i64 17727188866493996799, ; 321: System.Net.Http.Formatting.dll => 0xf603a059f5a25eff => 74
	i64 17777860260071588075, ; 322: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 15
	i64 17790600151040787804, ; 323: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 59
	i64 17838668724098252521, ; 324: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 69
	i64 17865949717230441556, ; 325: Xamarin.AndroidX.Room.Runtime => 0xf7f09a9c2682d454 => 130
	i64 17882897186074144999, ; 326: FormsViewGroup => 0xf82cd03e3ac830e7 => 28
	i64 17892495832318972303, ; 327: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 148
	i64 17911643751311784505, ; 328: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 61
	i64 17928294245072900555, ; 329: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 157
	i64 17958987610413280667, ; 330: Clens.dll => 0xf93b2414b4532d9b => 24
	i64 18017743553296241350, ; 331: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 48
	i64 18025913125965088385, ; 332: System.Threading => 0xfa28e87b91334681 => 12
	i64 18116111925905154859, ; 333: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 92
	i64 18121036031235206392, ; 334: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 123
	i64 18129453464017766560, ; 335: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 151
	i64 18245806341561545090, ; 336: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18305135509493619199, ; 337: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 124
	i64 18380184030268848184, ; 338: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 140
	i64 18428404840311395189 ; 339: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 81
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [340 x i32] [
	i32 106, i32 67, i32 57, i32 63, i32 53, i32 74, i32 96, i32 131, ; 0..7
	i32 68, i32 132, i32 77, i32 55, i32 115, i32 156, i32 109, i32 105, ; 8..15
	i32 154, i32 19, i32 147, i32 169, i32 33, i32 149, i32 24, i32 91, ; 16..23
	i32 34, i32 21, i32 89, i32 118, i32 110, i32 36, i32 66, i32 90, ; 24..31
	i32 131, i32 87, i32 161, i32 117, i32 66, i32 122, i32 94, i32 105, ; 32..39
	i32 159, i32 8, i32 6, i32 113, i32 83, i32 78, i32 100, i32 138, ; 40..47
	i32 22, i32 79, i32 86, i32 84, i32 60, i32 64, i32 126, i32 78, ; 48..55
	i32 80, i32 145, i32 149, i32 53, i32 35, i32 17, i32 112, i32 88, ; 56..63
	i32 76, i32 15, i32 143, i32 52, i32 72, i32 136, i32 135, i32 49, ; 64..71
	i32 75, i32 79, i32 50, i32 10, i32 152, i32 128, i32 106, i32 37, ; 72..79
	i32 9, i32 65, i32 32, i32 43, i32 129, i32 39, i32 151, i32 140, ; 80..87
	i32 93, i32 86, i32 135, i32 1, i32 1, i32 34, i32 47, i32 146, ; 88..95
	i32 42, i32 144, i32 120, i32 17, i32 121, i32 138, i32 137, i32 14, ; 96..103
	i32 99, i32 70, i32 133, i32 7, i32 67, i32 33, i32 161, i32 142, ; 104..111
	i32 97, i32 116, i32 126, i32 114, i32 3, i32 147, i32 28, i32 0, ; 112..119
	i32 0, i32 25, i32 115, i32 113, i32 94, i32 103, i32 56, i32 159, ; 120..127
	i32 109, i32 85, i32 76, i32 40, i32 111, i32 81, i32 108, i32 6, ; 128..135
	i32 18, i32 165, i32 42, i32 167, i32 134, i32 85, i32 72, i32 77, ; 136..143
	i32 145, i32 144, i32 20, i32 153, i32 89, i32 133, i32 48, i32 158, ; 144..151
	i32 2, i32 112, i32 155, i32 29, i32 2, i32 163, i32 98, i32 58, ; 152..159
	i32 125, i32 137, i32 40, i32 29, i32 124, i32 30, i32 62, i32 157, ; 160..167
	i32 26, i32 23, i32 31, i32 27, i32 49, i32 134, i32 31, i32 142, ; 168..175
	i32 90, i32 39, i32 59, i32 162, i32 168, i32 75, i32 100, i32 121, ; 176..183
	i32 63, i32 97, i32 154, i32 36, i32 65, i32 169, i32 20, i32 26, ; 184..191
	i32 103, i32 41, i32 4, i32 136, i32 130, i32 101, i32 46, i32 5, ; 192..199
	i32 143, i32 163, i32 91, i32 129, i32 166, i32 54, i32 70, i32 84, ; 200..207
	i32 44, i32 141, i32 56, i32 102, i32 127, i32 164, i32 141, i32 111, ; 208..215
	i32 87, i32 152, i32 108, i32 13, i32 69, i32 139, i32 19, i32 32, ; 216..223
	i32 107, i32 119, i32 104, i32 25, i32 95, i32 73, i32 96, i32 162, ; 224..231
	i32 16, i32 57, i32 156, i32 23, i32 37, i32 46, i32 21, i32 139, ; 232..239
	i32 98, i32 41, i32 30, i32 150, i32 92, i32 52, i32 128, i32 153, ; 240..247
	i32 80, i32 47, i32 107, i32 146, i32 116, i32 95, i32 12, i32 22, ; 248..255
	i32 122, i32 160, i32 16, i32 127, i32 45, i32 167, i32 11, i32 114, ; 256..263
	i32 45, i32 83, i32 3, i32 120, i32 150, i32 9, i32 102, i32 82, ; 264..271
	i32 51, i32 73, i32 104, i32 165, i32 50, i32 101, i32 51, i32 4, ; 272..279
	i32 11, i32 43, i32 118, i32 35, i32 71, i32 10, i32 62, i32 7, ; 280..287
	i32 132, i32 148, i32 13, i32 44, i32 160, i32 38, i32 55, i32 58, ; 288..295
	i32 71, i32 54, i32 82, i32 38, i32 158, i32 99, i32 125, i32 155, ; 296..303
	i32 64, i32 18, i32 168, i32 27, i32 88, i32 123, i32 110, i32 61, ; 304..311
	i32 60, i32 68, i32 166, i32 93, i32 5, i32 14, i32 119, i32 117, ; 312..319
	i32 164, i32 74, i32 15, i32 59, i32 69, i32 130, i32 28, i32 148, ; 320..327
	i32 61, i32 157, i32 24, i32 48, i32 12, i32 92, i32 123, i32 151, ; 328..335
	i32 8, i32 124, i32 140, i32 81 ; 336..339
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

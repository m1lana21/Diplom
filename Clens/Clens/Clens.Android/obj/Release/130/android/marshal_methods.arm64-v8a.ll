; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [214 x i64] [
	i64 36418902923615093, ; 0: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 52
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 40
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 46
	i64 160518225272466977, ; 3: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 36
	i64 195258733703605363, ; 4: System.Net.Http.Formatting => 0x2b5b2c8a5b22c73 => 59
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 73
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 85
	i64 263803244706540312, ; 7: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 53
	i64 464346026994987652, ; 8: System.Reactive.dll => 0x671b04057e67284 => 61
	i64 535107122908063503, ; 9: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 38
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 104
	i64 720058930071658100, ; 11: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 79
	i64 733635950719068722, ; 12: Plugin.FirebaseAuth => 0xa2e66029d10ea32 => 51
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 77
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 96
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 106
	i64 1001381392624924420, ; 16: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 15
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 98
	i64 1174316278192966533, ; 18: Clens => 0x104c026ee7a68b85 => 4
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 71
	i64 1326794923564391531, ; 20: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 16
	i64 1392315331768750440, ; 21: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 92
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1491290866305144020, ; 23: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 99
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 69
	i64 1639340239664632727, ; 25: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 18
	i64 1731380447121279447, ; 26: Newtonsoft.Json => 0x18071957e9b889d7 => 49
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 70
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 85
	i64 1981742497975770890, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 82
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 49
	i64 2262844636196693701, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 77
	i64 2329709569556905518, ; 32: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 81
	i64 2335503487726329082, ; 33: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 65
	i64 2337758774805907496, ; 34: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 62
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 74
	i64 2489738558632930771, ; 36: Acr.UserDialogs.dll => 0x228d540722e8add3 => 2
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 68
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 66
	i64 2612152650457191105, ; 39: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 43
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 47
	i64 2783046991838674048, ; 41: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 62
	i64 2801558180824670388, ; 42: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 50
	i64 2823013021940677500, ; 43: CloudinaryDotNet => 0x272d5b62f1137b7c => 5
	i64 2960931600190307745, ; 44: Xamarin.Forms.Core => 0x2917579a49927da1 => 94
	i64 3017704767998173186, ; 45: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 98
	i64 3168817962471953758, ; 46: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 36
	i64 3266690593535380875, ; 47: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 17
	i64 3289520064315143713, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 80
	i64 3339480741387858005, ; 49: Xamarin.AndroidX.Work.Runtime => 0x2e58380a7cae7055 => 89
	i64 3364695309916733813, ; 50: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 93
	i64 3396143930648122816, ; 51: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 35
	i64 3402534845034375023, ; 52: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 57
	i64 3411255996856937470, ; 53: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 101
	i64 3522470458906976663, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 86
	i64 3523004241079211829, ; 55: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 32
	i64 3531994851595924923, ; 56: System.Numerics => 0x31042a9aade235bb => 60
	i64 3609787854626478660, ; 57: Plugin.CurrentActivity => 0x32188aeda587da44 => 50
	i64 3638003163729360188, ; 58: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 33
	i64 3727469159507183293, ; 59: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 84
	i64 4005135229510678782, ; 60: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 19
	i64 4202567570116092282, ; 61: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 48
	i64 4225924121207573736, ; 62: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 14
	i64 4243591448627561453, ; 63: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 25
	i64 4247996603072512073, ; 64: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 102
	i64 4250192876909962317, ; 65: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 21
	i64 4456825071931920169, ; 66: dotenv.net.dll => 0x3dd9d2ca268e8f29 => 6
	i64 4525561845656915374, ; 67: System.ServiceModel.Internals => 0x3ece06856b710dae => 105
	i64 4636684751163556186, ; 68: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 87
	i64 4794310189461587505, ; 69: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 68
	i64 4795410492532947900, ; 70: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 86
	i64 5106322746114322454, ; 71: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 16
	i64 5112836352847824253, ; 72: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 29
	i64 5142919913060024034, ; 73: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 95
	i64 5177565741364132164, ; 74: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 24
	i64 5203618020066742981, ; 75: Xamarin.Essentials => 0x4836f704f0e652c5 => 90
	i64 5427880336170504416, ; 76: Plugin.FirebaseAuth.dll => 0x4b53b46858c550e0 => 51
	i64 5507995362134886206, ; 77: System.Core.dll => 0x4c705499688c873e => 55
	i64 5528247634813456972, ; 78: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 52
	i64 5610815111739789596, ; 79: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 15
	i64 6085203216496545422, ; 80: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 96
	i64 6086316965293125504, ; 81: FormsViewGroup.dll => 0x5476f10882baef80 => 10
	i64 6089874397499778571, ; 82: Clens.Android.dll => 0x5483947fbdb8660b => 0
	i64 6093913051823437908, ; 83: Clens.Android => 0x5491eda23a0d7854 => 0
	i64 6218967553231149354, ; 84: Firebase.Auth.dll => 0x564e360a4805d92a => 7
	i64 6401687960814735282, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 81
	i64 6403742896930319886, ; 86: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 91
	i64 6548213210057960872, ; 87: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 76
	i64 6560151584539558821, ; 88: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 39
	i64 6659513131007730089, ; 89: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 79
	i64 6876862101832370452, ; 90: System.Xml.Linq => 0x5f6f85a57d108914 => 67
	i64 6911788284027924527, ; 91: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 22
	i64 7060448593242414269, ; 92: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 63
	i64 7331765743953618630, ; 93: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 24
	i64 7488575175965059935, ; 94: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 67
	i64 7496222613193209122, ; 95: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 57
	i64 7602111570124318452, ; 96: System.Reactive => 0x698020320025a6f4 => 61
	i64 7635363394907363464, ; 97: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 94
	i64 7637365915383206639, ; 98: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 90
	i64 7654504624184590948, ; 99: System.Net.Http => 0x6a3a4366801b8264 => 58
	i64 7735176074855944702, ; 100: Microsoft.CSharp => 0x6b58dda848e391fe => 30
	i64 7756332380610150586, ; 101: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 99
	i64 7820441508502274321, ; 102: System.Data => 0x6c87ca1e14ff8111 => 103
	i64 7836164640616011524, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 69
	i64 7972383140441761405, ; 104: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 31
	i64 8083354569033831015, ; 105: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 80
	i64 8167236081217502503, ; 106: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 11
	i64 8399132193771933415, ; 107: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 41
	i64 8611142787134128904, ; 108: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 22
	i64 8626175481042262068, ; 109: Java.Interop => 0x77b654e585b55834 => 11
	i64 8638972117149407195, ; 110: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 30
	i64 8646252517957300335, ; 111: jose-jwt.dll => 0x77fda8daf32bf06f => 12
	i64 8648495978913578441, ; 112: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 45
	i64 8702320156596882678, ; 113: Firebase.dll => 0x78c4da1357adccf6 => 8
	i64 9041985878101337471, ; 114: BouncyCastle.Crypto => 0x7d7b963fe854257f => 3
	i64 9057635389615298436, ; 115: LiteDB => 0x7db32f65bf06d784 => 13
	i64 9073964088825785326, ; 116: FirebaseAuth => 0x7ded32434b1cabee => 9
	i64 9111603110219107042, ; 117: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 32
	i64 9296667808972889535, ; 118: LiteDB.dll => 0x8104661dcca35dbf => 13
	i64 9324707631942237306, ; 119: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 70
	i64 9413000421947348542, ; 120: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 21
	i64 9427266486299436557, ; 121: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 42
	i64 9662334977499516867, ; 122: System.Numerics.dll => 0x8617827802b0cfc3 => 60
	i64 9678050649315576968, ; 123: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 74
	i64 9808709177481450983, ; 124: Mono.Android.dll => 0x881f890734e555e7 => 46
	i64 9864374015518639636, ; 125: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 18
	i64 9994308163963284983, ; 126: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 48
	i64 9998632235833408227, ; 127: Mono.Security => 0x8ac2470b209ebae3 => 106
	i64 10038780035334861115, ; 128: System.Net.Http.dll => 0x8b50e941206af13b => 58
	i64 10144742755892837524, ; 129: Firebase => 0x8cc95dc98eb5bc94 => 8
	i64 10229024438826829339, ; 130: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 76
	i64 10243523786148452761, ; 131: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 23
	i64 10430153318873392755, ; 132: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 75
	i64 10458986597687352396, ; 133: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 28
	i64 10679925812255520825, ; 134: Xamarin.AndroidX.Work.Runtime.dll => 0x9436b7f10b03f839 => 89
	i64 10847732767863316357, ; 135: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 71
	i64 11002576679268595294, ; 136: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 37
	i64 11023048688141570732, ; 137: System.Core => 0x98f9bc61168392ac => 55
	i64 11037814507248023548, ; 138: System.Xml => 0x992e31d0412bf7fc => 66
	i64 11050168729868392624, ; 139: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 26
	i64 11162124722117608902, ; 140: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 88
	i64 11226290749488709958, ; 141: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 39
	i64 11529969570048099689, ; 142: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 88
	i64 12102847907131387746, ; 143: System.Buffers => 0xa7f5f40c43256f62 => 54
	i64 12441092376399691269, ; 144: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 14
	i64 12451044538927396471, ; 145: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 78
	i64 12466513435562512481, ; 146: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 83
	i64 12472616430980764132, ; 147: CloudinaryDotNet.dll => 0xad17a28fac4f11e4 => 5
	i64 12528155905152483962, ; 148: Firebase.Auth => 0xaddcf36b3153827a => 7
	i64 12538491095302438457, ; 149: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 72
	i64 12700543734426720211, ; 150: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 73
	i64 12843321153144804894, ; 151: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 40
	i64 12963446364377008305, ; 152: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 104
	i64 13081516019875753442, ; 153: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 3
	i64 13086625805112021739, ; 154: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 19
	i64 13308002692117796025, ; 155: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 28
	i64 13370592475155966277, ; 156: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13404984788036896679, ; 157: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 23
	i64 13433674248395881694, ; 158: jose-jwt => 0xba6dff8de3f2fcde => 12
	i64 13454009404024712428, ; 159: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 100
	i64 13550417756503177631, ; 160: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 35
	i64 13572454107664307259, ; 161: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 84
	i64 13647894001087880694, ; 162: System.Data.dll => 0xbd670f48cb071df6 => 103
	i64 13921917134693230900, ; 163: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 29
	i64 13959074834287824816, ; 164: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 78
	i64 13967638549803255703, ; 165: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 95
	i64 14124974489674258913, ; 166: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 72
	i64 14161076099266624234, ; 167: Acr.UserDialogs => 0xc4863faf060fbaea => 2
	i64 14165531176311179688, ; 168: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 91
	i64 14261232074598307362, ; 169: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 27
	i64 14382082037123372364, ; 170: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 92
	i64 14528548208938697926, ; 171: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 27
	i64 14551742072151931844, ; 172: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 65
	i64 14789919016435397935, ; 173: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 93
	i64 14792063746108907174, ; 174: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 100
	i64 14912225920358050525, ; 175: System.Security.Principal.Windows => 0xcef2de7759506add => 64
	i64 14954917835170835695, ; 176: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 34
	i64 14976391165339598545, ; 177: dotenv.net => 0xcfd6d46aa35d7ed1 => 6
	i64 15227001540531775957, ; 178: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 33
	i64 15370334346939861994, ; 179: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 75
	i64 15391712275433856905, ; 180: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 34
	i64 15565247197164990907, ; 181: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 25
	i64 15592226634512578529, ; 182: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 17
	i64 15609085926864131306, ; 183: System.dll => 0xd89e9cf3334914ea => 56
	i64 15710114879900314733, ; 184: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 45
	i64 15810740023422282496, ; 185: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 97
	i64 15852824340364052161, ; 186: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 26
	i64 15930129725311349754, ; 187: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 102
	i64 16027684189145026053, ; 188: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 20
	i64 16046481083542319511, ; 189: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 38
	i64 16153500642854367575, ; 190: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 41
	i64 16154507427712707110, ; 191: System => 0xe03056ea4e39aa26 => 56
	i64 16321164108206115771, ; 192: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 37
	i64 16337011941688632206, ; 193: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 64
	i64 16523284800709429098, ; 194: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 20
	i64 16833383113903931215, ; 195: mscorlib => 0xe99c30c1484d7f4f => 47
	i64 16996613738374461477, ; 196: FirebaseAuth.dll => 0xebe01a24a4557825 => 9
	i64 17126545051278881272, ; 197: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 44
	i64 17137864900836977098, ; 198: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 43
	i64 17285063141349522879, ; 199: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 53
	i64 17704177640604968747, ; 200: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 83
	i64 17710060891934109755, ; 201: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 82
	i64 17727188866493996799, ; 202: System.Net.Http.Formatting.dll => 0xf603a059f5a25eff => 59
	i64 17790600151040787804, ; 203: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 42
	i64 17838668724098252521, ; 204: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 54
	i64 17882897186074144999, ; 205: FormsViewGroup => 0xf82cd03e3ac830e7 => 10
	i64 17892495832318972303, ; 206: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 97
	i64 17911643751311784505, ; 207: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 44
	i64 17958987610413280667, ; 208: Clens.dll => 0xf93b2414b4532d9b => 4
	i64 17986907704309214542, ; 209: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 101
	i64 18017743553296241350, ; 210: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 31
	i64 18129453464017766560, ; 211: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 105
	i64 18380184030268848184, ; 212: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 87
	i64 18428404840311395189 ; 213: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 63
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [214 x i32] [
	i32 52, i32 40, i32 46, i32 36, i32 59, i32 73, i32 85, i32 53, ; 0..7
	i32 61, i32 38, i32 104, i32 79, i32 51, i32 77, i32 96, i32 106, ; 8..15
	i32 15, i32 98, i32 4, i32 71, i32 16, i32 92, i32 1, i32 99, ; 16..23
	i32 69, i32 18, i32 49, i32 70, i32 85, i32 82, i32 49, i32 77, ; 24..31
	i32 81, i32 65, i32 62, i32 74, i32 2, i32 68, i32 66, i32 43, ; 32..39
	i32 47, i32 62, i32 50, i32 5, i32 94, i32 98, i32 36, i32 17, ; 40..47
	i32 80, i32 89, i32 93, i32 35, i32 57, i32 101, i32 86, i32 32, ; 48..55
	i32 60, i32 50, i32 33, i32 84, i32 19, i32 48, i32 14, i32 25, ; 56..63
	i32 102, i32 21, i32 6, i32 105, i32 87, i32 68, i32 86, i32 16, ; 64..71
	i32 29, i32 95, i32 24, i32 90, i32 51, i32 55, i32 52, i32 15, ; 72..79
	i32 96, i32 10, i32 0, i32 0, i32 7, i32 81, i32 91, i32 76, ; 80..87
	i32 39, i32 79, i32 67, i32 22, i32 63, i32 24, i32 67, i32 57, ; 88..95
	i32 61, i32 94, i32 90, i32 58, i32 30, i32 99, i32 103, i32 69, ; 96..103
	i32 31, i32 80, i32 11, i32 41, i32 22, i32 11, i32 30, i32 12, ; 104..111
	i32 45, i32 8, i32 3, i32 13, i32 9, i32 32, i32 13, i32 70, ; 112..119
	i32 21, i32 42, i32 60, i32 74, i32 46, i32 18, i32 48, i32 106, ; 120..127
	i32 58, i32 8, i32 76, i32 23, i32 75, i32 28, i32 89, i32 71, ; 128..135
	i32 37, i32 55, i32 66, i32 26, i32 88, i32 39, i32 88, i32 54, ; 136..143
	i32 14, i32 78, i32 83, i32 5, i32 7, i32 72, i32 73, i32 40, ; 144..151
	i32 104, i32 3, i32 19, i32 28, i32 1, i32 23, i32 12, i32 100, ; 152..159
	i32 35, i32 84, i32 103, i32 29, i32 78, i32 95, i32 72, i32 2, ; 160..167
	i32 91, i32 27, i32 92, i32 27, i32 65, i32 93, i32 100, i32 64, ; 168..175
	i32 34, i32 6, i32 33, i32 75, i32 34, i32 25, i32 17, i32 56, ; 176..183
	i32 45, i32 97, i32 26, i32 102, i32 20, i32 38, i32 41, i32 56, ; 184..191
	i32 37, i32 64, i32 20, i32 47, i32 9, i32 44, i32 43, i32 53, ; 192..199
	i32 83, i32 82, i32 59, i32 42, i32 54, i32 10, i32 97, i32 44, ; 200..207
	i32 4, i32 101, i32 31, i32 105, i32 87, i32 63 ; 208..213
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

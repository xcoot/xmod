.class public Lcom/att/iqi/libs/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/att/iqi/libs/IIQIServiceBrokerPub;


# static fields
.field private static final CAN_CHANGE_UNLOCK_KEYCODE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CAN_CHANGE_UNLOCK_KEYCODE"

.field private static final CHANGE_IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final CHANGE_IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CHANGE_IQI_STATE"

.field private static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field private static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field private static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field private static final IQI_UPLOAD_COMPLETE_ACTION:Ljava/lang/String; = "com.att.iqi.action.UPLOAD_COMPLETE"

.field private static final MAX_RETRY_ATTEMPTS:I = 0xa

.field private static final MSG_CHECK_VALID:I = 0x2

.field private static final MSG_SIM_INVALID:I = 0x3

.field private static final MSG_TIMED_OUT_WAITING_PACKAGE_UPLOAD:I = 0x4

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.att.iqi"

.field private static final PACKAGE_UPLOAD_WAIT_MS:J = 0x3a98L

.field private static final RECEIVE_UPLOAD_NOTIFICATIONS_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_UPLOAD_NOTIFICATIONS"

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field private static final TOGGLE_DEBUG_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

.field private static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

.field private static final sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

.field private static sInstance:Lcom/att/iqi/libs/IQIServiceBroker;


# instance fields
.field private mApplicationEnabled:Z

.field private final mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field private mInitialServiceConnect:Z

.field private mLastServiceEnabled:Z

.field private final mMessageDispatcher:Landroid/os/Handler;

.field private final mMetricQueryCallbackList:Landroid/util/SparseArray;

.field private final mMetricSourcingCallbackList:Landroid/util/SparseArray;

.field private final mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

.field private mRetryCount:I

.field private mServicePublished:Z

.field public mServiceState:I

.field private final mServiceStateChangeList:Landroid/util/ArraySet;

.field public final mServiceStubForFailure:Lcom/att/iqi/IIQIService;

.field public mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;)Lcom/att/iqi/IIQIService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->appEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->disablePackage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryConnecting(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->unregisterReceivers()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTARGET_IMPLEMENTATION_COMPONENT()Landroid/content/ComponentName;
    .locals 1

    .line 1
    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintAARVersion(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printAARVersion(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintArtifactsVersion(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printArtifactsVersion(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintConciergeVersion(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-string v1, "com.att.iqi"

    .line 4
    .line 5
    const-string v2, "com.att.iqi.service.IQService"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 11
    .line 12
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$1;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/att/iqi/libs/IQIServiceBroker$1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 9
    .line 10
    new-instance v2, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 23
    .line 24
    new-instance v2, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 30
    .line 31
    new-instance v2, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 37
    .line 38
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$2;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$2;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    .line 45
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$3;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$3;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$4;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$4;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    .line 59
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$5;

    .line 60
    .line 61
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {v2, p0, v3}, Lcom/att/iqi/libs/IQIServiceBroker$5;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 73
    .line 74
    new-instance v2, Lcom/att/iqi/IIQIService$Default;

    .line 75
    .line 76
    invoke-direct {v2}, Lcom/att/iqi/IIQIService$Default;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    .line 80
    .line 81
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$6;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$6;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 87
    .line 88
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$8;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$8;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 94
    .line 95
    sput-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 96
    .line 97
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v3, "log_enabled"

    .line 104
    .line 105
    invoke-virtual {v2, v3, v0}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v0, "service_state"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 120
    .line 121
    new-instance v0, Lcom/att/iqi/libs/CellBroadcastObserver;

    .line 122
    .line 123
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v0, p1, v2}, Lcom/att/iqi/libs/CellBroadcastObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->registerPackageMonitor()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private appEnabled()Z
    .locals 5

    .line 1
    const-string v0, "cannot find application information for "

    .line 2
    .line 3
    const-string v1, "Application "

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    monitor-enter p0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 30
    .line 31
    iput-boolean v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    const-string v4, "enabled"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v4, "disabled"

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    :try_start_1
    iput-boolean v3, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ": "

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-boolean p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 83
    .line 84
    return p0

    .line 85
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v0
.end method

.method private checkRetryAttemptsLocked(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 10
    .line 11
    const-string v0, ", attempt # "

    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, 0xbb8

    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "Retried several times already, give up"

    .line 42
    .line 43
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private disablePackage()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "com.att.iqi"

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p0, "package has been disabled"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "IQIServiceBroker dump options:"

    .line 2
    .line 3
    const-string v1, "    -h: print this help"

    .line 4
    .line 5
    const-string v2, "    --concierge: print IQIConcierge version"

    .line 6
    .line 7
    const-string v3, "    --aar: print AAR version"

    .line 8
    .line 9
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "    -v: print the version of all artifacts"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getPublicInterface()Lcom/att/iqi/libs/IIQIServiceBrokerPub;
    .locals 1

    .line 1
    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method private getServiceComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    sget-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method private notifyServiceState(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyServiceState = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->restoreCallbacks()V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    .line 36
    .line 37
    :cond_1
    iput-boolean p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/att/iqi/IServiceStateChangeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    :try_start_1
    invoke-interface {v1, p1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    :try_start_2
    const-string/jumbo v2, "notifyServiceState failed"

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0
.end method

.method private static printAARVersion(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AAR version: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/att/iqi/lib/Build;->getSdkVersion()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static printArtifactsVersion(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printAARVersion(Ljava/io/PrintWriter;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static printConciergeVersion(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IQIConcierge version: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->getVersion()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private registerPackageMonitor()V
    .locals 3

    .line 1
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$7;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private registerReceivers(Z)V
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    new-instance v2, Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string p1, "com.att.iqi.action.CHANGE_IQI_STATE"

    .line 10
    .line 11
    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    const-string v3, "com.att.iqi.permission.CHANGE_IQI_STATE"

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v8, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string p1, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    .line 24
    .line 25
    invoke-direct {v8, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v6, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v11, 0x2

    .line 34
    const-string v9, "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

    .line 35
    .line 36
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/att/iqi/libs/CellBroadcastObserver;->register()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private restoreCallbacks()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    move v5, v2

    .line 27
    :goto_1
    if-ge v5, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    .line 34
    .line 35
    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Landroid/os/RemoteCallbackList;

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Lcom/att/iqi/IMetricQueryCallback;

    .line 57
    .line 58
    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_0
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 83
    .line 84
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    move v3, v2

    .line 92
    :goto_2
    if-ge v3, v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v5, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 99
    .line 100
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/att/iqi/IProfileChangedCallback;

    .line 105
    .line 106
    invoke-interface {v4, v5}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_6

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 117
    .line 118
    .line 119
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :try_start_4
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 121
    .line 122
    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 123
    :try_start_5
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    move v3, v2

    .line 130
    :goto_3
    if-ge v3, v1, :cond_4

    .line 131
    .line 132
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    move v5, v2

    .line 145
    :goto_4
    if-ge v5, v4, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    .line 152
    .line 153
    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    .line 160
    .line 161
    .line 162
    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 163
    .line 164
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Landroid/os/RemoteCallbackList;

    .line 169
    .line 170
    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Lcom/att/iqi/IMetricSourcingCallback;

    .line 175
    .line 176
    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :catchall_2
    move-exception p0

    .line 183
    goto :goto_5

    .line 184
    :cond_3
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 185
    .line 186
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Landroid/os/RemoteCallbackList;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v3, v3, 0x1

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_4
    monitor-exit v0

    .line 199
    goto :goto_9

    .line 200
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 201
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 202
    :catch_0
    move-exception p0

    .line 203
    goto :goto_8

    .line 204
    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 205
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 206
    :goto_7
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 207
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 208
    :goto_8
    const-string v0, "Remote exception in restoreCallbacks"

    .line 209
    .line 210
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    :goto_9
    return-void
.end method

.method private tryConnecting(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "Forbidden to bind to implementation "

    .line 2
    .line 3
    const-string v1, "Failed to bind to implementation "

    .line 4
    .line 5
    const-string v2, "Connecting to implementation"

    .line 6
    .line 7
    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string p1, "Already connected"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string p1, "No implementation service found"

    .line 36
    .line 37
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {p1, v4}, Lcom/att/iqi/libs/IQIConcierge;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 60
    .line 61
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-virtual {p1, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "Retry reconnecting"

    .line 86
    .line 87
    invoke-direct {p0, v6, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->checkRetryAttemptsLocked(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0, p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p1
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mCBObserver:Lcom/att/iqi/libs/CellBroadcastObserver;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/att/iqi/libs/CellBroadcastObserver;->unregister()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public checkPkgValidity()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    monitor-enter p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    const/high16 v3, 0x8000000

    .line 20
    .line 21
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    array-length v3, v2

    .line 34
    move v4, v1

    .line 35
    move v5, v4

    .line 36
    :goto_0
    if-ge v4, v3, :cond_1

    .line 37
    .line 38
    aget-object v5, v2, v4

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const-string v5, "Valid signature"

    .line 53
    .line 54
    invoke-static {v5}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v2

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string v2, "Bad signature"

    .line 66
    .line 67
    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    monitor-exit p0

    .line 71
    return v1

    .line 72
    :cond_1
    monitor-exit p0

    .line 73
    return v5

    .line 74
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "cannot find package information for "

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ": "

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "Retry check package"

    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-direct {p0, v2, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->checkRetryAttemptsLocked(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    monitor-exit p0

    .line 113
    return v1

    .line 114
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw v0
.end method

.method public getBrokeredService()Lcom/att/iqi/IIQIService;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-wide/16 v2, 0xbb8

    .line 35
    .line 36
    add-long/2addr v0, v2

    .line 37
    :goto_0
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long v4, v2, v4

    .line 40
    .line 41
    if-lez v4, :cond_3

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v2

    .line 48
    :try_start_2
    const-string v3, "Connection wait interrupted"

    .line 49
    .line 50
    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v2

    .line 59
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    sub-long v2, v0, v2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "Timed out waiting for service connection, returning stub"

    .line 67
    .line 68
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    return-object v0

    .line 75
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw v0
.end method

.method public onBootPhase(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x258

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const-string p1, "Third party apps ready"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/att/iqi/libs/IQIConcierge;->init(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "iqi"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    .line 13
    .line 14
    return-void
.end method

.method public postMessage(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public shouldConnect()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->isServiceBindingAllowed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return v1

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public final tryDisconnecting()V
    .locals 2

    .line 1
    const-string v0, "Disconnecting from implementation"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Already disconnected"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

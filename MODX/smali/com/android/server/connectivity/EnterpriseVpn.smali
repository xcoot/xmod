.class public Lcom/android/server/connectivity/EnterpriseVpn;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z


# instance fields
.field public isMetaDataEnabled:Z

.field public isVpnObjectRemoved:Z

.field public final knoxVpnUidRanges:Ljava/util/Set;

.field public mAddress:Ljava/lang/String;

.field public mConfig:Lcom/android/internal/net/VpnConfig;

.field public mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mHttpProxyInfo:Landroid/net/ProxyInfo;

.field public mInterface:Ljava/lang/String;

.field public final mLocaleChangedReceiver:Lcom/android/server/connectivity/EnterpriseVpn$3;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetd:Landroid/net/INetd;

.field public mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public final mNetworkInfo:Landroid/net/NetworkInfo;

.field public final mNetworkProvider:Landroid/net/NetworkProvider;

.field public final mNms:Landroid/os/INetworkManagementService;

.field public final mObserver:Lcom/android/server/connectivity/EnterpriseVpn$2;

.field public final mOwnerUID:I

.field public final mPackage:Ljava/lang/String;

.field public mProfileName:Ljava/lang/String;

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field public mV6Address:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mcleanupVpnStateLocked(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 6
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 8
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Landroid/net/VpnTransportInfo;

    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-direct {v2, v3, v1}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 32
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 34
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 38
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 40
    const-string v1, "agentDisconnect"

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static -$$Nest$mcloseInterface(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 8
    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$mjniCheck(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILjava/lang/String;I)V
    .locals 6

    .line 1
    const-string v0, "Unable to register mObserver or protecting socket failed : "

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 12
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    .line 16
    new-instance v3, Landroid/util/ArraySet;

    .line 18
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 23
    new-instance v3, Lcom/android/server/connectivity/EnterpriseVpn$2;

    .line 25
    invoke-direct {v3, p0}, Lcom/android/server/connectivity/EnterpriseVpn$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 28
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Lcom/android/server/connectivity/EnterpriseVpn$2;

    .line 30
    new-instance v4, Lcom/android/server/connectivity/EnterpriseVpn$3;

    .line 32
    invoke-direct {v4, p0}, Lcom/android/server/connectivity/EnterpriseVpn$3;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 35
    iput-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Lcom/android/server/connectivity/EnterpriseVpn$3;

    .line 37
    iput-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 39
    const-class v4, Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 47
    iput-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 49
    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    .line 51
    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/net/INetd;

    .line 53
    iput p5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 55
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    .line 57
    const-class p4, Landroid/os/UserManager;

    .line 59
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p4

    .line 63
    check-cast p4, Landroid/os/UserManager;

    .line 65
    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    .line 67
    iput-object p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    move-result-wide v4

    .line 73
    const/4 p4, -0x1

    .line 74
    :try_start_0
    invoke-interface {p3, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 77
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-virtual {p3, p6, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 84
    move-result p3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move p3, p4

    .line 87
    :goto_0
    :try_start_2
    iput p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 89
    if-eq p3, p4, :cond_0

    .line 91
    const/4 p5, 0x1

    .line 92
    if-eq p7, p5, :cond_0

    .line 94
    iget-object p5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    .line 96
    invoke-interface {p5, p3}, Landroid/os/INetworkManagementService;->allowProtect(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto/16 :goto_4

    .line 103
    :catch_1
    move-exception p3

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    goto :goto_3

    .line 109
    :goto_2
    :try_start_3
    const-string/jumbo p5, "knoxEnterpriseVpn"

    .line 112
    new-instance p6, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p3

    .line 128
    invoke-static {p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    goto :goto_1

    .line 132
    :goto_3
    new-instance p3, Landroid/net/NetworkProvider;

    .line 134
    new-instance p5, Ljava/lang/StringBuilder;

    .line 136
    const-string p6, "VpnNetworkProvider:"

    .line 138
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget p6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 143
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p5

    .line 150
    invoke-direct {p3, p2, p1, p5}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 153
    iput-object p3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 155
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 157
    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 160
    new-instance p1, Landroid/net/NetworkInfo;

    .line 162
    const-string p2, ""

    .line 164
    const/16 p3, 0x11

    .line 166
    const-string p5, "VPN"

    .line 168
    invoke-direct {p1, p3, v1, p5, p2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 173
    new-instance p1, Landroid/net/NetworkCapabilities$Builder;

    .line 175
    invoke-direct {p1}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 178
    const/4 p2, 0x4

    .line 179
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 182
    move-result-object p1

    .line 183
    const/16 p2, 0xf

    .line 185
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 188
    move-result-object p1

    .line 189
    const/16 p2, 0x1c

    .line 191
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Landroid/net/VpnTransportInfo;

    .line 197
    invoke-direct {p2, p4, v2}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 200
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 207
    move-result-object p1

    .line 208
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 213
    move-result-wide p1

    .line 214
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 216
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Lcom/android/server/connectivity/EnterpriseVpn$3;

    .line 218
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 220
    new-instance v3, Landroid/content/IntentFilter;

    .line 222
    const-string p0, "android.intent.action.LOCALE_CHANGED"

    .line 224
    invoke-direct {v3, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    const/4 v4, 0x0

    .line 228
    const/4 v5, 0x0

    .line 229
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    return-void

    .line 236
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    throw p0
.end method

.method public static getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 3
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string/jumbo v0, "getDomainsByProfileName()"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Exception: "

    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    .line 1
    const-string/jumbo v0, "knox_vpn_policy"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreateknoxvpn(IZ)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public final agentConnect()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 4
    move-result-object v5

    .line 5
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 7
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 9
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 12
    const/16 v1, 0xc

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 17
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 19
    const-string v9, "agentConnect"

    .line 21
    invoke-virtual {p0, v1, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 24
    new-instance v1, Landroid/net/NetworkAgentConfig$Builder;

    .line 26
    invoke-direct {v1}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Landroid/net/NetworkAgentConfig$Builder;->setBypassableVpn(Z)Landroid/net/NetworkAgentConfig$Builder;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    .line 37
    move-result-object v7

    .line 38
    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 43
    filled-new-array {v1}, [I

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 50
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 52
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 55
    new-instance v1, Landroid/net/VpnTransportInfo;

    .line 57
    const/4 v2, 0x4

    .line 58
    const/4 v10, 0x0

    .line 59
    invoke-direct {v1, v2, v10}, Landroid/net/VpnTransportInfo;-><init>(ILjava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 71
    new-instance v11, Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 73
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 75
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLooper:Landroid/os/Looper;

    .line 77
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 79
    new-instance v0, Landroid/net/NetworkScore$Builder;

    .line 81
    invoke-direct {v0}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 84
    const/16 v1, 0x65

    .line 86
    invoke-virtual {v0, v1}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 93
    move-result-object v6

    .line 94
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 96
    move-object v0, v11

    .line 97
    move-object v1, p0

    .line 98
    invoke-direct/range {v0 .. v8}, Lcom/android/server/connectivity/EnterpriseVpn$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 101
    iput-object v11, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 103
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda1;

    .line 105
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn;)V

    .line 108
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 113
    invoke-virtual {v0, v10}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 116
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 118
    invoke-virtual {p0, v0, v9}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public final applyBlockingRulesToUidRange(Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->setRequireVpnForUids(ZLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Updating blocked="

    .line 12
    const-string v2, " for UIDs "

    .line 14
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 20
    check-cast p0, Landroid/util/ArraySet;

    .line 22
    invoke-virtual {p0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p0, " failed"

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 45
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final cleanupObjects()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "knoxEnterpriseVpn"

    .line 8
    const-string v1, "Delay resetting the network capability and unregistering the observer since the interface is not removed yet"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isVpnObjectRemoved:Z

    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->resetUidListInNetworkCapabilities()V

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNms:Landroid/os/INetworkManagementService;

    .line 22
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Lcom/android/server/connectivity/EnterpriseVpn$2;

    .line 24
    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mLocaleChangedReceiver:Lcom/android/server/connectivity/EnterpriseVpn$3;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    move-result-wide v1

    .line 35
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 45
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkProvider:Landroid/net/NetworkProvider;

    .line 47
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkProvider(Landroid/net/NetworkProvider;)V

    .line 50
    return-void
.end method

.method public final createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 3
    const v1, 0x104071d

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 12
    const v2, 0x104071c

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Landroid/app/Notification$Builder;

    .line 21
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 23
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    .line 25
    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const p0, 0x1080d0f

    .line 31
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 46
    move-result-object p0

    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 14

    .line 1
    const-string v0, "Cannot find "

    .line 3
    const-string v1, "Cannot set tunnel\'s fd as blocking="

    .line 5
    const-string v2, " does not require android.permission.BIND_VPN_SERVICE"

    .line 7
    const-string v3, "Cannot find "

    .line 9
    const-string/jumbo v4, "establish failed due to caller mismatch "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v5

    .line 17
    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 19
    const/4 v7, 0x0

    .line 20
    if-eq v5, v6, :cond_0

    .line 22
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    .line 50
    return-object v7

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 54
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    .line 56
    const-string v5, "android.net.VpnService"

    .line 58
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 63
    iget-object v6, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    .line 74
    iget v9, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 76
    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 83
    move-result v8

    .line 84
    if-nez v8, :cond_8

    .line 86
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserManager:Landroid/os/UserManager;

    .line 88
    const-string/jumbo v9, "no_config_vpn"

    .line 91
    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_8

    .line 97
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 100
    move-result-object v8

    .line 101
    iget v13, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 103
    const/4 v10, 0x0

    .line 104
    const-wide/16 v11, 0x0

    .line 106
    move-object v9, v4

    .line 107
    invoke-interface/range {v8 .. v13}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    .line 110
    move-result-object v8

    .line 111
    if-eqz v8, :cond_7

    .line 113
    const-string v3, "android.permission.BIND_VPN_SERVICE"

    .line 115
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 117
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 119
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    if-eqz v3, :cond_6

    .line 125
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 132
    iget v0, p1, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 134
    iget-boolean v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 136
    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniCreateknoxvpn(IZ)I

    .line 139
    move-result v0

    .line 140
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 143
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 147
    move-result-object v2

    .line 148
    iget-boolean v3, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 150
    invoke-static {v2, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 156
    move-result v1

    .line 157
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->jniGetName(I)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 168
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object v3

    .line 172
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_1

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroid/net/LinkAddress;

    .line 184
    const-string v6, " "

    .line 186
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    goto :goto_0

    .line 193
    :catch_0
    move-exception p1

    .line 194
    goto/16 :goto_1

    .line 196
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 200
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move-result v2

    .line 204
    const/4 v3, 0x1

    .line 205
    if-lt v2, v3, :cond_5

    .line 207
    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 209
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 214
    new-instance v5, Landroid/os/UserHandle;

    .line 216
    iget v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 218
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 221
    const v6, 0x4000001

    .line 224
    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_4

    .line 230
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 232
    if-eqz v3, :cond_2

    .line 234
    iget-object v4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 241
    if-eqz v3, :cond_3

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 251
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/EnterpriseVpn;->jniReset(Ljava/lang/String;)V

    .line 254
    :cond_3
    iput-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConnection:Lcom/android/server/connectivity/EnterpriseVpn$Connection;

    .line 256
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mPackage:Ljava/lang/String;

    .line 260
    iput-object v2, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 262
    iput-object v1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 267
    move-result-wide v1

    .line 268
    iput-wide v1, p1, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 270
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 272
    iput-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 274
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 276
    const-string/jumbo v2, "establish"

    .line 279
    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentConnect()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    :try_start_6
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    const-string v3, "Established by "

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 300
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string p1, " on "

    .line 305
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 310
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object p1

    .line 317
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    monitor-exit p0

    .line 321
    return-object v0

    .line 322
    :cond_4
    :try_start_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    const-string v3, "Cannot bind "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 336
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object p1

    .line 343
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 346
    throw v1

    .line 347
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 349
    const-string v1, "At least one address must be specified"

    .line 351
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 354
    throw p1

    .line 355
    :catch_1
    move-exception v2

    .line 356
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    iget-boolean p1, p1, Lcom/android/internal/net/VpnConfig;->blocking:Z

    .line 365
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object p1

    .line 372
    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    throw v3
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 376
    :goto_1
    :try_start_8
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    const-string v3, "Exception in creating tun interface"

    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object v2

    .line 400
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 408
    const-string v1, "agentDisconnect"

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 413
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 414
    :cond_6
    :try_start_9
    new-instance v1, Ljava/lang/SecurityException;

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    .line 418
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    iget-object v4, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v2

    .line 433
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 436
    throw v1

    .line 437
    :catchall_1
    move-exception p1

    .line 438
    goto :goto_2

    .line 439
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v3, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v2

    .line 455
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 458
    throw v1

    .line 459
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    .line 461
    const-string v2, "Restricted users cannot establish VPNs"

    .line 463
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 466
    throw v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 467
    :catch_2
    :try_start_a
    new-instance v1, Ljava/lang/SecurityException;

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    .line 471
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 476
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    move-result-object p1

    .line 483
    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 486
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 487
    :goto_2
    :try_start_b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 491
    :goto_3
    monitor-exit p0

    .line 492
    throw p1
.end method

.method public final hideNotification(I)V
    .locals 7

    .line 1
    const-string v0, "Exception: "

    .line 3
    sget-boolean v1, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 5
    const-string/jumbo v2, "knoxEnterpriseVpn"

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string/jumbo v1, "hideNotification > domain : "

    .line 13
    invoke-static {p1, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v3

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 22
    const-string/jumbo v1, "notification"

    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/NotificationManager;

    .line 31
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 38
    move-result v1

    .line 39
    const/4 v5, 0x1

    .line 40
    const v6, 0x186a0

    .line 43
    if-ne v1, v5, :cond_1

    .line 45
    const-string v1, "Knox_Notification"

    .line 47
    new-instance v5, Landroid/os/UserHandle;

    .line 49
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 52
    invoke-virtual {p0, v1, v6, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    add-int/2addr v6, p1

    .line 61
    new-instance v1, Landroid/os/UserHandle;

    .line 63
    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1, v6, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :goto_2
    return-void

    .line 95
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public isCallerEstablishedOwnerLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v0

    .line 13
    iget p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mOwnerUID:I

    .line 15
    if-ne v0, p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final makeLinkProperties()Landroid/net/LinkProperties;
    .locals 10

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    .line 3
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 13
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/net/LinkAddress;

    .line 33
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 36
    move-result-object v3

    .line 37
    instance-of v3, v3, Ljava/net/Inet4Address;

    .line 39
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string/jumbo v6, "knoxEnterpriseVpn"

    .line 44
    const/4 v7, 0x0

    .line 45
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    const-string v8, "The ipv4 address added to the knox vpn interface is "

    .line 61
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mAddress:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Landroid/net/RouteInfo;

    .line 78
    new-instance v8, Landroid/net/IpPrefix;

    .line 80
    sget-object v9, Lcom/android/net/module/util/NetworkStackConstants;->IPV4_ADDR_ANY:Ljava/net/Inet4Address;

    .line 82
    invoke-direct {v8, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 85
    invoke-direct {v3, v8, v7, v7, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 91
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 94
    move-result-object v3

    .line 95
    instance-of v3, v3, Ljava/net/Inet6Address;

    .line 97
    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    iput-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    const-string v8, "The ipv6 address added to the knox vpn interface is "

    .line 113
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v8, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mV6Address:Ljava/lang/String;

    .line 118
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v3, Landroid/net/RouteInfo;

    .line 130
    new-instance v6, Landroid/net/IpPrefix;

    .line 132
    sget-object v8, Lcom/android/net/module/util/NetworkStackConstants;->IPV6_ADDR_ANY:Ljava/net/Inet6Address;

    .line 134
    invoke-direct {v6, v8, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 137
    invoke-direct {v3, v6, v7, v7, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 143
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 149
    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 151
    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object v1

    .line 157
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Ljava/lang/String;

    .line 169
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 176
    goto :goto_1

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 179
    if-eqz v1, :cond_4

    .line 181
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 184
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 191
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 193
    if-eqz v2, :cond_5

    .line 195
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    move-result-object v2

    .line 199
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_5

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Ljava/lang/String;

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v3, 0x20

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 233
    iget p0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    .line 235
    if-lez p0, :cond_6

    .line 237
    invoke-virtual {v0, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 240
    :cond_6
    return-object v0
.end method

.method public final refreshNotification(IZ)V
    .locals 8

    .line 1
    const-string v0, "Exception: "

    .line 3
    sget-boolean v1, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 5
    const-string/jumbo v2, "knoxEnterpriseVpn"

    .line 8
    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "refreshNotification > domain : "

    .line 15
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, ", optionAdd : "

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v3

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 42
    const-string/jumbo v5, "notification"

    .line 45
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/NotificationManager;

    .line 51
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 61
    const/4 v5, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v5, 0x0

    .line 64
    :goto_0
    iget-object v6, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 66
    iget-object v7, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 68
    invoke-static {v6, v7, p2, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p0, p2, v5}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 75
    move-result-object p0

    .line 76
    const p2, 0x186a0

    .line 79
    if-eqz v5, :cond_2

    .line 81
    const-string v5, "Knox_Notification"

    .line 83
    new-instance v6, Landroid/os/UserHandle;

    .line 85
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 88
    invoke-virtual {v1, v5, p2, p0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_4

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    add-int/2addr p2, p1

    .line 97
    new-instance v5, Landroid/os/UserHandle;

    .line 99
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-virtual {v1, p1, p2, p0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    goto :goto_3

    .line 110
    :goto_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    goto :goto_1

    .line 130
    :goto_3
    return-void

    .line 131
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw p0
.end method

.method public final resetUidListInNetworkCapabilities()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/EnterpriseVpn;->applyBlockingRulesToUidRange(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 7
    check-cast v0, Landroid/util/ArraySet;

    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 12
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 14
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 16
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 30
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 32
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final showNotification(Ljava/lang/String;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    iget v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I

    .line 7
    const-string/jumbo v3, "showNotification > keyicon notified to user for non installed apps "

    .line 10
    const-string/jumbo v4, "knoxEnterpriseVpn"

    .line 13
    sget-boolean v5, Lcom/android/server/connectivity/EnterpriseVpn;->DBG:Z

    .line 15
    if-eqz v5, :cond_0

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v7, "showNotification > profileName : "

    .line 22
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    move-object/from16 v7, p1

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v7, " , optionAdd : "

    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iget-object v6, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 47
    const-string/jumbo v7, "notification"

    .line 50
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Landroid/app/NotificationManager;

    .line 56
    iget-object v7, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 58
    if-eqz v7, :cond_9

    .line 60
    if-nez v6, :cond_1

    .line 62
    goto/16 :goto_7

    .line 64
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 67
    move-result-wide v8

    .line 68
    iput-wide v8, v7, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 73
    move-result-wide v8

    .line 74
    :try_start_0
    iget-object v10, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 76
    invoke-static {v10}, Lcom/android/server/connectivity/EnterpriseVpn;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    .line 79
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v11, 0x0

    .line 81
    const-string v12, "Knox_Notification"

    .line 83
    const/4 v14, 0x0

    .line 84
    const v15, 0x186a0

    .line 87
    if-eqz v10, :cond_5

    .line 89
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 92
    move-result v16

    .line 93
    if-lez v16, :cond_5

    .line 95
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v2

    .line 99
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_8

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/lang/String;

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    move-result v3

    .line 115
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 118
    move-result-object v10

    .line 119
    invoke-interface {v10, v3}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_2

    .line 125
    const/4 v10, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    move v10, v14

    .line 128
    :goto_1
    iget-object v13, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v13, v7, v1, v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    .line 133
    move-result-object v13

    .line 134
    invoke-virtual {v0, v13, v10}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 137
    move-result-object v13

    .line 138
    if-eqz v10, :cond_3

    .line 140
    new-instance v10, Landroid/os/UserHandle;

    .line 142
    invoke-direct {v10, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 145
    invoke-virtual {v6, v12, v15, v13, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 148
    goto :goto_2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_5

    .line 151
    :cond_3
    add-int v10, v3, v15

    .line 153
    new-instance v15, Landroid/os/UserHandle;

    .line 155
    invoke-direct {v15, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 158
    invoke-virtual {v6, v11, v10, v13, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 161
    :goto_2
    if-eqz v5, :cond_4

    .line 163
    new-instance v10, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string/jumbo v13, "showNotification > keyicon notified to user "

    .line 171
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_4
    const v15, 0x186a0

    .line 187
    goto :goto_0

    .line 188
    :cond_5
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 191
    move-result-object v1

    .line 192
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_6

    .line 198
    const/4 v13, 0x1

    .line 199
    goto :goto_3

    .line 200
    :cond_6
    move v13, v14

    .line 201
    :goto_3
    iget-object v1, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {v1, v7, v14, v2}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelEnterpriseVpnAsUser(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;ZI)Landroid/app/PendingIntent;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1, v13}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 210
    move-result-object v0

    .line 211
    if-eqz v13, :cond_7

    .line 213
    new-instance v1, Landroid/os/UserHandle;

    .line 215
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 218
    const v7, 0x186a0

    .line 221
    invoke-virtual {v6, v12, v7, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 224
    goto :goto_4

    .line 225
    :cond_7
    const v7, 0x186a0

    .line 228
    add-int v15, v2, v7

    .line 230
    new-instance v1, Landroid/os/UserHandle;

    .line 232
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 235
    invoke-virtual {v6, v11, v15, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 238
    :goto_4
    if-eqz v5, :cond_8

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    goto :goto_6

    .line 256
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    const-string v2, "Exception: "

    .line 260
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-static {v0, v1, v4}, Lcom/android/server/connectivity/EnterpriseVpn$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 266
    :cond_8
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    return-void

    .line 270
    :cond_9
    :goto_7
    const-string v0, "Error : can not init"

    .line 272
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public final updateNotificationIcon(I)V
    .locals 9

    .line 1
    const-string v0, "Exception: "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 9
    const-string/jumbo v4, "notification"

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroid/app/NotificationManager;

    .line 18
    invoke-static {}, Lcom/android/server/connectivity/EnterpriseVpn;->getKnoxVpnService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getNotificationDismissibleFlagInternal(I)I

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 31
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v5, p1}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanelRefreshAsUser(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0, v5, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->createNotification(Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string v5, "Knox_Notification"

    .line 43
    const/4 v6, 0x0

    .line 44
    const v7, 0x186a0

    .line 47
    if-eqz v4, :cond_1

    .line 49
    add-int v4, p1, v7

    .line 51
    :try_start_1
    new-instance v8, Landroid/os/UserHandle;

    .line 53
    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    invoke-virtual {v3, v6, v4, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 59
    new-instance v4, Landroid/os/UserHandle;

    .line 61
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 64
    invoke-virtual {v3, v5, v7, p0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_4

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    .line 74
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 77
    invoke-virtual {v3, v5, v7, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 80
    add-int/2addr v7, p1

    .line 81
    new-instance v4, Landroid/os/UserHandle;

    .line 83
    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 86
    invoke-virtual {v3, v6, v7, p0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_2
    const-string/jumbo p1, "knoxEnterpriseVpn"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    goto :goto_1

    .line 116
    :goto_3
    return-void

    .line 117
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0
.end method

.method public final updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setting state="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", reason="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo$DetailedState;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object p2, Lcom/android/server/connectivity/EnterpriseVpn$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    .line 41
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    .line 44
    move-result v0

    .line 45
    aget p2, p2, v0

    .line 47
    const/4 v0, 0x1

    .line 48
    if-eq p2, v0, :cond_4

    .line 50
    const/4 v0, 0x2

    .line 51
    if-eq p2, v0, :cond_3

    .line 53
    const/4 v0, 0x3

    .line 54
    if-eq p2, v0, :cond_3

    .line 56
    const/4 v0, 0x4

    .line 57
    if-eq p2, v0, :cond_1

    .line 59
    const/4 p0, 0x5

    .line 60
    if-ne p2, p0, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "Illegal state argument "

    .line 69
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0

    .line 83
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 85
    if-nez p0, :cond_2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    const-string p1, "VPN can only go to CONNECTING state when the agent is null."

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 98
    if-eqz p1, :cond_5

    .line 100
    invoke-virtual {p1}, Landroid/net/NetworkAgent;->unregister()V

    .line 103
    iput-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 108
    if-eqz p0, :cond_5

    .line 110
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 113
    :cond_5
    :goto_0
    return-void
.end method

.method public final updateUidListInNetworkCapabilities()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/util/Range;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v3, "uidRange going to be updated is "

    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, " "

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, " for profile "

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mProfileName:Ljava/lang/String;

    .line 55
    const-string/jumbo v3, "knoxEnterpriseVpn"

    .line 58
    invoke-static {v2, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    .line 64
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 66
    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities$Builder;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 71
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities$Builder;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 81
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 83
    if-eqz p0, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 88
    :cond_1
    return-void
.end method

.method public final updateUidRangesToPerAppVpn(Ljava/util/Set;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "updateUidRangesToPerAppVpn "

    .line 4
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 7
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    check-cast p1, Ljava/util/HashSet;

    .line 12
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 35
    new-instance v2, Landroid/util/Range;

    .line 37
    invoke-direct {v2, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 40
    check-cast v1, Landroid/util/ArraySet;

    .line 42
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 48
    new-instance v2, Landroid/util/Range;

    .line 50
    invoke-direct {v2, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 53
    check-cast v1, Landroid/util/ArraySet;

    .line 55
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    .line 62
    return-void
.end method

.method public final updateUidRangesToUserVpn(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "updateUidRangesToUserVpn "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const v0, 0x186a0

    .line 33
    mul-int/2addr p1, v0

    .line 34
    add-int/lit8 v0, p1, 0x1

    .line 36
    const v1, 0x1869f

    .line 39
    add-int/2addr p1, v1

    .line 40
    if-eqz p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 44
    new-instance v1, Landroid/util/Range;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v1, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 57
    check-cast p2, Landroid/util/ArraySet;

    .line 59
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 65
    new-instance v1, Landroid/util/Range;

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v1, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 78
    check-cast p2, Landroid/util/ArraySet;

    .line 80
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    .line 86
    return-void
.end method

.method public final updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "updateUidRangesToUserVpnWithBlackList "

    .line 4
    const-string/jumbo v1, "knoxEnterpriseVpn"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Ljava/util/HashSet;

    .line 13
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 28
    new-instance p2, Landroid/util/Range;

    .line 30
    const v1, 0x186a0

    .line 33
    mul-int v2, p1, v1

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 41
    mul-int/2addr p1, v1

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 51
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Integer;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result p1

    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result v1

    .line 83
    if-ne v1, p1, :cond_1

    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 90
    new-instance v3, Landroid/util/Range;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p1

    .line 96
    add-int/lit8 v4, v1, -0x1

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 102
    invoke-direct {v3, p1, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 105
    check-cast v2, Landroid/util/ArraySet;

    .line 107
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 112
    move p1, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Integer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result v0

    .line 124
    if-gt p1, v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn;->knoxVpnUidRanges:Ljava/util/Set;

    .line 128
    new-instance v1, Landroid/util/Range;

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Ljava/lang/Integer;

    .line 140
    invoke-direct {v1, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 143
    check-cast v0, Landroid/util/ArraySet;

    .line 145
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidListInNetworkCapabilities()V

    .line 151
    return-void
.end method

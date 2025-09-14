.class public final Lcom/android/server/net/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z


# instance fields
.field public mActiveAlerts:Ljava/util/HashMap;

.field public mActiveQuotas:Ljava/util/HashMap;

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCloLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mDaemonHandler:Landroid/os/Handler;

.field public volatile mDataSaverMode:Z

.field public final mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

.field public final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field public volatile mFirewallEnabled:Z

.field public mICloEventObserver:Landroid/net/ICloEventObserver;

.field public mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

.field public mNetdService:Landroid/net/INetd;

.field public mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

.field public final mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final mObservers:Landroid/os/RemoteCallbackList;

.field public mOemNetd:Lcom/android/internal/net/IOemNetd;

.field public final mQuotaLock:Ljava/lang/Object;

.field public final mRulesLock:Ljava/lang/Object;

.field public volatile mStrictEnabled:Z

.field public mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

.field public mUidCleartextPolicy:Landroid/util/SparseIntArray;

.field public final mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallRules:Landroid/util/SparseIntArray;

.field public final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

.field public final mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

.field public mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

.field public final mUseMeteredFirewallChains:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/INetworkManagementService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 40
    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 68
    .line 69
    new-instance v0, Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 75
    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    .line 84
    .line 85
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 89
    .line 90
    new-instance v0, Landroid/util/SparseIntArray;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 96
    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    .line 98
    .line 99
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    new-instance v0, Landroid/util/SparseIntArray;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 110
    .line 111
    new-instance v0, Landroid/util/SparseIntArray;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 117
    .line 118
    new-instance v0, Landroid/util/SparseIntArray;

    .line 119
    .line 120
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 124
    .line 125
    new-instance v0, Landroid/util/SparseIntArray;

    .line 126
    .line 127
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 131
    .line 132
    new-instance v0, Landroid/util/SparseIntArray;

    .line 133
    .line 134
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 138
    .line 139
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/Object;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    iput-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 163
    .line 164
    invoke-static {}, Lcom/android/server/net/Flags;->useMeteredFirewallChains()Z

    .line 165
    .line 166
    .line 167
    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 169
    .line 170
    const/16 p2, 0xb

    .line 171
    .line 172
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 173
    .line 174
    .line 175
    const/16 p2, 0xc

    .line 176
    .line 177
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Landroid/os/Handler;

    .line 181
    .line 182
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 194
    .line 195
    new-instance p1, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 196
    .line 197
    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 201
    .line 202
    new-instance p1, Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 203
    .line 204
    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$LocalService;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    .line 205
    .line 206
    .line 207
    const-class p0, Lcom/android/server/net/NetworkManagementService$LocalService;

    .line 208
    .line 209
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public static convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v2, "throw"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v2, "unreachable"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_3
    :goto_0
    new-instance v0, Landroid/net/RouteInfoParcel;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/net/RouteInfoParcel;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v2, v0, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getMtu()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iput p0, v0, Landroid/net/RouteInfoParcel;->mtu:I

    .line 68
    .line 69
    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/net/NetworkManagementService;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/android/server/net/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkManagementService$Dependencies;)V

    .line 9
    .line 10
    .line 11
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 12
    .line 13
    const-string v0, "NetworkManagement"

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string v2, "Creating NetworkManagementService"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string v2, "Connecting native netd service"

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v2, v1, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, v1, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 39
    .line 40
    :try_start_0
    iget-object v3, v1, Lcom/android/server/net/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/net/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 41
    .line 42
    invoke-interface {v2, v3}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 43
    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const-string p0, "Register unsolicited event listener"

    .line 48
    .line 49
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string v2, "Failed to set Netd unsolicited event listener "

    .line 55
    .line 56
    invoke-static {p0, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    :try_start_1
    iget-object p0, v1, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 60
    .line 61
    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iput-object p0, v1, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 70
    .line 71
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    const-string p0, "Get OemNet listener"

    .line 76
    .line 77
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception p0

    .line 82
    const-string v2, "Failed to get OemNetd listener "

    .line 83
    .line 84
    invoke-static {p0, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 88
    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    const-string p0, "Connected"

    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_4
    return-object v1
.end method

.method public static dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 2

    .line 1
    const-string v0, "UID firewall "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p1, " rule: ["

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-ge v0, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    .line 27
    .line 28
    const-string v1, ":"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, p1, -0x1

    .line 41
    .line 42
    if-ge v0, v1, :cond_0

    .line 43
    .line 44
    const-string v1, ","

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string p1, "]"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 2

    .line 1
    const-string v0, "UID bandwith control "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p1, ": ["

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-ge v0, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, p1, -0x1

    .line 29
    .line 30
    if-ge v0, v1, :cond_0

    .line 31
    .line 32
    const-string v1, ","

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "]"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final activateClo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "activate Clo native is called: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkManagement"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->activateClo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final activateCloGro()V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "activate Clo Gro native is called"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->activateCloGro()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final addApeRule(ZLjava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "addRule is called  add "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, " true"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v1, "false"

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string v2, ", interface name "

    .line 20
    .line 21
    const-string v3, ", bandwidthMbps "

    .line 22
    .line 23
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "NetworkManagement"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 39
    .line 40
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addApeRule(ZLjava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final addChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addchain chain : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkManagement"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v2, "iptype : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 42
    .line 43
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final addIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addIpAcceptRule"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final addLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addLegacyRoute"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkManagement"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 24
    .line 25
    move v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    move-object v6, p4

    .line 29
    move v7, p5

    .line 30
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final addMnxbRule(ZLjava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "addRule is called  add "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v1, " true"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string/jumbo v1, "false"

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string v2, ", interface name "

    .line 20
    .line 21
    const-string v3, ", bandwidthMbps "

    .line 22
    .line 23
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "NetworkManagement"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 39
    .line 40
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMnxbRule(ZLjava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public final addMptcpLink(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "addmptcplink"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "NetworkManagement"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public final addOrRemoveSystemAppFromDataSaverWhitelist(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 19
    .line 20
    invoke-interface {p0, p2}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string p0, "addOrRemoveSystemAppFromDataSaverWhitelist Error"

    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    move-object v6, p3

    .line 15
    move-object v7, p4

    .line 16
    move v8, p5

    .line 17
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final addSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addSocksRule"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move v6, p4

    .line 17
    move-object v7, p5

    .line 18
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final addSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addSocksSkipRule"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final addSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "addSocksSkipRuleProto"

    .line 2
    .line 3
    const-string v1, "NetworkManagement"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, " iptype : "

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 29
    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move-object v5, p3

    .line 33
    move v6, p4

    .line 34
    move-object v7, p5

    .line 35
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final addSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addSourcePortAcceptRule"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final addSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addSourceRoute"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final addTosPolicy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->addTosPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error addTosPolicy > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final addUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addSocksRule"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move-object v5, p3

    .line 16
    move v6, p4

    .line 17
    move v7, p5

    .line 18
    move-object v8, p6

    .line 19
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final addUidToChain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string v1, "addUidToChain"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 12
    .line 13
    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public final allowProtect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final applyUidCleartextNetworkPolicy(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p1, "Unknown policy "

    .line 14
    .line 15
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :cond_2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 25
    .line 26
    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final buildFirewall()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final cleanAllBlock()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "cleanAllBlock"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final cleanBlockPorts()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "cleanBlockPorts"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanBlockPorts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final cleanOnlyAllowIPs()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "cleanOnlyAllowIPs"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->cleanOnlyAllowIPs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final clearEbpfMap(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "clearEbpfMap failed"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final clearTosMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->clearTosMap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "Error clearTosMap > "

    .line 18
    .line 19
    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final closeSocketsForFreecess(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final closeSocketsForUid(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/UidRangeParcel;

    .line 2
    .line 3
    invoke-direct {v0, p1, p1}, Landroid/net/UidRangeParcel;-><init>(II)V

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [Landroid/net/UidRangeParcel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 14
    .line 15
    invoke-interface {p0, v0, v1}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Error closing sockets for uid="

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ": "

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "NetworkManagement"

    .line 43
    .line 44
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final closeSocketsForUids([I)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkManagementService;->closeSocketsForUid(I)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public final deactivateClo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "deactivate Clo native is called: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->deactivateClo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final deactivateCloGro()V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "deactivate Clo Gro native is called"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->deactivateCloGro()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final delIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "delIpAcceptRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final delSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "delSourcePortAcceptRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final delSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "delSourceRoute"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final denyProtect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final disableDAD(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "disableDAD ifName "

    .line 2
    .line 3
    .line 4
    const-string v1, "NetworkManagement"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 15
    .line 16
    const-string v5, "accept_dad"

    .line 17
    .line 18
    const-string v6, "0"

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    const/4 v3, 0x1

    .line 22
    move-object v4, p1

    .line 23
    invoke-interface/range {v1 .. v6}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 27
    .line 28
    const-string/jumbo v11, "dad_transmits"

    .line 29
    .line 30
    .line 31
    const-string v12, "0"

    .line 32
    .line 33
    const/4 v8, 0x6

    .line 34
    const/4 v9, 0x1

    .line 35
    move-object v10, p1

    .line 36
    invoke-interface/range {v7 .. v12}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Landroid/os/RemoteException;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/net/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final disableIpv6(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final disableMptcp()V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "disableMptcp"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "NMS#disableNat not supported in V+"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "NetworkManagement"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "Flags:"

    .line 13
    .line 14
    const-string/jumbo p3, "com.android.server.net.use_metered_firewall_chains: "

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    const-string p3, "Active quota ifaces: "

    .line 40
    .line 41
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p3, "Active alert ifaces: "

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p3, "Data saver mode: "

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean p3, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    const-string/jumbo v0, "denied UIDs"

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 84
    .line 85
    invoke-static {p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "allowed UIDs"

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 91
    .line 92
    invoke-static {p2, v0, v1}, Lcom/android/server/net/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 93
    .line 94
    .line 95
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    iget-object p3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 98
    .line 99
    monitor-enter p3

    .line 100
    :try_start_3
    const-string p1, ""

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "UID firewall standby chain enabled: "

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x2

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo p1, "standby"

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 124
    .line 125
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 126
    .line 127
    .line 128
    const-string p1, "UID firewall dozable chain enabled: "

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 139
    .line 140
    .line 141
    const-string/jumbo p1, "dozable"

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 145
    .line 146
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 147
    .line 148
    .line 149
    const-string p1, "UID firewall powersave chain enabled: "

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x3

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    .line 161
    .line 162
    const-string/jumbo p1, "powersave"

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 166
    .line 167
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 168
    .line 169
    .line 170
    const-string p1, "UID firewall restricted mode chain enabled: "

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 p1, 0x4

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo p1, "restricted"

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 187
    .line 188
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 189
    .line 190
    .line 191
    const-string p1, "UID firewall low power standby chain enabled: "

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/4 p1, 0x5

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 202
    .line 203
    .line 204
    const-string/jumbo p1, "low_power_standby"

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 208
    .line 209
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 210
    .line 211
    .line 212
    const-string p1, "UID firewall background chain enabled: "

    .line 213
    .line 214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 p1, 0x6

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 223
    .line 224
    .line 225
    const-string p1, "background"

    .line 226
    .line 227
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 228
    .line 229
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 230
    .line 231
    .line 232
    const-string p1, "UID firewall metered allow chain enabled (Data saver mode): "

    .line 233
    .line 234
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const/16 p1, 0xa

    .line 238
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 244
    .line 245
    .line 246
    const-string/jumbo p1, "metered_allow"

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 250
    .line 251
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 252
    .line 253
    .line 254
    const-string p1, "UID firewall metered deny_user chain enabled (always-on): "

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 p1, 0xb

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    .line 267
    .line 268
    const-string/jumbo p1, "metered_deny_user"

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 272
    .line 273
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 274
    .line 275
    .line 276
    const-string p1, "UID firewall metered deny_admin chain enabled (always-on): "

    .line 277
    .line 278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const/16 p1, 0xc

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    .line 289
    .line 290
    const-string/jumbo p1, "metered_deny_admin"

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 294
    .line 295
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 296
    .line 297
    .line 298
    const-string p1, "UID firewall oem deny chain enabled: "

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const/4 p1, 0x7

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 309
    .line 310
    .line 311
    const-string/jumbo p1, "fw_oem_deny_1"

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 315
    .line 316
    invoke-static {p2, p1, v0}, Lcom/android/server/net/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 317
    .line 318
    .line 319
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    const-string p1, "Firewall enabled: "

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 326
    .line 327
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 328
    .line 329
    .line 330
    const-string p1, "Netd service status: "

    .line 331
    .line 332
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 336
    .line 337
    if-nez p0, :cond_1

    .line 338
    .line 339
    const-string/jumbo p0, "disconnected"

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_1
    :try_start_4
    invoke-interface {p0}, Landroid/net/INetd;->isAlive()Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    if-eqz p0, :cond_2

    .line 351
    .line 352
    const-string p0, "alive"

    .line 353
    .line 354
    goto :goto_0

    .line 355
    :cond_2
    const-string/jumbo p0, "dead"

    .line 356
    .line 357
    .line 358
    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 359
    .line 360
    .line 361
    goto :goto_1

    .line 362
    :catch_0
    const-string/jumbo p0, "unreachable"

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_1
    return-void

    .line 369
    :catchall_0
    move-exception p0

    .line 370
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    throw p0

    .line 372
    :catchall_1
    move-exception p0

    .line 373
    goto :goto_2

    .line 374
    :catchall_2
    move-exception p0

    .line 375
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 376
    :try_start_7
    throw p0

    .line 377
    :goto_2
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 378
    throw p0
.end method

.method public final enableEpdg(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final enableIpv6(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-interface {p0, p1, v0}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final enableKnoxVpnFlagForTether(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "enableKnoxVpnFlagForTether failed for chained vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final enableMptcp(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "enableMptcp"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "NMS#enableNat not supported in V+"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final enforceSystemUid()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v0, 0x3e8

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    .line 17
    const-string v0, "Only available to AID_SYSTEM"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final enforceSystemUidexceptUserId()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v0, 0x3e8

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string v0, "Only available to AID_SYSTEM"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final getFirewallChainState(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getFirewallRuleName(II)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 9
    .line 10
    xor-int/2addr p0, v0

    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    move p0, v0

    .line 13
    goto :goto_0

    .line 14
    :pswitch_2
    const/4 p0, 0x0

    .line 15
    :goto_0
    const-string/jumbo p1, "deny"

    .line 16
    .line 17
    .line 18
    const-string v1, "allow"

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    .line 24
    :cond_0
    move-object p1, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x2

    .line 27
    if-ne p2, p0, :cond_0

    .line 28
    .line 29
    :cond_2
    :goto_1
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    new-instance p1, Landroid/net/InterfaceConfiguration;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroid/net/LinkAddress;

    .line 35
    .line 36
    iget v2, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 37
    .line 38
    invoke-direct {v1, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 45
    .line 46
    array-length v0, p0

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    .line 50
    aget-object v2, p0, v1

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object p1

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v0, "Invalid InterfaceConfigurationParcel"

    .line 63
    .line 64
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :catch_1
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final getIpForwardingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/net/INetd;->ipfwdEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string v0, "NMS#getIpForwardingEnabled not supported in V+"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getL4sConnCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->getL4sConnCount()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v0, "Error getL4sConnCount > "

    .line 19
    .line 20
    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final getNetworkStatsVideoCall(Ljava/lang/String;II)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    array-length p2, p0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    move-wide v2, v0

    .line 17
    :goto_0
    if-ge p3, p2, :cond_0

    .line 18
    .line 19
    aget-object v4, p0, p3

    .line 20
    .line 21
    :try_start_1
    iget-object v5, v4, Landroid/net/TetherStatsParcel;->iface:Ljava/lang/String;

    .line 22
    .line 23
    iget-wide v5, v4, Landroid/net/TetherStatsParcel;->rxBytes:J

    .line 24
    .line 25
    add-long/2addr v0, v5

    .line 26
    iget-wide v4, v4, Landroid/net/TetherStatsParcel;->txBytes:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    add-long/2addr v2, v4

    .line 29
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v0, "problem parsing video call stats for "

    .line 38
    .line 39
    .line 40
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ": "

    .line 47
    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_0
    add-long/2addr v0, v2

    .line 63
    return-wide v0

    .line 64
    :catch_1
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string/jumbo p2, "problem parsing videocall stats: "

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final getTcpLocalPorts([I)[I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->getTcpLocalPorts([I)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "Error getTcpLocalPorts > "

    .line 22
    .line 23
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object v0
.end method

.method public final getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "Unknown chain:"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final invokeForAllObservers(Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    .line 17
    .line 18
    invoke-interface {p1, v2}, Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final isBandwidthControlEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isFirewallEnabled()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 5
    .line 6
    return p0
.end method

.method public final isNetworkRestricted(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final isNetworkRestrictedInternal(I)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Uid "

    .line 6
    .line 7
    const-string v3, "Uid "

    .line 8
    .line 9
    const-string v4, "Uid "

    .line 10
    .line 11
    const-string v5, "Uid "

    .line 12
    .line 13
    const-string v6, "Uid "

    .line 14
    .line 15
    const-string v7, "Uid "

    .line 16
    .line 17
    const-string v8, "Uid "

    .line 18
    .line 19
    const-string v9, "Uid "

    .line 20
    .line 21
    const-string v10, "Uid "

    .line 22
    .line 23
    const-string v11, "Uid "

    .line 24
    .line 25
    const-string v12, "Uid "

    .line 26
    .line 27
    const-string v13, "Uid "

    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v14

    .line 32
    const/4 v15, 0x2

    .line 33
    :try_start_0
    invoke-virtual {v0, v15}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 34
    .line 35
    .line 36
    move-result v16

    .line 37
    if-eqz v16, :cond_2

    .line 38
    .line 39
    iget-object v15, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-virtual {v15, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    move-object/from16 v17, v2

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    if-ne v15, v2, :cond_1

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string v0, "NetworkManagement"

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " restricted because of app standby mode"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_0
    :goto_0
    monitor-exit v14

    .line 81
    const/4 v2, 0x1

    .line 82
    return v2

    .line 83
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move-object/from16 v17, v2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 89
    .line 90
    .line 91
    move-result v13

    .line 92
    if-eqz v13, :cond_4

    .line 93
    .line 94
    iget-object v13, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 95
    .line 96
    invoke-virtual {v13, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eq v13, v2, :cond_4

    .line 101
    .line 102
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    const-string v0, "NetworkManagement"

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, " restricted because of device idle mode"

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_3
    monitor-exit v14

    .line 129
    const/4 v0, 0x1

    .line 130
    return v0

    .line 131
    :cond_4
    const/4 v2, 0x3

    .line 132
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    const/4 v12, 0x1

    .line 145
    if-eq v2, v12, :cond_6

    .line 146
    .line 147
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 148
    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    const-string v0, "NetworkManagement"

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v1, " restricted because of power saver mode"

    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_5
    monitor-exit v14

    .line 174
    const/4 v0, 0x1

    .line 175
    return v0

    .line 176
    :cond_6
    const/4 v2, 0x4

    .line 177
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallRestrictedRules:Landroid/util/SparseIntArray;

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    const/4 v11, 0x1

    .line 190
    if-eq v2, v11, :cond_8

    .line 191
    .line 192
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 193
    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    const-string v0, "NetworkManagement"

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, " restricted because of restricted mode"

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_7
    monitor-exit v14

    .line 219
    const/4 v0, 0x1

    .line 220
    return v0

    .line 221
    :cond_8
    const/4 v2, 0x5

    .line 222
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_a

    .line 227
    .line 228
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallLowPowerStandbyRules:Landroid/util/SparseIntArray;

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    const/4 v10, 0x1

    .line 235
    if-eq v2, v10, :cond_a

    .line 236
    .line 237
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 238
    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    const-string v0, "NetworkManagement"

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v1, " restricted because of low power standby"

    .line 252
    .line 253
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :cond_9
    monitor-exit v14

    .line 264
    const/4 v0, 0x1

    .line 265
    return v0

    .line 266
    :cond_a
    const/4 v2, 0x6

    .line 267
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_c

    .line 272
    .line 273
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallBackgroundRules:Landroid/util/SparseIntArray;

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    const/4 v9, 0x1

    .line 280
    if-eq v2, v9, :cond_c

    .line 281
    .line 282
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 283
    .line 284
    if-eqz v0, :cond_b

    .line 285
    .line 286
    const-string v0, "NetworkManagement"

    .line 287
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, " restricted because it is in background"

    .line 297
    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :cond_b
    monitor-exit v14

    .line 309
    const/4 v0, 0x1

    .line 310
    return v0

    .line 311
    :cond_c
    const/4 v2, 0x7

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_e

    .line 317
    .line 318
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidFirewallOemDenyRules:Landroid/util/SparseIntArray;

    .line 319
    .line 320
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    const/4 v8, 0x2

    .line 325
    if-ne v2, v8, :cond_e

    .line 326
    .line 327
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 328
    .line 329
    if-eqz v0, :cond_d

    .line 330
    .line 331
    const-string v0, "NetworkManagement"

    .line 332
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string v1, " restricted because of freecess"

    .line 342
    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    :cond_d
    monitor-exit v14

    .line 354
    const/4 v0, 0x1

    .line 355
    return v0

    .line 356
    :cond_e
    iget-boolean v2, v0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 357
    .line 358
    if-eqz v2, :cond_14

    .line 359
    .line 360
    const/16 v2, 0xb

    .line 361
    .line 362
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-eqz v2, :cond_10

    .line 367
    .line 368
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyUserRules:Landroid/util/SparseIntArray;

    .line 369
    .line 370
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    const/4 v3, 0x2

    .line 375
    if-ne v2, v3, :cond_10

    .line 376
    .line 377
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 378
    .line 379
    if-eqz v0, :cond_f

    .line 380
    .line 381
    const-string v0, "NetworkManagement"

    .line 382
    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v1, " restricted because of user-restricted metered data in the background"

    .line 392
    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    :cond_f
    monitor-exit v14

    .line 404
    const/4 v0, 0x1

    .line 405
    return v0

    .line 406
    :cond_10
    const/16 v2, 0xc

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_12

    .line 413
    .line 414
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallDenyAdminRules:Landroid/util/SparseIntArray;

    .line 415
    .line 416
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    const/4 v3, 0x2

    .line 421
    if-ne v2, v3, :cond_12

    .line 422
    .line 423
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 424
    .line 425
    if-eqz v0, :cond_11

    .line 426
    .line 427
    const-string v0, "NetworkManagement"

    .line 428
    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v1, " restricted because of admin-restricted metered data in the background"

    .line 438
    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :cond_11
    monitor-exit v14

    .line 450
    const/4 v0, 0x1

    .line 451
    return v0

    .line 452
    :cond_12
    const/16 v2, 0xa

    .line 453
    .line 454
    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_18

    .line 459
    .line 460
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mUidMeteredFirewallAllowRules:Landroid/util/SparseIntArray;

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    const/4 v2, 0x1

    .line 467
    if-eq v0, v2, :cond_18

    .line 468
    .line 469
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 470
    .line 471
    if-eqz v0, :cond_13

    .line 472
    .line 473
    const-string v0, "NetworkManagement"

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v1, " restricted because of data saver mode"

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    :cond_13
    monitor-exit v14

    .line 496
    const/4 v0, 0x1

    .line 497
    return v0

    .line 498
    :cond_14
    iget-object v2, v0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 499
    .line 500
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-eqz v2, :cond_16

    .line 505
    .line 506
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 507
    .line 508
    if-eqz v0, :cond_15

    .line 509
    .line 510
    const-string v0, "NetworkManagement"

    .line 511
    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v1, " restricted because of no metered data in the background"

    .line 521
    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    :cond_15
    monitor-exit v14

    .line 533
    const/4 v0, 0x1

    .line 534
    return v0

    .line 535
    :cond_16
    iget-boolean v2, v0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 536
    .line 537
    if-eqz v2, :cond_18

    .line 538
    .line 539
    iget-object v0, v0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-nez v0, :cond_18

    .line 546
    .line 547
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 548
    .line 549
    if-eqz v0, :cond_17

    .line 550
    .line 551
    const-string v0, "NetworkManagement"

    .line 552
    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    move-object/from16 v3, v17

    .line 556
    .line 557
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v1, " restricted because of data saver mode"

    .line 564
    .line 565
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    :cond_17
    monitor-exit v14

    .line 576
    const/4 v0, 0x1

    .line 577
    return v0

    .line 578
    :cond_18
    monitor-exit v14

    .line 579
    const/4 v0, 0x0

    .line 580
    return v0

    .line 581
    :goto_3
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    throw v0
.end method

.method public final isTetheringStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/net/INetd;->tetherIsEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string v0, "NMS#isTetheringStarted not supported in V+"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final l4StatsGet()[J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->l4StatsGet()[J

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final listInterfaces()[Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-class v0, Lcom/android/server/net/NetworkManagementService;

    .line 25
    .line 26
    const-string v0, "Error listing interfaces: %s"

    .line 27
    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v0, 0x3

    .line 37
    const/4 v1, 0x4

    .line 38
    const/4 v2, 0x0

    .line 39
    const-string v4, "NetworkManagementService"

    .line 40
    .line 41
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final listTetheredInterfaces()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string v0, "NMS#listTetheredInterfaces not supported in V+"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "modifyEpdg epdg "

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
    const-string v1, " "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "NetworkManagement"

    .line 24
    .line 25
    invoke-static {v0, p3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 29
    .line 30
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public final prepareNativeDaemon()V
    .locals 15

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x7

    .line 7
    const/4 v6, 0x1

    .line 8
    const-string v7, "Pushing "

    .line 9
    .line 10
    iget-object v8, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v8

    .line 13
    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    .line 14
    .line 15
    iget-boolean v9, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 16
    .line 17
    invoke-virtual {p0, v9}, Lcom/android/server/net/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 18
    .line 19
    .line 20
    iget-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-lez v9, :cond_1

    .line 27
    .line 28
    sget-boolean v10, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 29
    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    const-string v10, "NetworkManagement"

    .line 33
    .line 34
    new-instance v11, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v7, " active quota rules"

    .line 43
    .line 44
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_d

    .line 57
    .line 58
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    iput-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_1

    .line 79
    .line 80
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-lez v7, :cond_3

    .line 113
    .line 114
    sget-boolean v9, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 115
    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    const-string v9, "NetworkManagement"

    .line 119
    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v11, "Pushing "

    .line 126
    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v7, " active alert rules"

    .line 134
    .line 135
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    iput-object v9, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_3

    .line 166
    .line 167
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    check-cast v9, Ljava/util/Map$Entry;

    .line 172
    .line 173
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    check-cast v10, Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    check-cast v9, Ljava/lang/Long;

    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 186
    .line 187
    .line 188
    move-result-wide v11

    .line 189
    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 194
    .line 195
    const/4 v9, 0x0

    .line 196
    if-nez v7, :cond_9

    .line 197
    .line 198
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 199
    .line 200
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 202
    .line 203
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    const/4 v11, 0x0

    .line 208
    if-lez v10, :cond_5

    .line 209
    .line 210
    sget-boolean v12, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 211
    .line 212
    if-eqz v12, :cond_4

    .line 213
    .line 214
    const-string v12, "NetworkManagement"

    .line 215
    .line 216
    new-instance v13, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    const-string v14, "Pushing "

    .line 222
    .line 223
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v10, " UIDs to metered denylist rules"

    .line 230
    .line 231
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :catchall_1
    move-exception p0

    .line 243
    goto :goto_7

    .line 244
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 245
    .line 246
    new-instance v12, Landroid/util/SparseBooleanArray;

    .line 247
    .line 248
    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_5
    move-object v10, v11

    .line 255
    :goto_4
    iget-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 256
    .line 257
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    if-lez v12, :cond_7

    .line 262
    .line 263
    sget-boolean v11, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 264
    .line 265
    if-eqz v11, :cond_6

    .line 266
    .line 267
    const-string v11, "NetworkManagement"

    .line 268
    .line 269
    new-instance v13, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v14, "Pushing "

    .line 275
    .line 276
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v12, " UIDs to metered allowlist rules"

    .line 283
    .line 284
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 295
    .line 296
    new-instance v12, Landroid/util/SparseBooleanArray;

    .line 297
    .line 298
    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 299
    .line 300
    .line 301
    iput-object v12, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 302
    .line 303
    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    if-eqz v10, :cond_8

    .line 305
    .line 306
    move v7, v9

    .line 307
    :goto_5
    :try_start_2
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    if-ge v7, v12, :cond_8

    .line 312
    .line 313
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    invoke-virtual {p0, v12, v9, v13}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 322
    .line 323
    .line 324
    add-int/2addr v7, v6

    .line 325
    goto :goto_5

    .line 326
    :cond_8
    if-eqz v11, :cond_9

    .line 327
    .line 328
    move v7, v9

    .line 329
    :goto_6
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    if-ge v7, v10, :cond_9

    .line 334
    .line 335
    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 340
    .line 341
    .line 342
    move-result v12

    .line 343
    invoke-virtual {p0, v10, v6, v12}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .line 345
    .line 346
    add-int/2addr v7, v6

    .line 347
    goto :goto_6

    .line 348
    :goto_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    :try_start_4
    throw p0

    .line 350
    :cond_9
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 351
    .line 352
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-lez v7, :cond_b

    .line 357
    .line 358
    sget-boolean v10, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 359
    .line 360
    if-eqz v10, :cond_a

    .line 361
    .line 362
    const-string v10, "NetworkManagement"

    .line 363
    .line 364
    new-instance v11, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v12, "Pushing "

    .line 370
    .line 371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v7, " active UID cleartext policies"

    .line 378
    .line 379
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :cond_a
    iget-object v7, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 390
    .line 391
    new-instance v10, Landroid/util/SparseIntArray;

    .line 392
    .line 393
    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 394
    .line 395
    .line 396
    iput-object v10, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 397
    .line 398
    move v10, v9

    .line 399
    :goto_8
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    if-ge v10, v11, :cond_b

    .line 404
    .line 405
    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 410
    .line 411
    .line 412
    move-result v12

    .line 413
    invoke-virtual {p0, v11, v12}, Lcom/android/server/net/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V

    .line 414
    .line 415
    .line 416
    add-int/2addr v10, v6

    .line 417
    goto :goto_8

    .line 418
    :cond_b
    iget-boolean v7, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 419
    .line 420
    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 421
    .line 422
    .line 423
    const-string v7, ""

    .line 424
    .line 425
    invoke-virtual {p0, v9, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    const-string/jumbo v7, "standby "

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, v4, v7}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string/jumbo v4, "dozable "

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v6, v4}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    const-string/jumbo v4, "powersave "

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v3, v4}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string/jumbo v3, "restricted "

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 450
    .line 451
    .line 452
    const-string/jumbo v2, "low power standby "

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v1, v2}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string v1, "background"

    .line 459
    .line 460
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 464
    .line 465
    if-eqz v0, :cond_c

    .line 466
    .line 467
    const-string/jumbo v0, "metered_allow"

    .line 468
    .line 469
    .line 470
    const/16 v1, 0xa

    .line 471
    .line 472
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const-string/jumbo v0, "metered_deny_user"

    .line 476
    .line 477
    .line 478
    const/16 v1, 0xb

    .line 479
    .line 480
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const-string/jumbo v0, "metered_deny_admin"

    .line 484
    .line 485
    .line 486
    const/16 v1, 0xc

    .line 487
    .line 488
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :cond_c
    const-string/jumbo v0, "fw_oem deny_1 "

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, v5, v0}, Lcom/android/server/net/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 495
    .line 496
    .line 497
    new-array v0, v5, [I

    .line 498
    .line 499
    fill-array-data v0, :array_0

    .line 500
    .line 501
    .line 502
    :goto_9
    if-ge v9, v5, :cond_e

    .line 503
    .line 504
    aget v1, v0, v9

    .line 505
    .line 506
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_d

    .line 511
    .line 512
    invoke-virtual {p0, v1, v6}, Lcom/android/server/net/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    .line 514
    .line 515
    :cond_d
    add-int/2addr v9, v6

    .line 516
    goto :goto_9

    .line 517
    :cond_e
    :try_start_5
    const-string v0, "NetworkManagement"

    .line 518
    .line 519
    const-string/jumbo v1, "makeBlockChildChain"

    .line 520
    .line 521
    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 526
    .line 527
    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 528
    .line 529
    .line 530
    :try_start_6
    const-string v0, "NetworkManagement"

    .line 531
    .line 532
    const-string/jumbo v1, "makeVideoCallChain"

    .line 533
    .line 534
    .line 535
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 539
    .line 540
    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 541
    .line 542
    .line 543
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 544
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 545
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 546
    .line 547
    if-eqz v0, :cond_f

    .line 548
    .line 549
    monitor-exit p0

    .line 550
    goto :goto_a

    .line 551
    :catchall_2
    move-exception v0

    .line 552
    goto :goto_b

    .line 553
    :cond_f
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 554
    .line 555
    const-string v1, "batterystats"

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 569
    .line 570
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 571
    :goto_a
    :try_start_a
    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 572
    .line 573
    .line 574
    goto :goto_c

    .line 575
    :goto_b
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 576
    :try_start_c
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0

    .line 577
    :catch_0
    :goto_c
    return-void

    .line 578
    :catch_1
    move-exception p0

    .line 579
    :try_start_d
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 580
    .line 581
    .line 582
    move-result-object p0

    .line 583
    throw p0

    .line 584
    :catch_2
    move-exception p0

    .line 585
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 586
    .line 587
    .line 588
    move-result-object p0

    .line 589
    throw p0

    .line 590
    :goto_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 591
    throw p0

    .line 592
    nop

    .line 593
    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public final prioritizeApp(ZI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "prioritizeApp is called for uid "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", add "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v1, " true"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo v1, "false"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "NetworkManagement"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->prioritizeApp(ZI)I

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final prioritizeMnxbApp(ZI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "prioritizeApp is called for uid "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", add "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string v1, " true"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string/jumbo v1, "false"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "NetworkManagement"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->prioritizeMnxbApp(ZI)I

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final registerCloEventObserver(Landroid/net/ICloEventObserver;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "registerCloEventObserver"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mICloEventObserver:Landroid/net/ICloEventObserver;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdCloEventListener:Lcom/android/server/net/NetworkManagementService$NetdCloEventListener;

    .line 34
    .line 35
    invoke-interface {p1, p0}, Lcom/android/internal/net/IOemNetd;->registerCloEventListener(Lcom/android/internal/net/INetdCloEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw p0
.end method

.method public final registerNetdTetherEventListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "Initializing NetdTetherEventListener"

    .line 15
    .line 16
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;-><init>(Lcom/android/server/net/NetworkManagementService;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdTetherEventListener:Lcom/android/server/net/NetworkManagementService$NetdTetherEventListener;

    .line 29
    .line 30
    invoke-interface {v0, p0}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string/jumbo p0, "registerNetdTetherEventListener failed "

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removechain"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v2, "iptype : "

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 43
    .line 44
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final removeInterfaceAlert(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final removeInterfaceQuota(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 32
    .line 33
    invoke-interface {p0, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p0
.end method

.method public final removeLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removeLegacyRoute"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    move v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p4

    .line 30
    move v7, p5

    .line 31
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final removeMptcpLink(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "removemptcplink"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final removeSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "removeSocksRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move v6, p4

    .line 18
    move-object v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final removeSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "removeSocksSkipRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final removeSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "removeSocksSkipRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move v6, p4

    .line 18
    move-object v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final removeTosPolicy(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->removeTosPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error removeTosPolicy > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final removeUidFromChain(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "removeUidFromChain"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final removeUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "removeSocksRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move v6, p4

    .line 18
    move v7, p5

    .line 19
    move-object v8, p6

    .line 20
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final replaceApeRule(Ljava/lang/String;II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "replaceApeRule is called, interface name "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", from old bandwidthMbps "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", to new bandwidth "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "NetworkManagement"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->replaceApeRule(Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final replaceMnxbRule(Ljava/lang/String;II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "replaceMnxbRule is called, interface name "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", from old bandwidthMbps "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", to new bandwidth "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "NetworkManagement"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->replaceMnxbRule(Ljava/lang/String;II)I

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string/jumbo p0, "runKnoxFirewallRulesCommand failed for vpn profile"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
.end method

.method public final runKnoxRulesCommand(I[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "runKnoxRulesCommand failed for vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final setAdvertiseWindowSize(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setAdvertiseWindowSize is called, to set advertise window as "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAdvertiseWindowSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final setAllowHostAlone(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setAllowHostAlone"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAllowHostAlone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setAllowListIPs(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setAllowListIPs"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setAutoConf(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->interfaceSetAutoConf(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final setBlockAllDNSPackets(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setBlockAllDNSPackets"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setBlockAllPackets()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setBlockAllPackets"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final setBlockHostAlone(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setBlockHostAlone"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockHostAlone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setBlockListIPs(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setBlockListIPs"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "setBlockPorts, protocol: "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " directionBitMask: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " ports: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " callingUid: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " callingPid: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "NetworkManagement"

    .line 60
    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 65
    .line 66
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setBlockPorts(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final setDataSaverModeEnabled(Z)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "setDataSaverMode("

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setDataSaverMode(): already "

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled_enforcePermission()V

    .line 8
    .line 9
    .line 10
    sget-boolean v2, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "NetworkManagement"

    .line 15
    .line 16
    const-string/jumbo v3, "setDataSaverMode: "

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v3, p1, :cond_1

    .line 29
    .line 30
    const-string p1, "NetworkManagement"

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit v2

    .line 50
    return v4

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    const-string/jumbo v1, "setDataSaverModeEnabled"

    .line 55
    .line 56
    .line 57
    const-wide/32 v5, 0x200000

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-class v1, Landroid/net/ConnectivityManager;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setDataSaverEnabled(Z)V

    .line 80
    .line 81
    .line 82
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mUseMeteredFirewallChains:Z

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 92
    .line 93
    const/16 v1, 0xa

    .line 94
    .line 95
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 96
    .line 97
    .line 98
    monitor-exit v0

    .line 99
    goto :goto_0

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    :catchall_2
    move-exception p0

    .line 104
    goto :goto_3

    .line 105
    :catch_0
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    .line 109
    .line 110
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    return v4

    .line 112
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 113
    .line 114
    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mDataSaverMode:Z

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const-string p0, "NetworkManagement"

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, "): failed to set iptables"

    .line 134
    .line 135
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 143
    .line 144
    .line 145
    :goto_1
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 146
    .line 147
    .line 148
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    return v1

    .line 150
    :goto_2
    :try_start_7
    const-string v0, "NetworkManagement"

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v3, "setDataSaverMode("

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p1, "): failed with exception"

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 176
    .line 177
    .line 178
    :try_start_8
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 179
    .line 180
    .line 181
    monitor-exit v2

    .line 182
    const/4 p0, 0x0

    .line 183
    return p0

    .line 184
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 185
    .line 186
    .line 187
    throw p0

    .line 188
    :goto_4
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 189
    throw p0
.end method

.method public final setDestinationBasedMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "setDestinationBasedMarkRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    move v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-object v5, p3

    .line 17
    move v6, p4

    .line 18
    move v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final setDnsForwardersForKnoxVpn(I[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public final setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setEpdgInterfaceDropRule"

    .line 2
    .line 3
    .line 4
    const-string v1, "NetworkManagement"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final setFirewallChainEnabled(IZ)V
    .locals 5

    .line 1
    const-string v0, "Invalid chain for setFirewallChainEnabled: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getFirewallChainState(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ne v3, p2, :cond_0

    .line 17
    .line 18
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :try_start_4
    iget-object v4, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    .line 32
    .line 33
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    :try_start_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-class v0, Landroid/net/ConnectivityManager;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    .line 70
    :try_start_7
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->setFirewallChainEnabled(IZ)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_8
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 82
    :catchall_2
    move-exception p0

    .line 83
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 84
    :try_start_a
    throw p0

    .line 85
    :goto_0
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 86
    :try_start_b
    throw p0

    .line 87
    :goto_1
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 88
    throw p0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setFirewallEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 5
    .line 6
    xor-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final setFirewallRuleMobileData(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final setFirewallRuleWifi(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final setFirewallUidRule(III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-class v1, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final setFirewallUidRules(I[I[I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    .line 18
    .line 19
    array-length v4, p2

    .line 20
    add-int/lit8 v4, v4, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v4, :cond_0

    .line 23
    .line 24
    aget v5, p2, v4

    .line 25
    .line 26
    aget v6, p3, v4

    .line 27
    .line 28
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_0
    new-instance p3, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    :goto_1
    const/4 v5, 0x0

    .line 51
    if-ltz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-gez v7, :cond_1

    .line 62
    .line 63
    invoke-virtual {p3, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/lit8 v2, v2, -0x1

    .line 74
    .line 75
    :goto_2
    if-ltz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v2, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    const-class p3, Landroid/net/ConnectivityManager;

    .line 91
    .line 92
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    .line 98
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->replaceFirewallChain(I[I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_1
    move-exception p0

    .line 103
    goto :goto_5

    .line 104
    :catch_0
    move-exception p0

    .line 105
    :try_start_4
    const-string p2, "NetworkManagement"

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v1, "Error flushing firewall chain "

    .line 113
    .line 114
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    return-void

    .line 129
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    :try_start_6
    throw p0

    .line 131
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 132
    throw p0
.end method

.method public final setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method public final setInterfaceAlert(Ljava/lang/String;J)V
    .locals 3

    .line 1
    const-string/jumbo v0, "iface "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " already has alert"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string/jumbo p1, "setting alert requires existing quota on iface"

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p1, ""

    .line 45
    .line 46
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 71
    .line 72
    new-instance p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/4 p2, 0x0

    .line 102
    new-array p2, p2, [Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, [Ljava/lang/String;

    .line 109
    .line 110
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 111
    .line 112
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 113
    .line 114
    invoke-interface {p0, v0}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catch_0
    move-exception p0

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string p1, "Null LinkAddress given"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final setInterfaceDown(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public final setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3

    .line 1
    const-string/jumbo v0, "iface "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " already has quota"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0
.end method

.method public final setInterfaceUp(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setIpForwardingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "tethering"

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 18
    .line 19
    invoke-interface {p0, v0}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 26
    .line 27
    invoke-interface {p0, v0}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 38
    .line 39
    const-string p1, "NMS#setIpForwardingEnabled not supported in V+"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final setKnoxVpn(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setKnoxVpn(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "setKnoxVpn failed for vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final setMptcpMtuValue(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "setMptcpMtuValues"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setNetworkInfo(IZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "setNetworkInfo failed for chained vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final setOnlyAllowIPs(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetworkManagement"

    .line 5
    .line 6
    const-string/jumbo v1, "setOnlyAllowIPs"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->setOnlyAllowIPs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setPrivateIpRoute(ZLjava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "setPrivateIpRoute"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setQboxUid(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setQboxUid(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error setQboxUid > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final setTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "setTcpBufferSize"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final setUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "setUIDRoute"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    move v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move v5, p3

    .line 17
    move-object v6, p4

    .line 18
    move-object v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final setUidCleartextNetworkPolicy(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mDeps:Lcom/android/server/net/NetworkManagementService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p2, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkManagementService;->mStrictEnabled:Z

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :cond_2
    if-eqz v1, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 52
    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final setUidOnMeteredNetworkAllowlist(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setUidOnMeteredNetworkDenylist(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setUidOnMeteredNetworkList(IZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_6

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 20
    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    if-ne v3, p3, :cond_1

    .line 28
    .line 29
    :try_start_2
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    goto :goto_7

    .line 33
    :cond_1
    const-string/jumbo v1, "inetd bandwidth"

    .line 34
    .line 35
    .line 36
    const-wide/32 v3, 0x200000

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-class v5, Landroid/net/ConnectivityManager;

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkAllowList(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_2
    move-exception p0

    .line 61
    goto :goto_5

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkAllowList(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    if-eqz p3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->addUidToMeteredNetworkDenyList(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->removeUidFromMeteredNetworkDenyList(I)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    if-eqz p3, :cond_5

    .line 81
    .line 82
    const/4 p2, 0x1

    .line 83
    :try_start_4
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_3
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 90
    .line 91
    .line 92
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 93
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    .line 95
    .line 96
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    return-void

    .line 98
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 99
    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 100
    :goto_4
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 106
    :goto_5
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    .line 108
    .line 109
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 110
    :goto_6
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 111
    :try_start_b
    throw p0

    .line 112
    :goto_7
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 113
    throw p0
.end method

.method public final setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p3, 0x2

    .line 16
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUidexceptUserId()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/net/NetworkManagementService;->mFirewallEnabled:Z

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p3, 0x2

    .line 16
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final shutdown()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string p0, "NetworkManagement"

    .line 5
    .line 6
    const-string v0, "Shutting down"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final spegRestrictNetworkConnection(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->spegRestrictNetworkConnection(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "SPEG"

    .line 12
    .line 13
    const-string/jumbo p2, "spegRestrictNetworkConnection Error"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final startL4s(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startL4s(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "Error startL4s > "

    .line 19
    .line 20
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    :goto_0
    return p0
.end method

.method public final startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "startNetworkStatsOnPorts iface:"

    .line 2
    .line 3
    .line 4
    const-string v1, " in:"

    .line 5
    .line 6
    const-string v2, " out:"

    .line 7
    .line 8
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "NetworkManagement"

    .line 13
    .line 14
    invoke-static {v0, p3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final startQbox(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startQbox(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error startQbox > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final startTethering([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v0, p1}, Lcom/android/net/module/util/NetdUtils;->tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p1, "NMS#startTethering not supported in V+"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final startTosMarker(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startTosMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error startTosMarker > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final stopL4s(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopL4s(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "Error stopL4s > "

    .line 19
    .line 20
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, -0x1

    .line 24
    :goto_0
    return p0
.end method

.method public final stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 3

    .line 1
    const-string/jumbo v0, "stopNetworkStatsOnPorts iface:"

    .line 2
    .line 3
    .line 4
    const-string v1, " in:"

    .line 5
    .line 6
    const-string v2, " out:"

    .line 7
    .line 8
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "NetworkManagement"

    .line 13
    .line 14
    invoke-static {v0, p3, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 23
    .line 24
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public final stopQbox()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->stopQbox()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "Error stopQbox > "

    .line 18
    .line 19
    invoke-static {v0, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final stopTethering()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/net/INetd;->tetherStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string v0, "NMS#stopTethering not supported in V+"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final stopTosMarker(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopTosMarker(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Error stopTosMarker > "

    .line 18
    .line 19
    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final syncFirewallChainLocked(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    sget-boolean v0, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v0, "NetworkManagement"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Pushing "

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " active firewall "

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, "UID rules"

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    const/4 p2, 0x0

    .line 63
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge p2, v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/net/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    const-class v4, Landroid/net/ConnectivityManager;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v3, p1, v0, v1}, Landroid/net/ConnectivityManager;->setUidFirewallRule(III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    return-void

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0
.end method

.method public final tetherInterface(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/net/IpPrefix;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-direct {v1, v2, v0}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 34
    .line 35
    invoke-static {p0, p1, v1}, Lcom/android/net/module/util/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 47
    .line 48
    const-string p1, "NMS#tetherInterface not supported in V+"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final unregisterCloEventObserver()V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "unregisterCloEventObserver"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mCloLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterCloEventListener()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final unregisterNetdTetherEventListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "unregisterNetdTetherEventListener failed "

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final untetherInterface(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    const-string p1, "NMS#untetherInterface not supported in V+"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final updateDefaultGatewayForEpdg(Landroid/net/Network;)V
    .locals 5

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "updateDefaultGatewayForEpdg"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v3, Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string v2, "Error getLinkProperties: "

    .line 37
    .line 38
    invoke-static {p1, v2, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    :goto_0
    if-nez p1, :cond_0

    .line 43
    .line 44
    const-string/jumbo p0, "linkProperties is empty"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/net/RouteInfo;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getType()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x1

    .line 76
    if-ne v3, v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const-string/jumbo v4, "fe80"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "Updating Route ["

    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, "] from network "

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/android/server/net/NetworkManagementService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v3, v1, v2}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catch_1
    move-exception v2

    .line 137
    const-string v3, "Exception in networkUpdateRouteParcel: "

    .line 138
    .line 139
    invoke-static {v2, v3, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    return-void
.end method

.method public final updateFirewallUidRuleLocked(III)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "oldRule = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sget-boolean v5, Lcom/android/server/net/NetworkManagementService;->DBG:Z

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    const-string v6, "NetworkManagement"

    .line 21
    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", newRule="

    .line 31
    .line 32
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, " for uid="

    .line 39
    .line 40
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, " on chain "

    .line 47
    .line 48
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_0
    :goto_0
    if-ne v4, p3, :cond_2

    .line 65
    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    const-string p0, "NetworkManagement"

    .line 69
    .line 70
    const-string p1, "!!!!! Skipping change"

    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    monitor-exit v1

    .line 76
    return v3

    .line 77
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/net/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, p1, v4}, Lcom/android/server/net/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    xor-int/lit8 p0, p0, 0x1

    .line 99
    .line 100
    monitor-exit v1

    .line 101
    return p0

    .line 102
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final updateGroFlushTime(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateGroFlushTime: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateGroFlushTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final updateGroPshOption(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateGroPshOption: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NetworkManagement"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->updateGroPshOption(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final updateInputFilterAppWideRules([III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "updateInputFilterAppWideRules failed for vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final updateInputFilterExemptRules(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "updateInputFilterExemptRules failed for vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final updateInputFilterUserWideRules([III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 4
    .line 5
    const-string v2, "NetworkManagement"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string/jumbo p0, "updateInputFilterUserWideRules failed for vpn profile"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final updateSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NetworkManagement"

    .line 2
    .line 3
    const-string/jumbo v1, "updateSourceRule"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkManagementService;->enforceSystemUid()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

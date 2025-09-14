.class public final Lcom/android/server/VcnManagementService;
.super Landroid/net/vcn/IVcnManagementService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

.field public static final DUMP_TIMEOUT_MILLIS:J

.field public static final LOCAL_LOG:Landroid/util/LocalLog;

.field public static final RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

.field static final VCN_CONFIG_FILE:Ljava/lang/String;


# instance fields
.field public final mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

.field public final mConfigs:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/VcnManagementService$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

.field public final mRegisteredPolicyListeners:Ljava/util/Map;

.field public final mRegisteredStatusCallbacks:Ljava/util/Map;

.field public final mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

.field public final mTelephonySubscriptionTrackerCb:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

.field public final mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

.field public final mVcnBroadcastReceiver:Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;

.field public final mVcns:Ljava/util/Map;


# direct methods
.method public static -$$Nest$mgarbageCollectAndWriteVcnConfigsLocked(Lcom/android/server/VcnManagementService;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/os/ParcelUuid;

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->writeConfigsToDiskLocked()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public static -$$Nest$mgetSubGroupToSubIdMappings(Lcom/android/server/VcnManagementService;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 10
    .line 11
    check-cast p0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/os/ParcelUuid;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v1, 0x5

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sput-wide v1, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sput-object v1, Lcom/android/server/VcnManagementService;->RESTRICTED_TRANSPORTS_DEFAULT:Ljava/util/Set;

    .line 23
    .line 24
    new-instance v1, Landroid/util/LocalLog;

    .line 25
    .line 26
    const/16 v2, 0x200

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 32
    .line 33
    new-instance v1, Ljava/io/File;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string/jumbo v3, "vcn/configs.xml"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    .line 50
    .line 51
    const-wide/16 v1, 0x1e

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    sput-wide v0, Lcom/android/server/VcnManagementService;->CARRIER_PRIVILEGES_LOST_TEARDOWN_DELAY_MS:J

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/net/vcn/IVcnManagementService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/VcnManagementService$TrackingNetworkCallback;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 24
    .line 25
    sget-object v0, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->EMPTY_SNAPSHOT:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 49
    .line 50
    const-string v0, "Missing context"

    .line 51
    .line 52
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string v0, "VCN"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    const-string v0, "Missing dependencies"

    .line 64
    .line 65
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 69
    .line 70
    iget-object v0, p2, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    monitor-enter p2

    .line 75
    :try_start_0
    iget-object v0, p2, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    .line 80
    .line 81
    const-string v1, "VcnManagementService"

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p2, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit p2

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0

    .line 98
    :cond_1
    :goto_2
    iget-object p2, p2, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    .line 105
    .line 106
    new-instance v0, Landroid/os/Handler;

    .line 107
    .line 108
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 112
    .line 113
    new-instance v1, Lcom/android/server/vcn/VcnNetworkProvider;

    .line 114
    .line 115
    new-instance v2, Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    .line 116
    .line 117
    invoke-direct {v2}, Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/vcn/VcnNetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;)V

    .line 121
    .line 122
    .line 123
    iput-object v1, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 124
    .line 125
    new-instance v1, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    .line 126
    .line 127
    invoke-direct {v1, p0}, Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;-><init>(Lcom/android/server/VcnManagementService;)V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTrackerCb:Lcom/android/server/VcnManagementService$VcnSubscriptionTrackerCallback;

    .line 131
    .line 132
    new-instance v2, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 133
    .line 134
    new-instance v3, Landroid/os/Handler;

    .line 135
    .line 136
    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;

    .line 140
    .line 141
    invoke-direct {p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, p1, v3, v1, p2}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;Lcom/android/server/vcn/TelephonySubscriptionTracker$Dependencies;)V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 148
    .line 149
    sget-object p2, Lcom/android/server/VcnManagementService;->VCN_CONFIG_FILE:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v1, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 152
    .line 153
    invoke-direct {v1, p2}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 157
    .line 158
    new-instance p2, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;

    .line 159
    .line 160
    invoke-direct {p2, p0}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 164
    .line 165
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 166
    .line 167
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 168
    .line 169
    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 170
    .line 171
    const-string v5, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 172
    .line 173
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string/jumbo v2, "package"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    new-instance p1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;

    .line 188
    .line 189
    invoke-direct {p1, p0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/VcnManagementService;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/VcnManagementService$Dependencies;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/server/VcnManagementService$Dependencies;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/server/VcnManagementService;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$Dependencies;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mSubIdToInfoMap:Ljava/util/Map;

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->mActiveDataSubId:I

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "VcnManagementService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "[INFO] [VcnManagementService] "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static logWtf(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "VcnManagementService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "[WTF] [VcnManagementService] "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.NETWORK_FACTORY"

    .line 10
    .line 11
    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    .line 12
    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "subscriptionGroup was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "opPkgName was null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "VCN config cleared for subGrp: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v1, Landroid/app/AppOpsManager;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/app/AppOpsManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    new-instance p2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/VcnManagementService;Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    const-string v0, "VcnManagementService"

    .line 6
    .line 7
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 11
    .line 12
    const-string/jumbo p3, "| "

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/VcnManagementService;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;

    .line 21
    .line 22
    invoke-direct {p3, p0, p1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 23
    .line 24
    .line 25
    sget-wide p0, Lcom/android/server/VcnManagementService;->DUMP_TIMEOUT_MILLIS:J

    .line 26
    .line 27
    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;

    .line 20
    .line 21
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/VcnManagementService;Landroid/telephony/SubscriptionManager;Landroid/os/ParcelUuid;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-class v2, Landroid/telephony/TelephonyManager;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_0

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    const-string p1, "Carrier privilege required for subscription group to set VCN Config"

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final enforcePrimaryUser()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

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
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Landroid/net/vcn/Flags;->enforceMainUser()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-class v1, Landroid/os/UserManager;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/os/UserManager;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    invoke-direct {v1, p0, v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>(Landroid/os/UserManager;Landroid/os/UserHandle;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 51
    .line 52
    const-string v0, "VcnManagementService can only be used by callers running as the primary user"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "Calling identity was System Server. Was Binder calling identity cleared?"

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public getAllStatusCallbacks()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

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

.method public getAllVcns()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

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

.method public getConfigs()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

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

.method public final getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    const-string/jumbo v0, "opPkgName was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v1, Landroid/app/AppOpsManager;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/AppOpsManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->enforcePrimaryUser()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 41
    .line 42
    check-cast v2, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/os/ParcelUuid;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 65
    .line 66
    invoke-virtual {v4, v3, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0, v3, p1}, Lcom/android/server/VcnManagementService;->isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    monitor-exit v1

    .line 86
    return-object v0

    .line 87
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 3

    .line 1
    const-string/jumbo v0, "networkCapabilities was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "linkProperties was null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    .line 16
    .line 17
    const-string v2, "android.permission.NETWORK_FACTORY"

    .line 18
    .line 19
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "NetworkCapabilities must be for Test Network if using permission MANAGE_TEST_NETWORKS"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    .line 60
    .line 61
    return-object p0
.end method

.method public final isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mSubGroup:Landroid/os/ParcelUuid;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mPkgName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->packageHasPermissionsForSubscriptionGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isProvisioningPackageForConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 9
    .line 10
    check-cast p0, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/vcn/VcnConfig;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 24
    .line 25
    invoke-virtual {p0, v1, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public final notifyAllPolicyListenersLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mRegisteredPolicyListeners:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/VcnManagementService;Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Unknown VCN status: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    const-string/jumbo v4, "subGroup must not be null"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v4, "callback must not be null"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v4, "opPkgName must not be null"

    .line 29
    .line 30
    .line 31
    invoke-static {p3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-class v5, Landroid/app/AppOpsManager;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/app/AppOpsManager;

    .line 43
    .line 44
    invoke-virtual {v4, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v4, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 52
    .line 53
    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .line 55
    .line 56
    const/4 p3, 0x0

    .line 57
    :try_start_1
    invoke-interface {v1, v4, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_2
    iget-object v5, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 64
    .line 65
    check-cast v6, Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 74
    .line 75
    check-cast v6, Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v6, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 81
    .line 82
    check-cast v1, Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/net/vcn/VcnConfig;

    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 91
    .line 92
    check-cast v6, Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Lcom/android/server/vcn/Vcn;

    .line 99
    .line 100
    if-nez v6, :cond_0

    .line 101
    .line 102
    move v7, p3

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    iget v7, v6, Lcom/android/server/vcn/Vcn;->mCurrentStatus:I

    .line 105
    .line 106
    :goto_0
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0, v4, p1}, Lcom/android/server/VcnManagementService;->isCallbackPermissioned(Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Landroid/os/ParcelUuid;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    if-nez v6, :cond_2

    .line 116
    .line 117
    const/4 p3, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    const/4 p0, 0x2

    .line 120
    if-eq v7, p0, :cond_4

    .line 121
    .line 122
    const/4 p0, 0x3

    .line 123
    if-ne v7, p0, :cond_3

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/android/server/VcnManagementService;->logWtf(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    :goto_1
    move p3, v7

    .line 145
    :cond_5
    :goto_2
    :try_start_4
    invoke-interface {p2, p3}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catch_0
    move-exception p0

    .line 150
    :try_start_5
    const-string p1, "VcnStatusCallback threw on VCN status change"

    .line 151
    .line 152
    const-string p2, "VcnManagementService"

    .line 153
    .line 154
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .line 156
    .line 157
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_6
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string p1, "Attempting to register a callback that is already in use"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :goto_4
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    goto :goto_5

    .line 174
    :catch_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public final removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "listener was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.NETWORK_FACTORY"

    .line 10
    .line 11
    const-string v2, "android.permission.MANAGE_TEST_NETWORKS"

    .line 12
    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setLastSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 5
    .line 6
    return-void
.end method

.method public final setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "subscriptionGroup was null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "config was null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "opPkgName was null"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "VCN config updated for subGrp: "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-class v1, Landroid/app/AppOpsManager;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/app/AppOpsManager;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    .line 81
    .line 82
    const-string v2, "Test-mode require the MANAGE_TEST_NETWORKS permission"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/VcnManagementService;->enforceCallingUserAndCarrierPrivilege(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;

    .line 91
    .line 92
    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p1, "Mismatched caller and VcnConfig creator"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final startOrUpdateVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Starting or updating VCN config for subGrp: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "VcnManagementService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v0, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 31
    .line 32
    check-cast v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/server/vcn/Vcn;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v0, "Missing config"

    .line 44
    .line 45
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/android/server/VcnManagementService;->isActiveSubGroup(Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final startVcnLocked(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Starting VCN config for subGrp: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 29
    .line 30
    check-cast v0, Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/os/ParcelUuid;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/android/server/VcnManagementService;->stopVcnLocked(Landroid/os/ParcelUuid;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v7, Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    .line 57
    .line 58
    invoke-direct {v7, p0, p1}, Lcom/android/server/VcnManagementService$VcnCallbackImpl;-><init>(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLooper:Landroid/os/Looper;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/net/vcn/VcnConfig;->isTestModeProfile()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/android/server/vcn/VcnContext;

    .line 77
    .line 78
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/VcnContext;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/VcnManagementService;->mDeps:Lcom/android/server/VcnManagementService$Dependencies;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/android/server/VcnManagementService;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v1, Lcom/android/server/vcn/Vcn;

    .line 89
    .line 90
    new-instance v8, Lcom/android/server/vcn/Vcn$Dependencies;

    .line 91
    .line 92
    invoke-direct {v8}, Lcom/android/server/vcn/Vcn$Dependencies;-><init>()V

    .line 93
    .line 94
    .line 95
    move-object v2, v1

    .line 96
    move-object v3, v0

    .line 97
    move-object v4, p1

    .line 98
    move-object v5, p2

    .line 99
    invoke-direct/range {v2 .. v8}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;Lcom/android/server/vcn/Vcn$Dependencies;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 103
    .line 104
    check-cast p2, Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 110
    .line 111
    .line 112
    const/4 p2, 0x2

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VcnManagementService;->notifyAllPermissionedStatusCallbacksLocked(Landroid/os/ParcelUuid;I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final stopVcnLocked(Landroid/os/ParcelUuid;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Stopping VCN config for subGrp: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/VcnManagementService;->logInfo(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/vcn/Vcn;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const/16 v1, 0x64

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mVcns:Ljava/util/Map;

    .line 41
    .line 42
    check-cast v0, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/VcnManagementService;->notifyAllPolicyListenersLocked()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final systemReady()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mNetworkProvider:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/VcnNetworkProvider;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkProvider(Landroid/net/NetworkProvider;)I

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/vcn/VcnNetworkProvider;->mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    .line 17
    .line 18
    sget-object v2, Lcom/android/server/vcn/Vcn;->CAPS_REQUIRING_MOBILE_DATA:Ljava/util/List;

    .line 19
    .line 20
    new-instance v2, Landroid/net/NetworkScore$Builder;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/net/NetworkScore$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x34

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Landroid/net/NetworkCapabilities$Builder;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/16 v4, 0xe

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/16 v4, 0xd

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/16 v4, 0xf

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/16 v4, 0x1c

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    sget-object v4, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_0

    .line 85
    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 105
    .line 106
    iget-object v5, v0, Lcom/android/server/vcn/VcnNetworkProvider;->mHandler:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 109
    .line 110
    .line 111
    new-instance v5, Lcom/android/server/vcn/VcnNetworkProvider$1;

    .line 112
    .line 113
    invoke-direct {v5, v0}, Lcom/android/server/vcn/VcnNetworkProvider$1;-><init>(Lcom/android/server/vcn/VcnNetworkProvider;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/net/NetworkProvider;->registerNetworkOffer(Landroid/net/NetworkScore;Landroid/net/NetworkCapabilities;Ljava/util/concurrent/Executor;Landroid/net/NetworkProvider$NetworkOfferCallback;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mContext:Landroid/content/Context;

    .line 123
    .line 124
    const-class v1, Landroid/net/ConnectivityManager;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .line 132
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mTrackingNetworkCallback:Lcom/android/server/VcnManagementService$TrackingNetworkCallback;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mTelephonySubscriptionTracker:Lcom/android/server/vcn/TelephonySubscriptionTracker;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 158
    .line 159
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 163
    .line 164
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mHandler:Landroid/os/Handler;

    .line 172
    .line 173
    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mSubscriptionChangedListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$1;

    .line 179
    .line 180
    invoke-virtual {v1, v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mActiveDataSubIdListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$ActiveDataSubscriptionIdListener;

    .line 186
    .line 187
    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 191
    .line 192
    if-eqz v1, :cond_1

    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/vcn/TelephonySubscriptionTracker;->mCarrierConfigChangeListener:Lcom/android/server/vcn/TelephonySubscriptionTracker$$ExternalSyntheticLambda1;

    .line 195
    .line 196
    invoke-virtual {v1, v0, v2}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    .line 197
    .line 198
    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->registerCarrierPrivilegesCallbacks()V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    const-string/jumbo v2, "callback must not be null"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroid/net/vcn/IVcnStatusCallback;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/android/server/VcnManagementService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mRegisteredStatusCallbacks:Ljava/util/Map;

    .line 19
    .line 20
    check-cast p0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final writeConfigsToDiskLocked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VcnManagementService;->mConfigs:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;)Landroid/os/PersistableBundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/VcnManagementService;->mConfigDiskRwHelper:Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;->writeToDisk(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "VcnManagementService"

    .line 25
    .line 26
    const-string v1, "Failed to save configs to disk"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "[ERR ] [VcnManagementService] Failed to save configs to disk"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    const-string v1, "Failed to save configs"

    .line 54
    .line 55
    invoke-direct {p0, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

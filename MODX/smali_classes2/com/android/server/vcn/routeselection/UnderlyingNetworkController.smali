.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveDataSubIdListener:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

.field public mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

.field public final mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

.field public final mCellBringupCallbacks:Ljava/util/List;

.field public final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public mIsQuitting:Z

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public final mUnderlyingNetworkRecords:Ljava/util/Map;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mActiveDataSubIdListener:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$VcnActiveDataSubscriptionIdListener;

    .line 10
    .line 11
    new-instance v1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 27
    .line 28
    const-string v1, "Missing vcnContext"

    .line 29
    .line 30
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 34
    .line 35
    const-string v1, "Missing connectionConfig"

    .line 36
    .line 37
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 41
    .line 42
    const-string p2, "Missing subscriptionGroup"

    .line 43
    .line 44
    invoke-static {p3, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 48
    .line 49
    const-string p2, "Missing snapshot"

    .line 50
    .line 51
    invoke-static {p4, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iput-object p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 55
    .line 56
    const-string p2, "Missing cb"

    .line 57
    .line 58
    invoke-static {p5, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iput-object p5, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    .line 62
    .line 63
    const-string p2, "Missing deps"

    .line 64
    .line 65
    invoke-static {p6, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iput-object p6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 69
    .line 70
    new-instance p2, Landroid/os/Handler;

    .line 71
    .line 72
    iget-object p4, p1, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 73
    .line 74
    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 78
    .line 79
    iget-object p4, p1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    const-class p5, Landroid/net/ConnectivityManager;

    .line 82
    .line 83
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    check-cast p4, Landroid/net/ConnectivityManager;

    .line 88
    .line 89
    iput-object p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    const-class p4, Landroid/telephony/TelephonyManager;

    .line 94
    .line 95
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 100
    .line 101
    new-instance p4, Landroid/os/HandlerExecutor;

    .line 102
    .line 103
    invoke-direct {p4, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p4, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getCarrierConfigForSubGrp(Landroid/os/ParcelUuid;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->registerOrUpdateNetworkRequests()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method


# virtual methods
.method public final getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelUuid;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "-"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, ") "

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final getSortedUnderlyingNetworks()Ljava/util/TreeSet;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnContext;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 14
    .line 15
    check-cast p0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 36
    .line 37
    iget v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "UnderlyingNetworkController"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "UnderlyingNetworkController[WTF ] "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "[ UnderlyingNetworkController "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "]"

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final reevaluateNetworks()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getSortedUnderlyingNetworks()Ljava/util/TreeSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 29
    .line 30
    :goto_0
    if-nez v1, :cond_2

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v3, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_1
    iget-object v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 41
    .line 42
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v4, ""

    .line 54
    .line 55
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_4

    .line 72
    .line 73
    const-string v6, ", "

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_4
    invoke-static {v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v6, v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 84
    .line 85
    iget-object v6, v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 86
    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, ": "

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v5, v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    move-object v0, v2

    .line 110
    goto :goto_3

    .line 111
    :cond_6
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 112
    .line 113
    :goto_3
    if-nez v3, :cond_7

    .line 114
    .line 115
    move-object v5, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_7
    iget-object v5, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 118
    .line 119
    :goto_4
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_9

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v5, "Selected network changed to "

    .line 128
    .line 129
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    move-object v5, v2

    .line 135
    goto :goto_5

    .line 136
    :cond_8
    iget-object v5, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 137
    .line 138
    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v5, ", selected from list: "

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const-string v5, "UnderlyingNetworkController"

    .line 173
    .line 174
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    sget-object v4, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 178
    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v6, "[INFO] "

    .line 182
    .line 183
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v7, "[ UnderlyingNetworkController "

    .line 189
    .line 190
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getLogPrefix()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v7, "]"

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    iput-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCb:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;

    .line 225
    .line 226
    check-cast v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 227
    .line 228
    invoke-virtual {v0, v3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;->onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 232
    .line 233
    check-cast v0, Landroid/util/ArrayMap;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_e

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    check-cast v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    if-ne v1, v3, :cond_b

    .line 257
    .line 258
    const/4 v5, 0x1

    .line 259
    goto :goto_6

    .line 260
    :cond_b
    move v5, v4

    .line 261
    :goto_6
    iget-object v6, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 262
    .line 263
    invoke-virtual {v6}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 268
    .line 269
    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 270
    .line 271
    iget-object v9, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 272
    .line 273
    iput-boolean v5, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 274
    .line 275
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 276
    .line 277
    .line 278
    iget-object v3, v3, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 279
    .line 280
    check-cast v3, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :cond_c
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_a

    .line 291
    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    check-cast v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 297
    .line 298
    iget-boolean v7, v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsSelectedUnderlyingNetwork:Z

    .line 299
    .line 300
    if-ne v7, v5, :cond_d

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_d
    iput-boolean v5, v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsSelectedUnderlyingNetwork:Z

    .line 304
    .line 305
    check-cast v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 306
    .line 307
    iget-boolean v7, v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsSelectedUnderlyingNetwork:Z

    .line 308
    .line 309
    if-nez v7, :cond_c

    .line 310
    .line 311
    iput-object v2, v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 312
    .line 313
    iput-boolean v4, v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 314
    .line 315
    iput-boolean v4, v6, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 316
    .line 317
    iget-object v7, v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 318
    .line 319
    iget-object v8, v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 320
    .line 321
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iput-object v2, v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 325
    .line 326
    goto :goto_7

    .line 327
    :cond_e
    :goto_8
    return-void
.end method

.method public final registerOrUpdateNetworkRequests()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 10
    .line 11
    new-instance v5, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    .line 19
    .line 20
    check-cast v6, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    iget-object v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 40
    .line 41
    check-cast v7, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->close()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 68
    .line 69
    check-cast v7, Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 72
    .line 73
    .line 74
    iget-boolean v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mIsQuitting:Z

    .line 75
    .line 76
    if-nez v7, :cond_c

    .line 77
    .line 78
    new-instance v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 79
    .line 80
    invoke-direct {v7, v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 81
    .line 82
    .line 83
    iput-object v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 84
    .line 85
    iget-object v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 86
    .line 87
    iget-boolean v6, v6, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    .line 88
    .line 89
    if-eqz v6, :cond_1

    .line 90
    .line 91
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 92
    .line 93
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 94
    .line 95
    invoke-virtual {v6, v8}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    new-instance v8, Landroid/net/NetworkRequest$Builder;

    .line 100
    .line 101
    invoke-direct {v8}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const/4 v9, 0x7

    .line 109
    invoke-virtual {v8, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v8, v6}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const/16 v8, 0x10

    .line 127
    .line 128
    invoke-virtual {v6, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    const/16 v8, 0x15

    .line 133
    .line 134
    invoke-virtual {v6, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 139
    .line 140
    iget-object v9, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 141
    .line 142
    invoke-virtual {v8, v9}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v6, v8}, Landroid/net/NetworkRequest$Builder;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v6}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    :goto_1
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 155
    .line 156
    iget-object v9, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mHandler:Landroid/os/Handler;

    .line 157
    .line 158
    invoke-virtual {v7, v6, v8, v9}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 159
    .line 160
    .line 161
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    .line 162
    .line 163
    invoke-direct {v6}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 167
    .line 168
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 169
    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 175
    .line 176
    const/16 v10, -0x46

    .line 177
    .line 178
    if-eqz v8, :cond_2

    .line 179
    .line 180
    iget-object v8, v8, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 181
    .line 182
    const-string/jumbo v11, "vcn_network_selection_wifi_entry_rssi_threshold"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v11, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    :cond_2
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 198
    .line 199
    invoke-virtual {v6, v7, v8, v9}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 200
    .line 201
    .line 202
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    .line 203
    .line 204
    invoke-direct {v6}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 208
    .line 209
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 210
    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 216
    .line 217
    const/16 v10, -0x4a

    .line 218
    .line 219
    if-eqz v8, :cond_3

    .line 220
    .line 221
    iget-object v8, v8, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 222
    .line 223
    const-string/jumbo v11, "vcn_network_selection_wifi_exit_rssi_threshold"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v11, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    :cond_3
    invoke-virtual {v7, v10}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 239
    .line 240
    invoke-virtual {v6, v7, v8, v9}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 241
    .line 242
    .line 243
    new-instance v6, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    .line 244
    .line 245
    invoke-direct {v6}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 246
    .line 247
    .line 248
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 249
    .line 250
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 251
    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseWifiNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 261
    .line 262
    invoke-virtual {v6, v7, v8, v9}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 263
    .line 264
    .line 265
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 266
    .line 267
    iget-object v7, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 268
    .line 269
    invoke-virtual {v6, v7}, Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;->getAllSubIdsInGroup(Landroid/os/ParcelUuid;)Ljava/util/Set;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    check-cast v6, Landroid/util/ArraySet;

    .line 274
    .line 275
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-eqz v7, :cond_d

    .line 284
    .line 285
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    check-cast v7, Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    iget-object v8, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 296
    .line 297
    new-instance v10, Landroid/util/ArraySet;

    .line 298
    .line 299
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    if-eqz v11, :cond_8

    .line 315
    .line 316
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    check-cast v11, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 321
    .line 322
    instance-of v12, v11, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 323
    .line 324
    if-eqz v12, :cond_5

    .line 325
    .line 326
    new-instance v12, Landroid/util/ArraySet;

    .line 327
    .line 328
    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 329
    .line 330
    .line 331
    check-cast v11, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    .line 332
    .line 333
    invoke-virtual {v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getCapabilitiesMatchCriteria()Ljava/util/Map;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v11

    .line 345
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    if-eqz v13, :cond_7

    .line 350
    .line 351
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    check-cast v13, Ljava/util/Map$Entry;

    .line 356
    .line 357
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v14

    .line 361
    check-cast v14, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v13

    .line 371
    check-cast v13, Ljava/lang/Integer;

    .line 372
    .line 373
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-eqz v13, :cond_6

    .line 378
    .line 379
    new-instance v15, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    .line 380
    .line 381
    invoke-direct {v15, v14, v13}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;-><init>(II)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_7
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_8
    new-instance v8, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    .line 393
    .line 394
    const/16 v11, 0xc

    .line 395
    .line 396
    const/4 v12, 0x1

    .line 397
    invoke-direct {v8, v11, v12}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;-><init>(II)V

    .line 398
    .line 399
    .line 400
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    if-eqz v10, :cond_4

    .line 416
    .line 417
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    check-cast v10, Ljava/util/Set;

    .line 422
    .line 423
    new-instance v11, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkBringupCallback;

    .line 424
    .line 425
    invoke-direct {v11}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 426
    .line 427
    .line 428
    iget-object v13, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCellBringupCallbacks:Ljava/util/List;

    .line 429
    .line 430
    check-cast v13, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    iget-object v13, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 436
    .line 437
    invoke-static {}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->getBaseNetworkRequestBuilder()Landroid/net/NetworkRequest$Builder;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    const/4 v15, 0x0

    .line 442
    invoke-virtual {v14, v15}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    new-instance v15, Landroid/net/TelephonyNetworkSpecifier;

    .line 447
    .line 448
    invoke-direct {v15, v7}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v14, v15}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 452
    .line 453
    .line 454
    move-result-object v14

    .line 455
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object v10

    .line 459
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v15

    .line 463
    if-eqz v15, :cond_b

    .line 464
    .line 465
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v15

    .line 469
    check-cast v15, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;

    .line 470
    .line 471
    move-object/from16 v16, v6

    .line 472
    .line 473
    iget v6, v15, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->capability:I

    .line 474
    .line 475
    iget v15, v15, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$CapabilityMatchCriteria;->matchCriteria:I

    .line 476
    .line 477
    if-ne v15, v12, :cond_9

    .line 478
    .line 479
    invoke-virtual {v14, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 480
    .line 481
    .line 482
    goto :goto_6

    .line 483
    :cond_9
    const/4 v12, 0x2

    .line 484
    if-ne v15, v12, :cond_a

    .line 485
    .line 486
    invoke-virtual {v14, v6}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 487
    .line 488
    .line 489
    :cond_a
    :goto_6
    move-object/from16 v6, v16

    .line 490
    .line 491
    const/4 v12, 0x1

    .line 492
    goto :goto_5

    .line 493
    :cond_b
    move-object/from16 v16, v6

    .line 494
    .line 495
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    invoke-virtual {v13, v6, v11, v9}, Landroid/net/ConnectivityManager;->requestBackgroundNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 500
    .line 501
    .line 502
    move-object/from16 v6, v16

    .line 503
    .line 504
    const/4 v12, 0x1

    .line 505
    goto :goto_4

    .line 506
    :cond_c
    const/4 v6, 0x0

    .line 507
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 508
    .line 509
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiBringupCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 510
    .line 511
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiEntryRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 512
    .line 513
    iput-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mWifiExitRssiThresholdCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 514
    .line 515
    :cond_d
    if-eqz v1, :cond_e

    .line 516
    .line 517
    iget-object v6, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 518
    .line 519
    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 520
    .line 521
    .line 522
    :cond_e
    if-eqz v2, :cond_f

    .line 523
    .line 524
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 525
    .line 526
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 527
    .line 528
    .line 529
    :cond_f
    if-eqz v3, :cond_10

    .line 530
    .line 531
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 532
    .line 533
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 534
    .line 535
    .line 536
    :cond_10
    if-eqz v4, :cond_11

    .line 537
    .line 538
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 539
    .line 540
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 541
    .line 542
    .line 543
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_12

    .line 552
    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 558
    .line 559
    iget-object v3, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 560
    .line 561
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 562
    .line 563
    .line 564
    goto :goto_7

    .line 565
    :cond_12
    return-void
.end method

.method public final updateInboundTransform(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/IpSecTransform;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-string v0, "currentNetwork is null"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "transform is null"

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mRouteSelectionCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 38
    .line 39
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCurrentRecord:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 51
    .line 52
    check-cast p1, Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const-string/jumbo p1, "setInboundTransform on an unselected evaluator"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->logWtf(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 72
    .line 73
    check-cast p0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 95
    .line 96
    invoke-direct {v0, p2}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;-><init>(Landroid/net/IpSecTransform;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->setInboundTransformInternal(Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    :goto_1
    return-void

    .line 104
    :cond_4
    :goto_2
    const-string p1, "#updateInboundTransform: unexpected call; flags missing"

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

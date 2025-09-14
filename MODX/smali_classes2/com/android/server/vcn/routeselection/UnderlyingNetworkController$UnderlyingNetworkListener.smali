.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mDeps:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$Dependencies;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 16
    .line 17
    iget-object v7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 18
    .line 19
    iget-object v8, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 20
    .line 21
    iget-object v9, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 22
    .line 23
    new-instance v10, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;

    .line 24
    .line 25
    invoke-direct {v10, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 32
    .line 33
    new-instance v11, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$Dependencies;

    .line 34
    .line 35
    invoke-direct {v11}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$Dependencies;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object v3, p0

    .line 39
    move-object v5, p1

    .line 40
    invoke-direct/range {v3 .. v11}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$Dependencies;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Got blocked status change for unknown key: "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 52
    .line 53
    iput-boolean p2, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    iput-boolean p2, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    .line 57
    .line 58
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Got capabilities change for unknown key: "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 52
    .line 53
    iput-object p2, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 54
    .line 55
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/net/vcn/Flags;->evaluateIpsecLossOnLpNcChange()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 83
    .line 84
    check-cast p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 85
    .line 86
    iget-boolean v0, p2, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 87
    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 92
    .line 93
    iget-object v1, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance v1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;

    .line 101
    .line 102
    invoke-direct {v1, p2}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 106
    .line 107
    const-wide/16 v2, 0x0

    .line 108
    .line 109
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 122
    .line 123
    .line 124
    :cond_3
    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Got link properties change for unknown key: "

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->logWtf(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mCarrierConfig:Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 50
    .line 51
    iget-object v4, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 52
    .line 53
    iput-object p2, v4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 54
    .line 55
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/net/vcn/Flags;->evaluateIpsecLossOnLpNcChange()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 83
    .line 84
    check-cast p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 85
    .line 86
    iget-boolean v0, p2, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 87
    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 92
    .line 93
    iget-object v1, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance v1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;

    .line 101
    .line 102
    invoke-direct {v1, p2}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 106
    .line 107
    const-wide/16 v2, 0x0

    .line 108
    .line 109
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 122
    .line 123
    .line 124
    :cond_3
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v0, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->close()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->mUnderlyingNetworkRecords:Ljava/util/Map;

    .line 42
    .line 43
    check-cast v0, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->reevaluateNetworks()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

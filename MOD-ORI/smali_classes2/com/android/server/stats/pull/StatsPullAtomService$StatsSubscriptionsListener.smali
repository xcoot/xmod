.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSm:Landroid/telephony/SubscriptionManager;

.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->mSm:Landroid/telephony/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v3, v4, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v5, -0x1

    .line 85
    if-ne v3, v5, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v10, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    move-object v3, v10

    .line 99
    move v5, v2

    .line 100
    invoke-direct/range {v3 .. v9}, Lcom/android/server/stats/pull/netstats/SubInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 101
    .line 102
    .line 103
    const-string v1, "StatsPullAtomService"

    .line 104
    .line 105
    const-string/jumbo v3, "subId "

    .line 106
    .line 107
    .line 108
    const-string v4, " added into historical sub list"

    .line 109
    .line 110
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 126
    .line 127
    iget-object v3, v2, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v2, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    monitor-exit v1

    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0

    .line 141
    :cond_2
    :goto_1
    const-string v1, "StatsPullAtomService"

    .line 142
    .line 143
    const-string/jumbo v3, "subInfo of subId "

    .line 144
    .line 145
    .line 146
    const-string v4, " is invalid, ignored."

    .line 147
    .line 148
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_3
    return-void
.end method

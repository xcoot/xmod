.class public final Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PENALTY_TIMEOUT_MINUTES_DEFAULT:[I


# instance fields
.field public final mCancellationToken:Ljava/lang/Object;

.field public final mEvaluatorCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;

.field public final mHandler:Landroid/os/Handler;

.field public mIsPenalized:Z

.field public mIsSelected:Z

.field public final mMetricMonitors:Ljava/util/List;

.field public final mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

.field public mPenalizedTimeoutMs:J

.field public mPriorityClass:I

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    filled-new-array {v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->PENALTY_TIMEOUT_MINUTES_DEFAULT:[I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$Dependencies;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mCancellationToken:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 20
    .line 21
    const-string v1, "Missing vcnContext"

    .line 22
    .line 23
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 27
    .line 28
    new-instance v1, Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    const-string v1, "Missing dependencies"

    .line 38
    .line 39
    invoke-static {p8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string p8, "Missing deps"

    .line 43
    .line 44
    invoke-static {p7, p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iput-object p7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mEvaluatorCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;

    .line 48
    .line 49
    const-string p7, "Missing underlyingNetworkTemplates"

    .line 50
    .line 51
    invoke-static {p3, p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p7, "Missing subscriptionGroup"

    .line 55
    .line 56
    invoke-static {p4, p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string p7, "Missing lastSnapshot"

    .line 60
    .line 61
    invoke-static {p5, p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance p7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 65
    .line 66
    const-string p8, "Missing network"

    .line 67
    .line 68
    invoke-static {p2, p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-direct {p7, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;-><init>(Landroid/net/Network;)V

    .line 72
    .line 73
    .line 74
    iput-object p7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 75
    .line 76
    const/4 p7, 0x0

    .line 77
    iput-boolean p7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 78
    .line 79
    iput-boolean p7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 80
    .line 81
    sget-object p8, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->PENALTY_TIMEOUT_MINUTES_DEFAULT:[I

    .line 82
    .line 83
    if-eqz p6, :cond_1

    .line 84
    .line 85
    iget-object v1, p6, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 86
    .line 87
    const-string/jumbo v2, "vcn_network_selection_penalty_timeout_minutes_list"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move-object p8, v1

    .line 98
    :cond_1
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 99
    .line 100
    aget p7, p8, p7

    .line 101
    .line 102
    int-to-long p7, p7

    .line 103
    invoke-virtual {v1, p7, p8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide p7

    .line 107
    iput-wide p7, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPenalizedTimeoutMs:J

    .line 108
    .line 109
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    if-eqz p3, :cond_2

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-eqz p3, :cond_2

    .line 123
    .line 124
    :try_start_0
    new-instance v5, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$MetricMonitorCallbackImpl;

    .line 125
    .line 126
    invoke-direct {v5, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$MetricMonitorCallbackImpl;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;)V

    .line 127
    .line 128
    .line 129
    new-instance p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 130
    .line 131
    new-instance v6, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$Dependencies;

    .line 132
    .line 133
    invoke-direct {v6}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$Dependencies;-><init>()V

    .line 134
    .line 135
    .line 136
    move-object v1, p0

    .line 137
    move-object v2, p1

    .line 138
    move-object v3, p2

    .line 139
    move-object v4, p6

    .line 140
    invoke-direct/range {v1 .. v6}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$Dependencies;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mCancellationToken:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->close()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[Network "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "] "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->getLogPrefix()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "UnderlyingNetworkEvaluator"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "[WTF ] UnderlyingNetworkEvaluator"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->getLogPrefix()Ljava/lang/String;

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

.method public final updatePriorityClass(Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mNetworkRecordBuilder:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsSelected:Z

    .line 15
    .line 16
    iget-boolean v3, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, "Network blocked for System Server: "

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    if-nez p3, :cond_1

    .line 41
    .line 42
    const-string p1, "Got null snapshot"

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->logWtf(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v3, 0x0

    .line 53
    move v10, v3

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget-object v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move-object v5, v3

    .line 67
    check-cast v5, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 68
    .line 69
    move-object v3, v4

    .line 70
    move-object v4, v5

    .line 71
    move-object v5, v0

    .line 72
    move-object v6, p2

    .line 73
    move-object v7, p3

    .line 74
    move v8, v1

    .line 75
    move-object v9, p4

    .line 76
    invoke-static/range {v3 .. v9}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->checkMatchesPriorityRule(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnUnderlyingNetworkTemplate;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;ZLcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    move v2, v10

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p1, v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 88
    .line 89
    const/16 p2, 0xc

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_4

    .line 96
    .line 97
    iget-boolean p2, v4, Lcom/android/server/vcn/VcnContext;->mIsInTestMode:Z

    .line 98
    .line 99
    if-eqz p2, :cond_5

    .line 100
    .line 101
    const/4 p2, 0x7

    .line 102
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    :cond_4
    const v2, 0x7fffffff

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_1
    iput v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_6
    iput v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPriorityClass:I

    .line 115
    .line 116
    :goto_2
    return-void
.end method

.class public abstract Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCallback:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;

.field public final mCloseGuard:Landroid/util/CloseGuard;

.field public mIsSelectedUnderlyingNetwork:Z

.field public mIsStarted:Z

.field public mIsValidationFailed:Z

.field public final mNetwork:Landroid/net/Network;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/CloseGuard;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mCloseGuard:Landroid/util/CloseGuard;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->isFlagNetworkMetricMonitorEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 18
    .line 19
    const-string p1, "Missing network"

    .line 20
    .line 21
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mNetwork:Landroid/net/Network;

    .line 25
    .line 26
    const-string p1, "Missing callback"

    .line 27
    .line 28
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mCallback:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsSelectedUnderlyingNetwork:Z

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string/jumbo p1, "networkMetricMonitor flag disabled"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->logWtf(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Ljava/lang/IllegalAccessException;

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mCloseGuard:Landroid/util/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 22
    .line 23
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mCloseGuard:Landroid/util/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " [Network "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mNetwork:Landroid/net/Network;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "] "

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final logWtf(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "[WTF ] "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getClassName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->getLogPrefix()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onValidationResultReceivedInternal(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mCallback:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$MetricMonitorCallbackImpl;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$MetricMonitorCallbackImpl;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mMetricMonitors:Ljava/util/List;

    .line 20
    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;

    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsValidationFailed:Z

    .line 42
    .line 43
    or-int/2addr v1, v2

    .line 44
    iput-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-string v0, "#handleValidationResult: wasPenalized "

    .line 53
    .line 54
    const-string v1, " mIsPenalized "

    .line 55
    .line 56
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->getLogPrefix()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "UnderlyingNetworkEvaluator"

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "[INFO ] UnderlyingNetworkEvaluator"

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->getLogPrefix()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mIsPenalized:Z

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mCancellationToken:Ljava/lang/Object;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mHandler:Landroid/os/Handler;

    .line 124
    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    new-instance p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$ExitPenaltyBoxRunnable;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$ExitPenaltyBoxRunnable;-><init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;)V

    .line 130
    .line 131
    .line 132
    iget-wide v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mPenalizedTimeoutMs:J

    .line 133
    .line 134
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator;->mEvaluatorCallback:Lcom/android/server/vcn/routeselection/UnderlyingNetworkEvaluator$NetworkEvaluatorCallback;

    .line 142
    .line 143
    check-cast p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$NetworkEvaluatorCallbackImpl;->onEvaluationResultChanged()V

    .line 146
    .line 147
    .line 148
    :goto_2
    return-void
.end method

.method public setInboundTransformInternal(Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;)V
    .locals 0

    .line 1
    return-void
.end method

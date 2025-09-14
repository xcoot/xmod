.class public final Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;
.super Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final IPSEC_PACKET_LOSS_PERCENT_THRESHOLD_DISABLE_DETECTOR:I = -0x1

.field static final MIN_VALID_EXPECTED_RX_PACKET_NUM:I = 0xa


# instance fields
.field public final mCancellationToken:Ljava/lang/Object;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mHandler:Landroid/os/Handler;

.field public mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

.field public mLastIpSecTransformState:Landroid/net/IpSecTransformState;

.field public mMaxSeqNumIncreasePerSecond:I

.field public final mPacketLossCalculator:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculator;

.field public mPacketLossRatePercentThreshold:I

.field public mPollIpSecStateIntervalMs:J

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$Dependencies;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/Network;Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$NetworkMetricMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 10
    .line 11
    const-string p1, "Missing deps"

    .line 12
    .line 13
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/vcn/VcnContext;->isFlagIpSecTransformStateEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-class p4, Landroid/os/PowerManager;

    .line 38
    .line 39
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/os/PowerManager;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    const-class p4, Landroid/net/ConnectivityManager;

    .line 52
    .line 53
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 60
    .line 61
    new-instance p2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculator;

    .line 62
    .line 63
    invoke-direct {p2}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculator;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossCalculator:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PacketLossCalculator;

    .line 67
    .line 68
    const/16 p2, 0x14

    .line 69
    .line 70
    if-eqz p3, :cond_0

    .line 71
    .line 72
    iget-object p4, p3, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 73
    .line 74
    const-string/jumbo p5, "vcn_network_selection_poll_ipsec_state_interval_seconds"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, p5, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    :cond_0
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    int-to-long v0, p2

    .line 84
    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 85
    .line 86
    .line 87
    move-result-wide p4

    .line 88
    iput-wide p4, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPollIpSecStateIntervalMs:J

    .line 89
    .line 90
    const/16 p2, 0xc

    .line 91
    .line 92
    if-eqz p3, :cond_1

    .line 93
    .line 94
    iget-object p4, p3, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 95
    .line 96
    const-string/jumbo p5, "vcn_network_selection_ipsec_packet_loss_percent_threshold"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4, p5, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    :cond_1
    iput p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 104
    .line 105
    invoke-static {p3}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->getMaxSeqNumIncreasePerSecond(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    iput p2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mMaxSeqNumIncreasePerSecond:I

    .line 110
    .line 111
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 112
    .line 113
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iget-object p3, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 118
    .line 119
    iget-object p3, p3, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    new-instance p4, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;

    .line 122
    .line 123
    invoke-direct {p4, p0}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 124
    .line 125
    .line 126
    const/4 p0, 0x0

    .line 127
    invoke-virtual {p3, p4, p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_2
    const-string p1, "ipsecTransformState flag disabled"

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->logWtf(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/IllegalAccessException;

    .line 137
    .line 138
    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public static getMaxSeqNumIncreasePerSecond(Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/net/vcn/Flags;->handleSeqNumLeap()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 11
    .line 12
    const-string/jumbo v0, "vcn_network_selection_max_seq_num_increase_per_second"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v1

    .line 21
    :goto_0
    if-ge p0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Invalid value of MAX_SEQ_NUM_INCREASE_PER_SECOND_KEY "

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "IpSecPacketLossDetector"

    .line 38
    .line 39
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "[ERROR ] IpSecPacketLossDetector"

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_1
    return p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->close()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;->ipSecTransform:Landroid/net/IpSecTransform;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getInboundTransformInternal()Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastTransformState()Landroid/net/IpSecTransformState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setInboundTransformInternal(Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;)V
    .locals 3

    .line 1
    const-string v0, "inboundTransform is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsSelectedUnderlyingNetwork:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p1, "setInboundTransform called but network not selected"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->logWtf(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 27
    .line 28
    invoke-static {}, Landroid/net/vcn/Flags;->allowDisableIpsecLossDetector()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mInboundTransform:Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPacketLossRatePercentThreshold:I

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq p1, v0, :cond_3

    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 64
    .line 65
    const-wide/16 v1, 0x0

    .line 66
    .line 67
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

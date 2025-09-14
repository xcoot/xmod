.class public final Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->mIsStarted:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string p0, "Monitor stopped but PollIpSecStateRunnable not removed from Handler"

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor;->logWtf(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->getInboundTransformInternal()Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/os/HandlerExecutor;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$IpSecTransformStateReceiver;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/vcn/routeselection/NetworkMetricMonitor$IpSecTransformWrapper;->ipSecTransform:Landroid/net/IpSecTransform;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/net/IpSecTransform;->requestIpSecTransformState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$PollIpSecStateRunnable;-><init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mCancellationToken:Ljava/lang/Object;

    .line 48
    .line 49
    iget-wide v3, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPollIpSecStateIntervalMs:J

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

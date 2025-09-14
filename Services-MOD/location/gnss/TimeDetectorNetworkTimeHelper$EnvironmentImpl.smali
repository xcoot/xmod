.class public final Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mImmediateRunnableToken:Ljava/lang/Object;

.field public final mScheduledRunnableToken:Ljava/lang/Object;

.field public final mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mScheduledRunnableToken:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mImmediateRunnableToken:Ljava/lang/Object;

    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 20
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 25
    const-class p1, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 27
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 33
    iput-object p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 35
    return-void
.end method


# virtual methods
.method public final requestImmediateTimeQueryCallback(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mImmediateRunnableToken:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v1, p1, p2}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mImmediateRunnableToken:Ljava/lang/Object;

    .line 18
    const-wide/16 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

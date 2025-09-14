.class public final Lcom/android/server/job/JobStore$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    .line 10
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobStore;->sScheduledJob30MinHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 15
    iget-object v2, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    .line 17
    iget v2, v2, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 23
    iget-object v1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    .line 25
    iget-object v2, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 27
    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 30
    move-result v2

    .line 31
    iput v2, v1, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 37
    move-result-object v0

    .line 38
    const-wide/32 v1, 0x1b7740

    .line 41
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

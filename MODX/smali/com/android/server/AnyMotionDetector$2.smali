.class public final Lcom/android/server/AnyMotionDetector$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/AnyMotionDetector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/AnyMotionDetector$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/AnyMotionDetector$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 8
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 13
    iget-boolean v1, v1, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 20
    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v1, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 23
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 25
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 37
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v0

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 42
    iget-boolean v2, v1, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 44
    const/4 v3, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, -0x1

    .line 47
    if-ne v2, v3, :cond_2

    .line 49
    iput-boolean v4, v1, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 51
    sget-boolean v1, Lcom/android/server/AnyMotionDetector;->DEBUG:Z

    .line 53
    if-eqz v1, :cond_1

    .line 55
    const-string v1, "AnyMotionDetector"

    .line 57
    const-string/jumbo v2, "mMeasurementTimeout. Failed to collect sufficient accel data within 3000 ms. Stopping orientation measurement."

    .line 60
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_4

    .line 66
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 68
    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->-$$Nest$mstopOrientationMeasurementLocked(Lcom/android/server/AnyMotionDetector;)I

    .line 71
    move-result v1

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    move v1, v5

    .line 74
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    if-eq v1, v5, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 79
    iget-object v2, v0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Lcom/android/server/AnyMotionDetector$2;

    .line 83
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 88
    iput-boolean v4, v0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 90
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 92
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 94
    check-cast p0, Lcom/android/server/DeviceIdleController;

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->onAnyMotionResult(I)V

    .line 99
    :cond_3
    return-void

    .line 100
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    throw p0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 104
    iget-object v0, v0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 106
    monitor-enter v0

    .line 107
    :try_start_3
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    .line 109
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 111
    const/4 v2, 0x1

    .line 112
    if-ne v1, v2, :cond_4

    .line 114
    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    .line 120
    :cond_4
    monitor-exit v0

    .line 121
    return-void

    .line 122
    :catchall_2
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 124
    throw p0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

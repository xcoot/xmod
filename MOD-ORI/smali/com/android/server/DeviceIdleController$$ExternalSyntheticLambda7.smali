.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const-string p0, "DeviceIdleController"

    .line 16
    .line 17
    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_2
    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lez p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    :goto_2
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    throw p0

    .line 61
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    .line 62
    .line 63
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v0, "DeviceIdleController"

    .line 71
    .line 72
    const-string v1, "Light progression alarm fired"

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    monitor-enter p0

    .line 78
    :try_start_3
    const-string/jumbo v0, "s:alarm"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :catchall_2
    move-exception v0

    .line 87
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    throw v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

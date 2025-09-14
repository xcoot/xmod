.class public final Lcom/android/server/lights/LightsService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    float-to-int p1, p1

    .line 7
    const-string v1, "LightsService"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "[SvcLED] onSensorChanged : light value: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    .line 47
    .line 48
    .line 49
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 57
    .line 58
    .line 59
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iget-object p0, p0, Lcom/android/server/lights/LightsService$4;->this$0:Lcom/android/server/lights/LightsService;

    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    .line 74
    .line 75
    int-to-long v2, v2

    .line 76
    add-long/2addr v0, v2

    .line 77
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0
.end method

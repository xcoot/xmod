.class public final Lcom/samsung/android/camera/ShakeEventListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mHandler:Landroid/os/Handler;

.field public mInCall:Z

.field public final mLastEventMessage:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mShakeDetected:Z

.field public final mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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
    iput-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 20
    .line 21
    const-string v0, "No event."

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/camera/ShakeEventListener$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/samsung/android/camera/ShakeEventListener$1;-><init>(Lcom/samsung/android/camera/ShakeEventListener;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    .line 31
    .line 32
    const-string/jumbo v0, "sensor"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/hardware/SensorManager;

    .line 40
    .line 41
    const v1, 0x1004c

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v0, "power"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/os/PowerManager;

    .line 56
    .line 57
    const-string v1, "ShakeEventListener"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 60
    .line 61
    .line 62
    const-string v0, "alarm"

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/app/AlarmManager;

    .line 69
    .line 70
    iput-object p3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    new-instance p0, Landroid/content/Intent;

    .line 73
    .line 74
    const-string p3, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    .line 75
    .line 76
    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/high16 p3, 0x4000000

    .line 80
    .line 81
    invoke-static {p2, p1, p0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final handleShakeEventChanged()V
    .locals 5

    .line 1
    const-string v0, "Shake event changed now(false) -> next(false), enable("

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ") call("

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ") shake("

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ")"

    .line 37
    .line 38
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "ShakeEventListener"

    .line 46
    .line 47
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    .line 51
    .line 52
    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string p1, "Audio mode changed: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, -0x7539e1b9

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const v2, 0x938ecab

    .line 24
    .line 25
    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    move v0, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    const/4 v0, -0x1

    .line 52
    :goto_1
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const-string v0, "android.samsung.media.extra.AUDIO_MODE"

    .line 56
    .line 57
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const-string v0, "ShakeEventListener"

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    const/4 p1, 0x2

    .line 81
    if-eq p2, p1, :cond_5

    .line 82
    .line 83
    const/4 p1, 0x3

    .line 84
    if-eq p2, p1, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 88
    .line 89
    if-nez p1, :cond_7

    .line 90
    .line 91
    iput-boolean v3, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 98
    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    iput-boolean v4, p0, Lcom/samsung/android/camera/ShakeEventListener;->mInCall:Z

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_2
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :goto_3
    monitor-exit p0

    .line 109
    throw p1
.end method

.method public final declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x1004c

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aget p1, p1, v0

    .line 17
    .line 18
    float-to-int p1, p1

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq p1, v1, :cond_0

    .line 24
    .line 25
    const-string p1, "ShakeEventListener"

    .line 26
    .line 27
    const-string v0, "Unknown shake event. ignore"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeDetected:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/camera/ShakeEventListener;->handleShakeEventChanged()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/camera/ShakeEventListener;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/camera/ShakeEventListener;->mShakeOffRunnable:Lcom/samsung/android/camera/ShakeEventListener$1;

    .line 64
    .line 65
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    const-wide/16 v2, 0xa

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit p0

    .line 79
    throw p1
.end method

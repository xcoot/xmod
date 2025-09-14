.class public final Lcom/android/server/biometrics/log/ALSProbe;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDestroyRequested:Z

.field public mDestroyed:Z

.field public mDisableRequested:Z

.field public mEnabled:Z

.field public volatile mLastAmbientLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

.field public final mMaxSubscriptionTime:J

.field public mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mTimer:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 19
    .line 20
    const/high16 v1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/ALSProbe$1;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_0
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    .line 43
    .line 44
    iput-wide p3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    :cond_1
    const-string p1, "ALSProbe"

    .line 51
    .line 52
    const-string p2, "No sensor - probe disabled"

    .line 53
    .line 54
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 59
    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V

    .line 14
    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final declared-synchronized disable()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final disableLightSensorLoggingLocked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/high16 p1, -0x40800000    # -1.0f

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Disable ALS: "

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "ALSProbe"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final declared-synchronized enable()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final enableLightSensorLoggingLocked()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    .line 11
    .line 12
    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Enable ALS: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "ALSProbe"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    cmp-long v3, v1, v3

    .line 61
    .line 62
    if-lez v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final declared-synchronized onNext(F)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const-string v1, "ALSProbe"

    .line 12
    .line 13
    const-string v2, "Finishing next consumer"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_2
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    throw p1
.end method

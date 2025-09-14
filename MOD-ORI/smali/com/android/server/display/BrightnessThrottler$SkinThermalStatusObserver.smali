.class public final Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

.field public mObserverTempSensor:Lcom/android/server/display/config/SensorData;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/BrightnessThrottler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessThrottler;Lcom/android/server/display/BrightnessThrottler$Injector;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/BrightnessThrottler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "BrightnessThrottler"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "New thermal throttling status = "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Skipping thermal throttling notification as monitored sensor: "

    .line 47
    .line 48
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " != notified sensor: "

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    new-instance v1, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final registerThermalListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/BrightnessThrottler$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "thermalservice"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 18
    .line 19
    const-string v1, "BrightnessThrottler"

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p0, "Could not observe thermal status. Service not available"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/display/utils/SensorUtils;->getSensorTemperatureType(Lcom/android/server/display/config/SensorData;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 36
    .line 37
    invoke-interface {v2, p0, v0}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string v0, "Failed to register thermal status listener"

    .line 46
    .line 47
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final stopObserving()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z

    .line 2
    .line 3
    const-string v1, "BrightnessThrottler"

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/server/display/BrightnessThrottler;->DEBUG:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string p0, "Stop skipped because thermal status observer not started"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v2, "Failed to unregister thermal status listener"

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/display/BrightnessThrottler$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 34
    .line 35
    return-void
.end method

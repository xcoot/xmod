.class public final Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;

.field public mObserverTempSensor:Lcom/android/server/display/config/SensorData;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 3
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;

    .line 8
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z

    .line 13
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "New thermal throttling status = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "BrightnessThermalClamper"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 26
    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "Skipping thermal throttling notification as monitored sensor: "

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 49
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string p0, " != notified sensor: "

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 77
    move-result p1

    .line 78
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;

    .line 82
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;I)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final registerThermalListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "thermalservice"

    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 19
    const-string v1, "BrightnessThermalClamper"

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string p0, "Could not observe thermal status. Service not available"

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 31
    invoke-static {v0}, Lcom/android/server/display/utils/SensorUtils;->getSensorTemperatureType(Lcom/android/server/display/config/SensorData;)I

    .line 34
    move-result v0

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 37
    invoke-interface {v2, p0, v0}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string v0, "Failed to register thermal status listener"

    .line 47
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    return-void
.end method

.method public final stopObserving()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 8
    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "BrightnessThermalClamper"

    .line 18
    const-string v2, "Failed to unregister thermal status listener"

    .line 20
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 26
    return-void
.end method

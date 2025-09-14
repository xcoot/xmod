.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBatteryLow:Z

.field public final mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

.field public final mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mInitialThermalStatus:I

.field public mScreenOff:Z

.field public final mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

.field public final mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

.field public mThermalService:Landroid/os/IThermalService;

.field public mThermalStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final declared-synchronized isDexoptingAllowed()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return v0

    .line 21
    :goto_1
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Initial thermal status: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mInitialThermalStatus:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nThermal status: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nScreen off: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mScreenOff:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\nLow battery: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mBatteryLow:Z

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

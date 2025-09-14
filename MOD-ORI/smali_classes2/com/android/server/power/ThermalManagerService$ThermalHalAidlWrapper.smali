.class Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/thermal/IThermal;

.field public final mThermalChangedCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalChangedCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized binderDied()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "ThermalManagerService$ThermalHalWrapper"

    .line 3
    .line 4
    const-string v1, "Thermal AIDL HAL died, reconnecting..."

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final connectToHal()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Landroid/hardware/thermal/IThermal;->DESCRIPTOR:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "/default"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallback(Landroid/os/IBinder;)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "\t"

    .line 2
    .line 3
    const-string v1, "ThermalHAL AIDL 2  connected: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "yes"

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string/jumbo p0, "no"

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v2

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getCurrentCoolingDevices(IZ)Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/thermal/IThermal;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :catch_1
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :cond_1
    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    if-nez v2, :cond_2

    .line 34
    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    return-object v1

    .line 37
    :cond_2
    :try_start_3
    array-length v3, v2

    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_1
    if-ge v4, v3, :cond_5

    .line 40
    .line 41
    aget-object v5, v2, v4

    .line 42
    .line 43
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    .line 44
    .line 45
    invoke-static {v6}, Landroid/os/CoolingDevice;->isValidType(I)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    const-string v6, "ThermalManagerService$ThermalHalWrapper"

    .line 52
    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v8, "Invalid cooling device type "

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v5, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, " from AIDL HAL"

    .line 69
    .line 70
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-eqz p2, :cond_4

    .line 82
    .line 83
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    .line 84
    .line 85
    if-eq v6, p1, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance v6, Landroid/os/CoolingDevice;

    .line 89
    .line 90
    iget-wide v7, v5, Landroid/hardware/thermal/CoolingDevice;->value:J

    .line 91
    .line 92
    iget v9, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    .line 93
    .line 94
    iget-object v5, v5, Landroid/hardware/thermal/CoolingDevice;->name:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v6, v7, v8, v9, v5}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_3
    :try_start_4
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 106
    .line 107
    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting"

    .line 108
    .line 109
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :goto_4
    const-string p1, "ThermalManagerService$ThermalHalWrapper"

    .line 117
    .line 118
    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    .line 119
    .line 120
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_5
    monitor-exit v0

    .line 124
    return-object v1

    .line 125
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    throw p0
.end method

.method public final getCurrentTemperatures(IZ)Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    if-eqz p2, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/thermal/IThermal;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :catch_1
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :cond_1
    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    if-nez v2, :cond_2

    .line 34
    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    return-object v1

    .line 37
    :cond_2
    :try_start_3
    array-length v3, v2

    .line 38
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    :goto_1
    if-ge v5, v3, :cond_5

    .line 41
    .line 42
    aget-object v6, v2, v5

    .line 43
    .line 44
    iget v7, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    .line 45
    .line 46
    invoke-static {v7}, Landroid/os/Temperature;->isValidStatus(I)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_3

    .line 51
    .line 52
    const-string v7, "ThermalManagerService$ThermalHalWrapper"

    .line 53
    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v9, "Invalid temperature status "

    .line 60
    .line 61
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v9, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    .line 65
    .line 66
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v9, " received from AIDL HAL"

    .line 70
    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iput v4, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    .line 82
    .line 83
    :cond_3
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget v7, v6, Landroid/hardware/thermal/Temperature;->type:I

    .line 86
    .line 87
    if-eq v7, p1, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    new-instance v7, Landroid/os/Temperature;

    .line 91
    .line 92
    iget v8, v6, Landroid/hardware/thermal/Temperature;->value:F

    .line 93
    .line 94
    iget v9, v6, Landroid/hardware/thermal/Temperature;->type:I

    .line 95
    .line 96
    iget-object v10, v6, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    .line 97
    .line 98
    iget v6, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    .line 99
    .line 100
    invoke-direct {v7, v8, v9, v10, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    .line 105
    .line 106
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_3
    :try_start_4
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 110
    .line 111
    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting"

    .line 112
    .line 113
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :goto_4
    const-string p1, "ThermalManagerService$ThermalHalWrapper"

    .line 121
    .line 122
    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    .line 123
    .line 124
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_5
    monitor-exit v0

    .line 128
    return-object v1

    .line 129
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    throw p0
.end method

.method public final getTemperatureThresholds(IZ)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_4

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    :try_start_1
    invoke-interface {v2, p1}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_1
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    if-nez v2, :cond_2

    .line 33
    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    return-object v1

    .line 36
    :cond_2
    if-eqz p2, :cond_3

    .line 37
    .line 38
    :try_start_3
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    return-object p1

    .line 63
    :cond_3
    :try_start_5
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    :try_start_6
    monitor-exit v0

    .line 68
    return-object p0

    .line 69
    :goto_1
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 70
    .line 71
    const-string v2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    .line 72
    .line 73
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :goto_2
    const-string p1, "ThermalManagerService$ThermalHalWrapper"

    .line 81
    .line 82
    const-string p2, "Couldn\'t getTemperatureThresholds due to invalid status"

    .line 83
    .line 84
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :goto_3
    monitor-exit v0

    .line 88
    return-object v1

    .line 89
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 90
    throw p0
.end method

.method public initProxyAndRegisterCallback(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    const-string v0, "Thermal HAL AIDL service connected with version "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_1
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    const-string v2, "ThermalManagerService$ThermalHalWrapper"

    .line 23
    .line 24
    const-string v3, "Unable to connect IThermal AIDL instance"

    .line 25
    .line 26
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_3
    const-string p1, "ThermalManagerService$ThermalHalWrapper"

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 44
    .line 45
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getInterfaceVersion()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->registerThermalChangedCallback()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_1
    move-exception p1

    .line 64
    const-string v0, "ThermalManagerService$ThermalHalWrapper"

    .line 65
    .line 66
    const-string v2, "Unable to read interface version from Thermal HAL"

    .line 67
    .line 68
    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 72
    .line 73
    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :cond_0
    :goto_1
    monitor-exit v1

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    throw p0
.end method

.method public registerThermalChangedCallback()V
    .locals 3

    .line 1
    const-string v0, "ThermalManagerService$ThermalHalWrapper"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalChangedCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Landroid/hardware/thermal/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :catch_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :goto_0
    const-string v2, "Unable to connect IThermal AIDL instance"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :goto_1
    const-string v1, "Couldn\'t registerThermalChangedCallback due to invalid status"

    .line 25
    .line 26
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    :goto_2
    return-void
.end method

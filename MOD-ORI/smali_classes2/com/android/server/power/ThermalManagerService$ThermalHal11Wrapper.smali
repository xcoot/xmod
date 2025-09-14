.class public final Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mThermalCallback11:Ljava/lang/Object;

.field public mThermalHal11:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance p2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final connectToHal()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    .line 18
    .line 19
    invoke-direct {v4, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v5, 0x15ec

    .line 23
    .line 24
    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Landroid/hardware/thermal/V2_0/IThermal;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    .line 34
    .line 35
    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 36
    .line 37
    .line 38
    const-string v3, "ThermalManagerService$ThermalHalWrapper"

    .line 39
    .line 40
    const-string v4, "Thermal HAL 2.0 service connected."

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    :try_start_1
    const-string v3, "ThermalManagerService$ThermalHalWrapper"

    .line 49
    .line 50
    const-string v4, "Thermal HAL 2.0 service not connected."

    .line 51
    .line 52
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 57
    .line 58
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Landroid/hardware/thermal/V2_0/IThermal;

    .line 61
    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    move v1, v2

    .line 66
    :goto_1
    monitor-exit v0

    .line 67
    return v1

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    const/4 v1, 0x1

    .line 74
    :try_start_2
    invoke-static {v1}, Landroid/hardware/thermal/V1_1/IThermal;->getService(Z)Landroid/hardware/thermal/V1_1/IThermal;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 79
    .line 80
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v4, 0x15ec

    .line 86
    .line 87
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_1/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    .line 97
    .line 98
    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->registerThermalCallback(Landroid/hardware/thermal/V1_1/IThermalCallback;)V

    .line 99
    .line 100
    .line 101
    const-string v2, "ThermalManagerService$ThermalHalWrapper"

    .line 102
    .line 103
    const-string v3, "Thermal HAL 1.1 service connected, limited thermal functions due to legacy API."

    .line 104
    .line 105
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_5

    .line 111
    :catch_1
    :try_start_3
    const-string v2, "ThermalManagerService$ThermalHalWrapper"

    .line 112
    .line 113
    const-string v3, "Thermal HAL 1.1 service not connected."

    .line 114
    .line 115
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 120
    .line 121
    :goto_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p0, Landroid/hardware/thermal/V1_1/IThermal;

    .line 124
    .line 125
    if-eqz p0, :cond_1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_1
    const/4 v1, 0x0

    .line 129
    :goto_4
    monitor-exit v0

    .line 130
    return v1

    .line 131
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    throw p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "\t"

    .line 7
    .line 8
    const-string v1, "ThermalHAL 2.0 connected: "

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroid/hardware/thermal/V2_0/IThermal;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string/jumbo p0, "yes"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-string/jumbo p0, "no"

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :pswitch_0
    const-string v0, "\t"

    .line 43
    .line 44
    const-string v1, "ThermalHAL 1.1 connected: "

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v2

    .line 49
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Landroid/hardware/thermal/V1_1/IThermal;

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    const-string/jumbo p0, "yes"

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    const-string/jumbo p0, "no"

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v2

    .line 75
    return-void

    .line 76
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    throw p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentCoolingDevices(IZ)Ljava/util/List;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 35
    .line 36
    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    .line 37
    .line 38
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    :goto_1
    return-object v1

    .line 46
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    goto :goto_4

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_5

    .line 66
    :cond_1
    :try_start_4
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, v1, p1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;IZI)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception p1

    .line 77
    :try_start_5
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 78
    .line 79
    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    .line 80
    .line 81
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 85
    .line 86
    .line 87
    :goto_3
    monitor-exit v0

    .line 88
    :goto_4
    return-object v1

    .line 89
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    throw p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentTemperatures(IZ)Ljava/util/List;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 35
    .line 36
    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    .line 37
    .line 38
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    :goto_1
    return-object v1

    .line 46
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v2, Landroid/hardware/thermal/V1_1/IThermal;

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    goto :goto_4

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_5

    .line 66
    :cond_1
    :try_start_4
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    invoke-direct {v3, v1, p1, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;IZI)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception p1

    .line 77
    :try_start_5
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 78
    .line 79
    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    .line 80
    .line 81
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 85
    .line 86
    .line 87
    :goto_3
    monitor-exit v0

    .line 88
    :goto_4
    return-object v1

    .line 89
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    throw p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getTemperatureThresholds(IZ)Ljava/util/List;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/hardware/thermal/V2_0/IThermal;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v3, p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, p2, p1, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_2
    const-string p1, "ThermalManagerService$ThermalHalWrapper"

    .line 35
    .line 36
    const-string p2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    :goto_1
    return-object v1

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0

    .line 45
    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

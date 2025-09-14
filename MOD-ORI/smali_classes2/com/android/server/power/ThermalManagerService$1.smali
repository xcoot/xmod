.class public final Lcom/android/server/power/ThermalManagerService$1;
.super Landroid/os/IThermalService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCurrentCoolingDevices()[Landroid/os/CoolingDevice;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-array p0, v3, [Landroid/os/CoolingDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 39
    .line 40
    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    new-array v2, v2, [Landroid/os/CoolingDevice;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final getCurrentCoolingDevicesWithType(I)[Landroid/os/CoolingDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [Landroid/os/CoolingDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(IZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    new-array p1, p1, [Landroid/os/CoolingDevice;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, [Landroid/os/CoolingDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getCurrentTemperatures()[Landroid/os/Temperature;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    new-array p0, v3, [Landroid/os/Temperature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 39
    .line 40
    invoke-virtual {p0, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    new-array v2, v2, [Landroid/os/Temperature;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, [Landroid/os/Temperature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    new-array p0, p0, [Landroid/os/Temperature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    new-array p1, p1, [Landroid/os/Temperature;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, [Landroid/os/Temperature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getCurrentThermalStatus()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 15
    .line 16
    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x1

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    move v4, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v4, v5

    .line 29
    :goto_0
    iget-object v7, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 30
    .line 31
    iget v7, v7, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 32
    .line 33
    packed-switch v7, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    goto :goto_1

    .line 38
    :pswitch_0
    const/4 v5, 0x6

    .line 39
    goto :goto_1

    .line 40
    :pswitch_1
    const/4 v5, 0x5

    .line 41
    goto :goto_1

    .line 42
    :pswitch_2
    const/4 v5, 0x4

    .line 43
    goto :goto_1

    .line 44
    :pswitch_3
    const/4 v5, 0x3

    .line 45
    goto :goto_1

    .line 46
    :pswitch_4
    move v5, v6

    .line 47
    :goto_1
    :pswitch_5
    const/16 v6, 0x304

    .line 48
    .line 49
    invoke-static {v6, v3, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 53
    .line 54
    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getThermalHeadroom(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x305

    .line 10
    .line 11
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {v1, p0, v0, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    if-ltz p1, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x3c

    .line 27
    .line 28
    if-le p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/IThermalService$Stub;->getCallingUid()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 v0, 0x4

    .line 45
    invoke-static {v1, p0, v0, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 46
    .line 47
    .line 48
    return v2
.end method

.method public final getThermalHeadroomThresholds()[F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x306

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowThermalHeadroomThresholds()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 39
    .line 40
    array-length v1, p0

    .line 41
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    monitor-exit v0

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/4 v0, 0x3

    .line 55
    invoke-static {v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 59
    .line 60
    const-string v0, "Thermal headroom thresholds not enabled"

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    const/4 v0, 0x2

    .line 71
    invoke-static {v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "Thermal HAL connection is not initialized"

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "ThermalManagerService"

    .line 13
    .line 14
    const-string p1, "Only shell is allowed to call thermalservice shell commands"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    .line 25
    .line 26
    .line 27
    move-object v1, p0

    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move-object v4, p3

    .line 31
    move-object v5, p4

    .line 32
    move-object v6, p5

    .line 33
    move-object v7, p6

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 41
    .line 42
    invoke-static {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    throw p0
.end method

.method public final registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    new-instance v4, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 46
    .line 47
    new-instance v3, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1, v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    throw p0
.end method

.method public final registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-direct {v4, v5, p0, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const-string p0, "ThermalManagerService"

    .line 50
    .line 51
    const-string p1, "Thermal callback failed to queue"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .line 55
    .line 56
    :cond_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    throw p0
.end method

.method public final unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.DEVICE_POWER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public final unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception p0

    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

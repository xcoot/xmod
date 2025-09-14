.class public final Lcom/android/server/health/HealthServiceWrapperHidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

.field public final mInstanceName:Ljava/lang/String;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "default"

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    .line 12
    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 14
    new-instance v1, Landroid/os/HandlerThread;

    .line 16
    const-string v2, "HealthServiceHwbinder"

    .line 18
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz p2, :cond_3

    .line 33
    if-eqz p3, :cond_3

    .line 35
    iput-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    .line 37
    const-wide/32 p2, 0x80000

    .line 40
    const-string v2, "HealthInitGetService_default"

    .line 42
    invoke-static {p2, p3, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    .line 48
    move-result-object v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 57
    throw p0

    .line 58
    :catch_0
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 61
    move-object v2, v1

    .line 62
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    const-string v4, "HealthServiceWrapperHidl: newService: "

    .line 66
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    const-string v4, "HealthServiceWrapperHidl"

    .line 78
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v2, :cond_0

    .line 83
    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 92
    if-eqz v0, :cond_2

    .line 94
    if-eqz v2, :cond_2

    .line 96
    if-eqz p1, :cond_1

    .line 98
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    .line 100
    check-cast p1, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 102
    invoke-virtual {p1, v1, v2}, Lcom/android/server/health/HealthHalCallbackHidl;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;)V

    .line 105
    :cond_1
    const-string p1, "HealthInitRegisterNotification"

    .line 107
    invoke-static {p2, p3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 115
    :try_start_1
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    .line 118
    move-result-object p1

    .line 119
    const-string p2, "android.hardware.health@2.0::IHealth"

    .line 121
    iget-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 125
    invoke-interface {p1, p2, p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo p2, "health: HealthServiceWrapper listening to instance "

    .line 136
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 141
    invoke-static {p1, p0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 149
    throw p0

    .line 150
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 152
    const-string p1, "IHealth service instance default isn\'t available. Perhaps no permission?"

    .line 154
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p0

    .line 158
    :cond_3
    throw v1
.end method

.method public static traceEnd()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x80000

    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7
    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3
    return-object p0
.end method

.method public final getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;

    .line 20
    invoke-direct {v1, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;)V

    .line 23
    invoke-interface {p0, v1}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;)V

    .line 26
    iget-object p0, v0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Landroid/hardware/health/HealthInfo;

    .line 28
    return-object p0
.end method

.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3

    .line 1
    const-wide/32 v0, 0x80000

    .line 4
    const-string v2, "HealthGetProperty"

    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    .line 17
    if-eqz p0, :cond_2

    .line 19
    new-instance v0, Landroid/util/MutableInt;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 25
    const/16 v1, 0xa

    .line 27
    if-eq p1, v1, :cond_0

    .line 29
    packed-switch p1, :pswitch_data_0

    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 38
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :pswitch_1
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 46
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 49
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 55
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 58
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 61
    goto :goto_0

    .line 62
    :pswitch_3
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 64
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 67
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 70
    goto :goto_0

    .line 71
    :pswitch_4
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 73
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 76
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 79
    goto :goto_0

    .line 80
    :pswitch_5
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    .line 82
    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    .line 85
    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const-class p0, Landroid/os/BatteryManagerInternal;

    .line 91
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Landroid/os/BatteryManagerInternal;

    .line 97
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryStateOfHealth()I

    .line 100
    move-result p0

    .line 101
    const/4 p1, -0x1

    .line 102
    if-le p0, p1, :cond_1

    .line 104
    const/4 p1, 0x0

    .line 105
    iput p1, v0, Landroid/util/MutableInt;->value:I

    .line 107
    int-to-long p0, p0

    .line 108
    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 111
    :cond_1
    :goto_0
    iget p0, v0, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 116
    return p0

    .line 117
    :cond_2
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    .line 119
    const-string/jumbo p1, "no health service"

    .line 122
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_1
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 129
    throw p0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleUpdate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->getHandlerThread()Landroid/os/HandlerThread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void
.end method

.method public final sehWriteEnableToParam(ILjava/lang/String;Z)V
    .locals 7

    .line 1
    const-string p0, ", enable: "

    .line 3
    const-string v0, "HealthServiceWrapperHidl"

    .line 5
    :try_start_0
    const-string/jumbo v1, "default"

    .line 8
    const-string/jumbo v2, "vendor.samsung.hardware.health@2.0::ISehHealth"

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v1, v3}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 15
    move-result-object v1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 23
    move-result-object v5

    .line 24
    if-eqz v5, :cond_1

    .line 26
    instance-of v6, v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    .line 28
    if-eqz v6, :cond_1

    .line 30
    move-object v4, v5

    .line 31
    check-cast v4, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    .line 36
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, v5, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->mRemote:Landroid/os/IHwBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    invoke-virtual {v5}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Ljava/lang/String;

    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    if-eqz v6, :cond_2

    .line 67
    move-object v4, v5

    .line 68
    :catch_0
    :cond_3
    :goto_0
    if-eqz v4, :cond_5

    .line 70
    :try_start_2
    invoke-virtual {v4, p1, p3}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;->sehWriteEnableToParam(IZ)I

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_4

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const/4 v3, 0x0

    .line 78
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string/jumbo v2, "sehWriteEnableToParam["

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, "]: , result : "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, ", offset: "

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception v1

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    new-instance v1, Landroid/os/RemoteException;

    .line 126
    const-string/jumbo v2, "no seh health service"

    .line 129
    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 132
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    :goto_2
    const-string v2, "Exception in sehWriteEnableToParam["

    .line 135
    const-string v3, "]: , offset: "

    .line 137
    invoke-static {p1, v2, p2, v3, p0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_3
    return-void
.end method

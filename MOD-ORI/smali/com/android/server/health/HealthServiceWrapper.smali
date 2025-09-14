.class public abstract Lcom/android/server/health/HealthServiceWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static create(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)Lcom/android/server/health/HealthServiceWrapper;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthRegCallbackAidl;-><init>(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)V

    :goto_0
    new-instance v2, Lcom/android/server/health/HealthServiceWrapper$1;

    .line 2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 4
    invoke-direct {v0}, Landroid/os/HwBinder;-><init>()V

    .line 5
    iput-object p0, v0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 6
    :goto_1
    new-instance p0, Lcom/android/server/health/HealthServiceWrapper$1;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v3, Lcom/android/server/health/HealthServiceWrapper$1;

    .line 9
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)Lcom/android/server/health/HealthServiceWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 11
    :try_start_0
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12
    :catch_0
    new-instance p0, Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/health/HealthServiceWrapperHidl;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V

    return-object p0
.end method


# virtual methods
.method public abstract getHandlerThread()Landroid/os/HandlerThread;
.end method

.method public abstract getHealthInfo()Landroid/hardware/health/HealthInfo;
.end method

.method public abstract getProperty(ILandroid/os/BatteryProperty;)I
.end method

.method public abstract scheduleUpdate()V
.end method

.method public abstract sehWriteEnableToParam(ILjava/lang/String;Z)V
.end method

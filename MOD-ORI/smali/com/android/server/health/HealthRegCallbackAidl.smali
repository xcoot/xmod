.class public Lcom/android/server/health/HealthRegCallbackAidl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

.field public final mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 12
    .line 13
    return-void
.end method

.method public static unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "unregisterCallback: oldService: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "HealthRegCallbackAidl"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->unregisterCallback(Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v0, "health: cannot unregister previous callback (transaction error): "

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onRegistration: oldService: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " newService: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "HealthRegCallbackAidl"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-wide/32 v2, 0x80000

    .line 35
    .line 36
    .line 37
    const-string v0, "HealthUnregisterCallbackAidl"

    .line 38
    .line 39
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1, p0}, Lcom/android/server/health/HealthRegCallbackAidl;->unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    const-string p1, "HealthRegisterCallbackAidl"

    .line 51
    .line 52
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v0, "registerCallback: newService: "

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :try_start_2
    check-cast p2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->registerCallback(Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_3
    invoke-virtual {p2}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->update()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    :try_start_4
    const-string/jumbo p1, "health: cannot update after registering health info callback"

    .line 84
    .line 85
    .line 86
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_1
    move-exception p0

    .line 91
    const-string/jumbo p1, "health: cannot register callback, framework may cease to receive updates on health / battery info!"

    .line 92
    .line 93
    .line 94
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    .line 109
    .line 110
    throw p0
.end method

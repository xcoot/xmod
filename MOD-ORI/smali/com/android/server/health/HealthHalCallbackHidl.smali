.class public final Lcom/android/server/health/HealthHalCallbackHidl;
.super Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/health/HealthServiceWrapperHidl$Callback;


# instance fields
.field public mCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 2
    .line 3
    return-void
.end method

.method public static traceEnd()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x80000

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "health: cannot register callback (transaction error): "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "health: cannot register callback: "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "health: cannot unregister previous callback (transaction error): "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "health: cannot unregister previous callback: "

    .line 11
    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/32 v4, 0x80000

    .line 17
    .line 18
    .line 19
    const-string v6, "HealthUnregisterCallback"

    .line 20
    .line 21
    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v6, "HealthHalCallbackHidl"

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v6, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :goto_2
    const-string p1, "HealthRegisterCallback"

    .line 85
    .line 86
    invoke-static {v4, v5, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_6

    .line 120
    :catch_1
    move-exception p0

    .line 121
    goto :goto_4

    .line 122
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :goto_4
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :goto_5
    return-void

    .line 150
    :goto_6
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

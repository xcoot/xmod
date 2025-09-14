.class public final Lcom/android/server/lights/LightsService$VintfHalCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public mInstance:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final declared-synchronized binderDied()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0

    .line 15
    :pswitch_0
    const/4 v0, 0x0

    .line 16
    :try_start_1
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_1
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string v1, "Unable to register DeathRecipient for "

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lvendor/samsung/hardware/light/ISehLights;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "android.hardware.light.ILights/default"

    .line 17
    .line 18
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    :try_start_1
    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lvendor/samsung/hardware/light/ISehLights$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    :try_start_2
    const-string v0, "LightsService"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lvendor/samsung/hardware/light/ISehLights;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    throw v0

    .line 73
    :pswitch_0
    const-string v1, "Unable to register DeathRecipient for "

    .line 74
    .line 75
    monitor-enter p0

    .line 76
    :try_start_3
    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Landroid/hardware/light/ILights;

    .line 79
    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v3, Landroid/hardware/light/ILights;->DESCRIPTOR:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v4, "/default"

    .line 93
    .line 94
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    sget v4, Landroid/hardware/light/ILights$Stub;->$r8$clinit:I

    .line 112
    .line 113
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_1

    .line 118
    .line 119
    instance-of v4, v3, Landroid/hardware/light/ILights;

    .line 120
    .line 121
    if-eqz v4, :cond_1

    .line 122
    .line 123
    check-cast v3, Landroid/hardware/light/ILights;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    new-instance v3, Landroid/hardware/light/ILights$Stub$Proxy;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v2, v3, Landroid/hardware/light/ILights$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 132
    .line 133
    :goto_2
    iput-object v3, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    .line 135
    :try_start_4
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    goto :goto_4

    .line 141
    :catch_1
    :try_start_5
    const-string v0, "LightsService"

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Landroid/hardware/light/ILights;

    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Landroid/hardware/light/ILights;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    .line 166
    monitor-exit p0

    .line 167
    return-object v0

    .line 168
    :goto_4
    monitor-exit p0

    .line 169
    throw v0

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

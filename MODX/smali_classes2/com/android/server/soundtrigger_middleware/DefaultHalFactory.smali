.class public final Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# static fields
.field public static final mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .locals 7

    .line 1
    const-string p0, "Unknown HAL mock version: "

    .line 2
    .line 3
    :try_start_0
    const-string v0, "debug.soundtrigger_middleware.use_mock_hal"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    sget-object v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    .line 11
    .line 12
    const-string v3, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const-string v5, "SoundTriggerMiddlewareDefaultHalFactory"

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, "/default"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const-string v0, "Connecting to default soundtrigger3.ISoundTriggerHw"

    .line 49
    .line 50
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    .line 54
    .line 55
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    const-string p0, "Connecting to default soundtrigger-V2.x.ISoundTriggerHw"

    .line 73
    .line 74
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const-string p0, "default"

    .line 78
    .line 79
    invoke-static {v3, p0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_1
    const/4 v6, 0x2

    .line 99
    if-ne v0, v6, :cond_2

    .line 100
    .line 101
    const-string p0, "Connecting to mock soundtrigger-V2.x.ISoundTriggerHw"

    .line 102
    .line 103
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    :try_start_2
    const-string/jumbo p0, "mock"

    .line 110
    .line 111
    .line 112
    invoke-static {v3, p0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    new-instance v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-direct {v0, v3, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_2
    const/4 v1, 0x3

    .line 140
    if-ne v0, v1, :cond_3

    .line 141
    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, "/mock"

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    const-string v0, "Connecting to mock soundtrigger3.ISoundTriggerHw"

    .line 166
    .line 167
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    .line 171
    .line 172
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;

    .line 177
    .line 178
    const/4 v3, 0x1

    .line 179
    invoke-direct {v2, v3, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 183
    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    throw p0
.end method

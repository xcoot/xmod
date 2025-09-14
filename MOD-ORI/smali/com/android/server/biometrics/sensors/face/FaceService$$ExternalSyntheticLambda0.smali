.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2
    .line 3
    move-object v5, p1

    .line 4
    check-cast v5, Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string/jumbo p1, "getSensorProps FINISH props:"

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "/"

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-static {v9}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/hardware/biometrics/face/IFace$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v10, 0x0

    .line 38
    const-string v11, "FaceService"

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const-string p0, "Unable to get declared service: "

    .line 43
    .line 44
    :goto_0
    invoke-static {p0, v9, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/face/IFace;->getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    array-length p1, v4

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    array-length p1, v4

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_1
    if-ge v0, p1, :cond_2

    .line 72
    .line 73
    aget-object v1, v4, v0

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v3, "sensorType = "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-byte v3, v1, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ", sensor id = "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, v1, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 97
    .line 98
    iget v3, v3, Landroid/hardware/biometrics/common/CommonProps;->sensorId:I

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ", Max = "

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, v1, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 109
    .line 110
    iget v3, v3, Landroid/hardware/biometrics/common/CommonProps;->maxEnrollmentsPerUser:I

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, ", Strength = "

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, v1, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 121
    .line 122
    iget-byte v1, v1, Landroid/hardware/biometrics/common/CommonProps;->sensorStrength:B

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 128
    .line 129
    if-eqz v1, :cond_1

    .line 130
    .line 131
    const-string v1, " (Strong=2,1,0)"

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    const-string v1, ""

    .line 135
    .line 136
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 150
    .line 151
    if-eqz p1, :cond_3

    .line 152
    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v0, "addAidlProviders : "

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    :cond_3
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    .line 182
    .line 183
    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    const/4 v8, 0x0

    .line 194
    move-object v0, p1

    .line 195
    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;[Landroid/hardware/biometrics/face/SensorProps;Ljava/lang/String;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    move-object v10, p1

    .line 199
    goto :goto_3

    .line 200
    :catch_0
    const-string p0, "Remote exception in getSensorProps: "

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :goto_3
    return-object v10
.end method

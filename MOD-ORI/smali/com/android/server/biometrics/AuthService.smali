.class public final Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public static -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 6
    .line 7
    const-string v1, "Must have USE_BIOMETRIC_INTERNAL permission"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static -$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.USE_FINGERPRINT"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "android.permission.USE_BIOMETRIC"

    .line 18
    .line 19
    const-string v1, "Must have USE_BIOMETRIC permission"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 10
    .line 11
    new-instance p1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final generateRSdkCompatibleConfiguration()[Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "android.hardware.fingerprint"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v1, "android.hardware.biometrics.face"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    const/16 p0, 0x8

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    const/16 p0, 0xfff

    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    new-array v1, v1, [Ljava/lang/String;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    move v4, v3

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge v4, v5, :cond_2

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ljava/lang/String;

    .line 76
    .line 77
    const/4 v7, 0x3

    .line 78
    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 79
    .line 80
    aput-object v5, v7, v3

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    aput-object v6, v7, v5

    .line 84
    .line 85
    aput-object p0, v7, v2

    .line 86
    .line 87
    const-string v5, ":"

    .line 88
    .line 89
    invoke-static {v5, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    aput-object v5, v1, v4

    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "Generated config_biometric_sensors: "

    .line 101
    .line 102
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v2, "AuthService"

    .line 110
    .line 111
    invoke-static {p0, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v1
.end method

.method public final onStart()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v2, v1, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object v3, v1, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, "Found R vendor partition without config_biometric_sensors"

    .line 21
    .line 22
    const-string v5, "AuthService"

    .line 23
    .line 24
    const/16 v6, 0x1e

    .line 25
    .line 26
    const-string/jumbo v7, "ro.board.api_level"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v8, "ro.board.first_api_level"

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v2, v10}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    array-length v11, v10

    .line 52
    if-nez v11, :cond_0

    .line 53
    .line 54
    if-ne v3, v6, :cond_0

    .line 55
    .line 56
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    :cond_0
    array-length v3, v10

    .line 64
    new-array v3, v3, [Lcom/android/server/biometrics/SensorConfig;

    .line 65
    .line 66
    move v11, v9

    .line 67
    :goto_0
    array-length v12, v10

    .line 68
    if-ge v11, v12, :cond_1

    .line 69
    .line 70
    new-instance v12, Lcom/android/server/biometrics/SensorConfig;

    .line 71
    .line 72
    aget-object v13, v10, v11

    .line 73
    .line 74
    invoke-direct {v12, v13}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    aput-object v12, v3, v11

    .line 78
    .line 79
    add-int/2addr v11, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintAidlInstances()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v2, v10}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v15

    .line 102
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    sget-boolean v11, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 107
    .line 108
    if-eqz v10, :cond_2

    .line 109
    .line 110
    array-length v11, v10

    .line 111
    if-nez v11, :cond_3

    .line 112
    .line 113
    :cond_2
    move v6, v9

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    array-length v13, v10

    .line 121
    move v14, v9

    .line 122
    :goto_1
    if-ge v14, v13, :cond_5

    .line 123
    .line 124
    aget-object v6, v10, v14

    .line 125
    .line 126
    if-eqz v6, :cond_4

    .line 127
    .line 128
    const-string v9, ":2:"

    .line 129
    .line 130
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_4

    .line 135
    .line 136
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_4
    add-int/2addr v14, v0

    .line 140
    const/16 v6, 0x1e

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    move v6, v9

    .line 145
    new-array v9, v6, [Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, [Ljava/lang/String;

    .line 152
    .line 153
    :goto_2
    move-object v13, v9

    .line 154
    goto :goto_4

    .line 155
    :goto_3
    new-array v9, v6, [Ljava/lang/String;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :goto_4
    if-eqz v12, :cond_6

    .line 159
    .line 160
    array-length v6, v12

    .line 161
    if-lez v6, :cond_6

    .line 162
    .line 163
    move v11, v0

    .line 164
    goto :goto_5

    .line 165
    :cond_6
    const/4 v11, 0x0

    .line 166
    :goto_5
    array-length v6, v13

    .line 167
    if-lez v6, :cond_7

    .line 168
    .line 169
    move v14, v0

    .line 170
    goto :goto_6

    .line 171
    :cond_7
    const/4 v14, 0x0

    .line 172
    :goto_6
    if-nez v14, :cond_8

    .line 173
    .line 174
    if-nez v11, :cond_8

    .line 175
    .line 176
    const-string v6, "No fingerprint sensors."

    .line 177
    .line 178
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    new-instance v9, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;

    .line 187
    .line 188
    move-object v10, v9

    .line 189
    invoke-direct/range {v10 .. v16}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;-><init>(Z[Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    :goto_7
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceAidlInstances()[Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-virtual {v2, v9}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    if-eqz v9, :cond_9

    .line 216
    .line 217
    array-length v12, v9

    .line 218
    if-nez v12, :cond_a

    .line 219
    .line 220
    :cond_9
    if-eqz v6, :cond_b

    .line 221
    .line 222
    array-length v12, v6

    .line 223
    if-nez v12, :cond_a

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_a
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    new-instance v12, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    invoke-direct {v12, v6, v9, v10, v11}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_b
    :goto_8
    const-string v3, "No face sensors."

    .line 240
    .line 241
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v2, v6}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-nez v6, :cond_d

    .line 261
    .line 262
    const/4 v6, 0x0

    .line 263
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    array-length v8, v3

    .line 272
    if-nez v8, :cond_c

    .line 273
    .line 274
    const/16 v8, 0x1e

    .line 275
    .line 276
    if-ne v7, v8, :cond_c

    .line 277
    .line 278
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    :cond_c
    array-length v4, v3

    .line 286
    new-array v4, v4, [Lcom/android/server/biometrics/SensorConfig;

    .line 287
    .line 288
    move v7, v6

    .line 289
    :goto_a
    array-length v8, v3

    .line 290
    if-ge v7, v8, :cond_e

    .line 291
    .line 292
    new-instance v8, Lcom/android/server/biometrics/SensorConfig;

    .line 293
    .line 294
    aget-object v9, v3, v7

    .line 295
    .line 296
    invoke-direct {v8, v9}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    aput-object v8, v4, v7

    .line 300
    .line 301
    add-int/2addr v7, v0

    .line 302
    goto :goto_a

    .line 303
    :cond_d
    const/4 v6, 0x0

    .line 304
    const/4 v4, 0x0

    .line 305
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .line 309
    .line 310
    if-eqz v4, :cond_13

    .line 311
    .line 312
    array-length v7, v4

    .line 313
    move v8, v6

    .line 314
    :goto_b
    if-ge v8, v7, :cond_13

    .line 315
    .line 316
    aget-object v9, v4, v8

    .line 317
    .line 318
    iget v10, v9, Lcom/android/server/biometrics/SensorConfig;->modality:I

    .line 319
    .line 320
    const/4 v11, 0x4

    .line 321
    if-eq v10, v11, :cond_f

    .line 322
    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v11, "Unknown modality: "

    .line 326
    .line 327
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget v9, v9, Lcom/android/server/biometrics/SensorConfig;->modality:I

    .line 331
    .line 332
    invoke-static {v10, v9, v5}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_f
    new-instance v15, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    new-instance v10, Landroid/hardware/biometrics/SensorPropertiesInternal;

    .line 342
    .line 343
    sget-boolean v11, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 344
    .line 345
    const/16 v11, 0xf

    .line 346
    .line 347
    iget v12, v9, Lcom/android/server/biometrics/SensorConfig;->strength:I

    .line 348
    .line 349
    if-eq v12, v11, :cond_12

    .line 350
    .line 351
    const/16 v11, 0xff

    .line 352
    .line 353
    if-eq v12, v11, :cond_11

    .line 354
    .line 355
    const/16 v11, 0xfff

    .line 356
    .line 357
    if-eq v12, v11, :cond_10

    .line 358
    .line 359
    const-string v11, "authenticatorStrengthToPropertyStrength: Unknown strength "

    .line 360
    .line 361
    const-string v13, "BiometricUtils"

    .line 362
    .line 363
    invoke-static {v12, v11, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_10
    move v13, v6

    .line 367
    goto :goto_c

    .line 368
    :cond_11
    move v13, v0

    .line 369
    goto :goto_c

    .line 370
    :cond_12
    const/4 v11, 0x2

    .line 371
    move v13, v11

    .line 372
    :goto_c
    const/4 v14, 0x1

    .line 373
    const/16 v17, 0x0

    .line 374
    .line 375
    iget v12, v9, Lcom/android/server/biometrics/SensorConfig;->id:I

    .line 376
    .line 377
    const/16 v16, 0x0

    .line 378
    .line 379
    move-object v11, v10

    .line 380
    invoke-direct/range {v11 .. v17}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    :goto_d
    add-int/2addr v8, v0

    .line 387
    goto :goto_b

    .line 388
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_14

    .line 393
    .line 394
    :try_start_0
    invoke-interface {v0, v3}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .line 396
    .line 397
    goto :goto_e

    .line 398
    :catch_0
    move-exception v0

    .line 399
    move-object v3, v0

    .line 400
    const-string v0, "RemoteException when registering iris authenticators"

    .line 401
    .line 402
    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .line 404
    .line 405
    goto :goto_e

    .line 406
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-lez v0, :cond_15

    .line 411
    .line 412
    const-string v0, "HIDL iris configuration exists, but IrisService is null."

    .line 413
    .line 414
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_15
    :goto_e
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    .line 418
    .line 419
    invoke-virtual {v2, v1, v0}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    .line 420
    .line 421
    .line 422
    return-void
.end method

.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field public final synthetic f$1:Landroid/media/permission/Identity;

.field public final synthetic f$2:Landroid/os/PersistableBundle;

.field public final synthetic f$3:Landroid/os/SharedMemory;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$1:Landroid/media/permission/Identity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$3:Landroid/os/SharedMemory;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 4
    .line 5
    iget-object v6, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$1:Landroid/media/permission/Identity;

    .line 6
    .line 7
    iget-object v12, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$2:Landroid/os/PersistableBundle;

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$3:Landroid/os/SharedMemory;

    .line 10
    .line 11
    iget-object v15, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    .line 12
    .line 13
    iget-object v14, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$5:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$$ExternalSyntheticLambda5;->f$6:I

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v9, 0x3

    .line 25
    if-eq v0, v9, :cond_7

    .line 26
    .line 27
    const-string/jumbo v2, "verifyDetectorForHotwordDetectionLocked"

    .line 28
    .line 29
    .line 30
    const-string v3, "VoiceInteractionServiceManager"

    .line 31
    .line 32
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    .line 45
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 46
    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    iget v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 50
    .line 51
    invoke-static {v5, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 58
    .line 59
    and-int/lit8 v7, v5, 0x2

    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    and-int/lit8 v5, v5, 0x4

    .line 64
    .line 65
    if-nez v5, :cond_4

    .line 66
    .line 67
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 68
    .line 69
    const-string v5, "android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v7, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    if-eqz v13, :cond_1

    .line 98
    .line 99
    sget v4, Landroid/system/OsConstants;->PROT_READ:I

    .line 100
    .line 101
    invoke-virtual {v13, v4}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const-string v1, "Can\'t set sharedMemory to be read-only"

    .line 109
    .line 110
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_1
    :goto_0
    invoke-static {v14, v0, v11, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_2
    const-string v1, "Voice interaction service should not hold permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    .line 128
    .line 129
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Ljava/lang/SecurityException;

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_3
    const-string v1, "Hotword detection service does not require permission android.permission.BIND_HOTWORD_DETECTION_SERVICE"

    .line 142
    .line 143
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Ljava/lang/SecurityException;

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_4
    const-string v1, "Hotword detection service not in isolated process"

    .line 156
    .line 157
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_5
    const-string v1, "Hotword detection service info not found"

    .line 170
    .line 171
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_6
    const-string v1, "Hotword detection service name not found"

    .line 184
    .line 185
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    invoke-static {v14, v0, v10, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->logDetectorCreateEventIfNeeded(Lcom/android/internal/app/IHotwordRecognitionStatusCallback;IZI)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_7
    const-string/jumbo v2, "verifyDetectorForVisualQueryDetectionLocked"

    .line 198
    .line 199
    .line 200
    const-string v3, "VoiceInteractionServiceManager"

    .line 201
    .line 202
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 206
    .line 207
    const-string v4, "Visual query detection service name not found"

    .line 208
    .line 209
    if-eqz v2, :cond_1d

    .line 210
    .line 211
    iget v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 212
    .line 213
    invoke-static {v5, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v2, :cond_1c

    .line 218
    .line 219
    iget v4, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 220
    .line 221
    and-int/lit8 v5, v4, 0x2

    .line 222
    .line 223
    if-eqz v5, :cond_1b

    .line 224
    .line 225
    and-int/lit8 v4, v4, 0x4

    .line 226
    .line 227
    if-nez v4, :cond_1b

    .line 228
    .line 229
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 230
    .line 231
    const-string v4, "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    .line 232
    .line 233
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_1a

    .line 238
    .line 239
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v5, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 246
    .line 247
    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_19

    .line 258
    .line 259
    if-eqz v13, :cond_9

    .line 260
    .line 261
    sget v2, Landroid/system/OsConstants;->PROT_READ:I

    .line 262
    .line 263
    invoke-virtual {v13, v2}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_8

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :cond_8
    const-string v0, "Can\'t set sharedMemory to be read-only"

    .line 271
    .line 272
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v1

    .line 281
    :cond_9
    :goto_1
    sget-boolean v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    .line 282
    .line 283
    if-eqz v2, :cond_c

    .line 284
    .line 285
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 286
    .line 287
    iget v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 288
    .line 289
    invoke-static {v3, v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 294
    .line 295
    invoke-static {v3, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->getServiceInfoLocked(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-eqz v2, :cond_c

    .line 300
    .line 301
    if-nez v3, :cond_a

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_a
    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 305
    .line 306
    and-int/lit8 v2, v2, 0x10

    .line 307
    .line 308
    if-eqz v2, :cond_b

    .line 309
    .line 310
    iget v2, v3, Landroid/content/pm/ServiceInfo;->flags:I

    .line 311
    .line 312
    and-int/lit8 v2, v2, 0x10

    .line 313
    .line 314
    if-eqz v2, :cond_b

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_b
    const-string v0, "VoiceInteractionServiceManager"

    .line 318
    .line 319
    const-string v1, "Sandboxed detection service not in shared isolated process"

    .line 320
    .line 321
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 325
    .line 326
    const-string v1, "VisualQueryDetectionService or HotworDetectionService not in a shared isolated process. Please make sure to set android:allowSharedIsolatedProcess and android:isolatedProcess to be true and android:externalService to be false in the manifest file"

    .line 327
    .line 328
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw v0

    .line 332
    :cond_c
    :goto_2
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 333
    .line 334
    if-nez v2, :cond_d

    .line 335
    .line 336
    new-instance v8, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 337
    .line 338
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 339
    .line 340
    iget-object v4, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 341
    .line 342
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 343
    .line 344
    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    .line 350
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 351
    .line 352
    iget-object v7, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionComponentName:Landroid/content/ComponentName;

    .line 353
    .line 354
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mVisualQueryDetectionComponentName:Landroid/content/ComponentName;

    .line 355
    .line 356
    iget v9, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 357
    .line 358
    new-instance v11, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 359
    .line 360
    invoke-direct {v11, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v17, v2

    .line 364
    .line 365
    move-object v2, v8

    .line 366
    move-object/from16 v18, v14

    .line 367
    .line 368
    move-object v14, v8

    .line 369
    move-object/from16 v8, v17

    .line 370
    .line 371
    move-object/from16 v17, v15

    .line 372
    .line 373
    const/4 v15, 0x3

    .line 374
    move v10, v0

    .line 375
    invoke-direct/range {v2 .. v11}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;-><init>(Ljava/lang/Object;Landroid/content/Context;ILandroid/media/permission/Identity;Landroid/content/ComponentName;Landroid/content/ComponentName;IILcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;)V

    .line 376
    .line 377
    .line 378
    iput-object v14, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 379
    .line 380
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 381
    .line 382
    iget-object v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mAccessibilitySettingsListener:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;

    .line 383
    .line 384
    iget-object v3, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAccessibilitySettingsListeners:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_d
    move-object/from16 v18, v14

    .line 391
    .line 392
    move-object/from16 v17, v15

    .line 393
    .line 394
    move v15, v9

    .line 395
    if-eq v0, v15, :cond_e

    .line 396
    .line 397
    iget-object v2, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 398
    .line 399
    iput v0, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorType:I

    .line 400
    .line 401
    :cond_e
    :goto_3
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHotwordDetectionConnection:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 402
    .line 403
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 404
    .line 405
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 410
    .line 411
    if-eqz v2, :cond_f

    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 414
    .line 415
    .line 416
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 417
    .line 418
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 419
    .line 420
    .line 421
    :cond_f
    const/4 v2, 0x0

    .line 422
    const/4 v3, 0x1

    .line 423
    if-ne v0, v3, :cond_11

    .line 424
    .line 425
    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 426
    .line 427
    if-nez v4, :cond_10

    .line 428
    .line 429
    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 430
    .line 431
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    iput-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 436
    .line 437
    :cond_10
    new-instance v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;

    .line 438
    .line 439
    iget-object v15, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 440
    .line 441
    iget-object v5, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 442
    .line 443
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 444
    .line 445
    iget v7, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 446
    .line 447
    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 448
    .line 449
    iget-object v9, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 450
    .line 451
    iget-boolean v10, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 452
    .line 453
    iget-object v11, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 454
    .line 455
    iget v14, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 456
    .line 457
    move/from16 v25, v14

    .line 458
    .line 459
    move-object/from16 p0, v18

    .line 460
    .line 461
    move-object v14, v4

    .line 462
    move-object/from16 v18, v17

    .line 463
    .line 464
    move-object/from16 v16, v5

    .line 465
    .line 466
    move-object/from16 v17, v6

    .line 467
    .line 468
    move-object/from16 v19, p0

    .line 469
    .line 470
    move/from16 v20, v7

    .line 471
    .line 472
    move-object/from16 v21, v8

    .line 473
    .line 474
    move-object/from16 v22, v9

    .line 475
    .line 476
    move/from16 v23, v10

    .line 477
    .line 478
    move-object/from16 v24, v11

    .line 479
    .line 480
    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    .line 481
    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    iput-boolean v5, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mValidatingDspTrigger:Z

    .line 485
    .line 486
    iput-object v2, v4, Lcom/android/server/voiceinteraction/DspTrustedHotwordDetectorSession;->mLastHotwordRejectedResult:Landroid/service/voice/HotwordRejectedResult;

    .line 487
    .line 488
    :goto_4
    move-object/from16 v2, p0

    .line 489
    .line 490
    goto/16 :goto_6

    .line 491
    .line 492
    :cond_11
    move-object/from16 p0, v18

    .line 493
    .line 494
    const/4 v5, 0x0

    .line 495
    move-object/from16 v18, v17

    .line 496
    .line 497
    if-ne v0, v15, :cond_14

    .line 498
    .line 499
    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 500
    .line 501
    if-nez v4, :cond_12

    .line 502
    .line 503
    iget-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVisualQueryDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 504
    .line 505
    invoke-virtual {v4}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    iput-object v4, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 510
    .line 511
    :cond_12
    new-instance v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 512
    .line 513
    iget-object v15, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 514
    .line 515
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 516
    .line 517
    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 518
    .line 519
    iget v8, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 520
    .line 521
    iget-object v9, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 522
    .line 523
    iget-object v10, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 524
    .line 525
    iget-boolean v11, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 526
    .line 527
    iget-object v14, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 528
    .line 529
    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 530
    .line 531
    move-object/from16 v24, v14

    .line 532
    .line 533
    move-object v14, v4

    .line 534
    move-object/from16 v16, v6

    .line 535
    .line 536
    move-object/from16 v17, v7

    .line 537
    .line 538
    move-object/from16 v19, p0

    .line 539
    .line 540
    move/from16 v20, v8

    .line 541
    .line 542
    move-object/from16 v21, v9

    .line 543
    .line 544
    move-object/from16 v22, v10

    .line 545
    .line 546
    move/from16 v23, v11

    .line 547
    .line 548
    move/from16 v25, v3

    .line 549
    .line 550
    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    .line 551
    .line 552
    .line 553
    iput-boolean v5, v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEgressingData:Z

    .line 554
    .line 555
    iput-boolean v5, v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mQueryStreaming:Z

    .line 556
    .line 557
    iput-object v2, v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mAttentionListener:Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    .line 558
    .line 559
    iget-object v2, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 560
    .line 561
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    const-string/jumbo v3, "visual_query_accessibility_detection_enabled"

    .line 566
    .line 567
    .line 568
    iget v6, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mUserId:I

    .line 569
    .line 570
    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    const/4 v3, 0x1

    .line 575
    if-ne v2, v3, :cond_13

    .line 576
    .line 577
    const/4 v11, 0x1

    .line 578
    goto :goto_5

    .line 579
    :cond_13
    move v11, v5

    .line 580
    :goto_5
    iput-boolean v11, v4, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    .line 581
    .line 582
    goto :goto_4

    .line 583
    :cond_14
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 584
    .line 585
    if-nez v2, :cond_15

    .line 586
    .line 587
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordDetectionServiceConnectionFactory:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;

    .line 588
    .line 589
    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnectionFactory;->createLocked()Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    iput-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 594
    .line 595
    :cond_15
    new-instance v4, Lcom/android/server/voiceinteraction/SoftwareTrustedHotwordDetectorSession;

    .line 596
    .line 597
    iget-object v15, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 598
    .line 599
    iget-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 600
    .line 601
    iget-object v3, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 604
    .line 605
    iget-object v6, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 606
    .line 607
    iget-object v7, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 608
    .line 609
    iget-boolean v8, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDebugHotwordLogging:Z

    .line 610
    .line 611
    iget-object v9, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteExceptionListener:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 612
    .line 613
    iget v10, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mUserId:I

    .line 614
    .line 615
    move-object v14, v4

    .line 616
    move-object/from16 v16, v2

    .line 617
    .line 618
    move-object/from16 v17, v3

    .line 619
    .line 620
    move-object/from16 v19, p0

    .line 621
    .line 622
    move/from16 v20, v5

    .line 623
    .line 624
    move-object/from16 v21, v6

    .line 625
    .line 626
    move-object/from16 v22, v7

    .line 627
    .line 628
    move/from16 v23, v8

    .line 629
    .line 630
    move-object/from16 v24, v9

    .line 631
    .line 632
    move/from16 v25, v10

    .line 633
    .line 634
    invoke-direct/range {v14 .. v25}, Lcom/android/server/voiceinteraction/DetectorSession;-><init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Ljava/lang/Object;Landroid/content/Context;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILandroid/media/permission/Identity;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda1;I)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_4

    .line 638
    .line 639
    :goto_6
    iput-object v2, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mHotwordRecognitionCallback:Lcom/android/internal/app/IHotwordRecognitionStatusCallback;

    .line 640
    .line 641
    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mDetectorSessions:Landroid/util/SparseArray;

    .line 642
    .line 643
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iget-object v1, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 647
    .line 648
    monitor-enter v1

    .line 649
    :try_start_0
    iget-boolean v0, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 650
    .line 651
    if-nez v0, :cond_18

    .line 652
    .line 653
    iget-boolean v0, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mDestroyed:Z

    .line 654
    .line 655
    if-eqz v0, :cond_16

    .line 656
    .line 657
    goto :goto_7

    .line 658
    :cond_16
    iget-object v0, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 659
    .line 660
    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;

    .line 661
    .line 662
    invoke-direct {v2, v4, v12, v13}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    new-instance v2, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;

    .line 670
    .line 671
    invoke-direct {v2, v4}, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    if-nez v0, :cond_17

    .line 679
    .line 680
    const-string v0, "DetectorSession"

    .line 681
    .line 682
    const-string v2, "Failed to create AndroidFuture"

    .line 683
    .line 684
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    :cond_17
    const/4 v0, 0x1

    .line 688
    iput-boolean v0, v4, Lcom/android/server/voiceinteraction/DetectorSession;->mInitialized:Z

    .line 689
    .line 690
    monitor-exit v1

    .line 691
    goto :goto_8

    .line 692
    :catchall_0
    move-exception v0

    .line 693
    goto :goto_9

    .line 694
    :cond_18
    :goto_7
    monitor-exit v1

    .line 695
    :goto_8
    return-void

    .line 696
    :goto_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    throw v0

    .line 698
    :cond_19
    const-string v0, "Voice interaction service should not hold permission android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    .line 699
    .line 700
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    new-instance v1, Ljava/lang/SecurityException;

    .line 704
    .line 705
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v1

    .line 709
    :cond_1a
    const-string v0, "Visual query detection does not require permission android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE"

    .line 710
    .line 711
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    new-instance v1, Ljava/lang/SecurityException;

    .line 715
    .line 716
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v1

    .line 720
    :cond_1b
    const-string v0, "Visual query detection service not in isolated process"

    .line 721
    .line 722
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 726
    .line 727
    const-string v1, "Visual query detection not in isolated process"

    .line 728
    .line 729
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    throw v0

    .line 733
    :cond_1c
    const-string v0, "Visual query detection service info not found"

    .line 734
    .line 735
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .line 737
    .line 738
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 739
    .line 740
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    throw v0

    .line 744
    :cond_1d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 748
    .line 749
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    throw v0
.end method

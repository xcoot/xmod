.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    sparse-switch v4, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    :goto_0
    move v4, v2

    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string/jumbo v4, "set-deviceconfig-namespace"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v4, 0x3

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string/jumbo v4, "set-temporary-services"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v4, v0

    .line 44
    goto :goto_1

    .line 45
    :sswitch_2
    const-string v4, "get-services"

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move v4, v3

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string/jumbo v4, "set-model-broadcasts"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move v4, v1

    .line 67
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const-string/jumbo v6, "setTemporaryDeviceConfigNamespace"

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const-string v6, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 112
    .line 113
    const-string v7, "OnDeviceIntelligenceManagerService"

    .line 114
    .line 115
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v5

    .line 121
    :try_start_0
    iput-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryConfigNamespace:Ljava/lang/String;

    .line 122
    .line 123
    if-eq v4, v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    int-to-long v6, v4

    .line 130
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const-string p0, "OnDeviceIntelligence DeviceConfig Namespace temporarily set to "

    .line 138
    .line 139
    const-string v0, " for "

    .line 140
    .line 141
    const-string/jumbo v2, "ms"

    .line 142
    .line 143
    .line 144
    invoke-static {v4, p0, v3, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_6

    .line 171
    .line 172
    if-nez v0, :cond_6

    .line 173
    .line 174
    if-nez v3, :cond_6

    .line 175
    .line 176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    const-string/jumbo v2, "resetTemporaryServices"

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resetTemporaryServices()V

    .line 189
    .line 190
    .line 191
    const-string p0, "OnDeviceIntelligenceManagerService temporary reset. "

    .line 192
    .line 193
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 212
    .line 213
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    const-string/jumbo v7, "setTemporaryServices"

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v7}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    const-string v7, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 233
    .line 234
    const-string v8, "OnDeviceIntelligenceManagerService"

    .line 235
    .line 236
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 240
    .line 241
    monitor-enter v6

    .line 242
    :try_start_2
    iput-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryServiceNames:[Ljava/lang/String;

    .line 243
    .line 244
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    if-eqz v5, :cond_7

    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 250
    .line 251
    .line 252
    iput-object v7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :catchall_1
    move-exception p0

    .line 256
    goto :goto_6

    .line 257
    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 258
    .line 259
    if-eqz v5, :cond_8

    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 262
    .line 263
    .line 264
    iput-object v7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 265
    .line 266
    :cond_8
    if-eq v4, v2, :cond_9

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    int-to-long v7, v4

    .line 273
    invoke-virtual {p0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    .line 275
    .line 276
    :cond_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    const-string p0, "OnDeviceIntelligenceService temporarily set to "

    .line 278
    .line 279
    const-string v2, " \n and \n OnDeviceTrustedInferenceService set to "

    .line 280
    .line 281
    const-string v5, " for "

    .line 282
    .line 283
    invoke-static {p0, v0, v2, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string/jumbo v0, "ms"

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :goto_5
    return v1

    .line 304
    :goto_6
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    throw p0

    .line 306
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getServiceNames()[Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v2, "OnDeviceIntelligenceService set to :  "

    .line 319
    .line 320
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    aget-object v2, p0, v1

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, " \n and \n OnDeviceTrustedInferenceService set to : "

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    aget-object p0, p0, v3

    .line 334
    .line 335
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 336
    .line 337
    .line 338
    return v1

    .line 339
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceShellCommand;->mService:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 364
    .line 365
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    const-string/jumbo v9, "setModelBroadcastKeys"

    .line 377
    .line 378
    .line 379
    invoke-static {v8, v9}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->enforceShellOnly(ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mContext:Landroid/content/Context;

    .line 383
    .line 384
    const-string v9, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    .line 385
    .line 386
    const-string v10, "OnDeviceIntelligenceManagerService"

    .line 387
    .line 388
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 392
    .line 393
    monitor-enter v8

    .line 394
    :try_start_4
    iput-object v7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mTemporaryBroadcastKeys:[Ljava/lang/String;

    .line 395
    .line 396
    iput-object v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mBroadcastPackageName:Ljava/lang/String;

    .line 397
    .line 398
    if-eq v6, v2, :cond_a

    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getTemporaryHandler()Landroid/os/Handler;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    int-to-long v9, v6

    .line 405
    invoke-virtual {p0, v3, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :catchall_2
    move-exception p0

    .line 410
    goto :goto_8

    .line 411
    :cond_a
    :goto_7
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 412
    const-string p0, "OnDeviceIntelligence Model Loading broadcast keys temporarily set to "

    .line 413
    .line 414
    const-string v2, " \n and \n OnDeviceTrustedInferenceService set to "

    .line 415
    .line 416
    const-string v3, "\n and Package name set to : "

    .line 417
    .line 418
    invoke-static {p0, v0, v2, v4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    const-string v0, " for "

    .line 423
    .line 424
    const-string/jumbo v2, "ms"

    .line 425
    .line 426
    .line 427
    invoke-static {v6, v5, v0, v2, p0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    return v1

    .line 435
    :goto_8
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 436
    throw p0

    .line 437
    :sswitch_data_0
    .sparse-switch
        -0x7caa68ff -> :sswitch_3
        -0x15c81b0b -> :sswitch_2
        -0x6755c5b -> :sswitch_1
        0x451528b1 -> :sswitch_0
    .end sparse-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "OnDeviceIntelligenceShellCommand commands: "

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v0, "  set-temporary-services [IntelligenceServiceComponentName] [InferenceServiceComponentName] [DURATION]"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "    Temporarily (for DURATION ms) changes the service implementations."

    .line 29
    .line 30
    const-string v1, "    To reset, call without any arguments."

    .line 31
    .line 32
    const-string v2, "  get-services To get the names of services that are currently being used."

    .line 33
    .line 34
    const-string v3, "  set-model-broadcasts [ModelLoadedBroadcastKey] [ModelUnloadedBroadcastKey] [ReceiverPackageName] [DURATION] To set the names of broadcast intent keys that are to be emitted for cts tests."

    .line 35
    .line 36
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "  set-deviceconfig-namespace [DeviceConfigNamespace] [DURATION] To set the device config namespace to use for cts tests."

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

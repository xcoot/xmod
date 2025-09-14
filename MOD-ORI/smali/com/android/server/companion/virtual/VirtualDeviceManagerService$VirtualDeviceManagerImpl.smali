.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
.super Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final createVirtualDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)Landroid/companion/virtual/IVirtualDevice;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice_enforcePermission()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4, v3}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_d

    .line 30
    .line 31
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-class v6, Landroid/companion/CompanionDeviceManager;

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/companion/CompanionDeviceManager;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    :try_start_0
    invoke-virtual {v4}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v6, 0x0

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    move v8, v5

    .line 77
    :goto_0
    if-ge v8, v7, :cond_2

    .line 78
    .line 79
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroid/companion/AssociationInfo;

    .line 84
    .line 85
    invoke-virtual {v9, v2, v3}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_0

    .line 90
    .line 91
    invoke-virtual {v9}, Landroid/companion/AssociationInfo;->getId()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-ne v1, v10, :cond_0

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v3, "No associations for user "

    .line 102
    .line 103
    const-string v4, "VirtualDeviceManagerService"

    .line 104
    .line 105
    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    move-object v9, v6

    .line 109
    :goto_1
    if-eqz v9, :cond_c

    .line 110
    .line 111
    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    .line 112
    .line 113
    invoke-virtual {v9}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->persistentDeviceIdApi()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, "Unsupported CDM Association device profile "

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, " for virtual device creation."

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_4
    :goto_2
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->streamCamera()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_5

    .line 182
    .line 183
    :goto_3
    move-object v15, v6

    .line 184
    goto :goto_5

    .line 185
    :cond_5
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    iget-object v4, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 190
    .line 191
    monitor-enter v4

    .line 192
    move v6, v5

    .line 193
    :goto_4
    :try_start_1
    iget-object v7, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-ge v6, v7, :cond_7

    .line 200
    .line 201
    iget-object v7, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 202
    .line 203
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 208
    .line 209
    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 210
    .line 211
    iget-object v8, v7, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-ne v8, v3, :cond_6

    .line 218
    .line 219
    monitor-exit v4

    .line 220
    move-object v15, v7

    .line 221
    goto :goto_5

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto/16 :goto_8

    .line 224
    .line 225
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    new-instance v6, Lcom/android/server/companion/virtual/CameraAccessController;

    .line 238
    .line 239
    iget-object v3, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 240
    .line 241
    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    .line 242
    .line 243
    invoke-direct {v4, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v6, v1, v3, v4}, Lcom/android/server/companion/virtual/CameraAccessController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :goto_5
    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;

    .line 257
    .line 258
    invoke-direct {v2, v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;I)V

    .line 259
    .line 260
    .line 261
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 262
    .line 263
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    iget-object v10, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 270
    .line 271
    iget-object v11, v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 272
    .line 273
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 274
    .line 275
    move-object v7, v3

    .line 276
    move-object/from16 v12, p1

    .line 277
    .line 278
    move-object/from16 v13, p2

    .line 279
    .line 280
    move v14, v1

    .line 281
    move-object/from16 v16, v4

    .line 282
    .line 283
    move-object/from16 v17, p5

    .line 284
    .line 285
    move-object/from16 v18, p6

    .line 286
    .line 287
    move-object/from16 v19, v2

    .line 288
    .line 289
    move-object/from16 v20, p4

    .line 290
    .line 291
    invoke-direct/range {v7 .. v20}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;Landroid/companion/virtual/VirtualDeviceParams;)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->expressMetrics()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_8

    .line 299
    .line 300
    const-string/jumbo v2, "virtual_devices.value_virtual_devices_created_count"

    .line 301
    .line 302
    .line 303
    invoke-static {v2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_8
    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 307
    .line 308
    iget-object v2, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 309
    .line 310
    monitor-enter v2

    .line 311
    :try_start_2
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->persistentDeviceIdApi()Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_9

    .line 316
    .line 317
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 318
    .line 319
    iget-object v4, v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 320
    .line 321
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-nez v4, :cond_9

    .line 326
    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 328
    .line 329
    .line 330
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    :try_start_3
    iget-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 332
    .line 333
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 334
    .line 335
    .line 336
    move-result-object v7

    .line 337
    const-class v8, Landroid/companion/CompanionDeviceManager;

    .line 338
    .line 339
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    check-cast v7, Landroid/companion/CompanionDeviceManager;

    .line 344
    .line 345
    invoke-virtual {v6}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    invoke-virtual {v8}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCdmAssociationListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    .line 354
    .line 355
    invoke-virtual {v7, v8, v6}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 356
    .line 357
    .line 358
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    .line 360
    .line 361
    goto :goto_6

    .line 362
    :catchall_1
    move-exception v0

    .line 363
    goto :goto_7

    .line 364
    :catchall_2
    move-exception v0

    .line 365
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_9
    :goto_6
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 370
    .line 371
    iget-object v4, v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 372
    .line 373
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_a

    .line 382
    .line 383
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 386
    .line 387
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    .line 388
    .line 389
    const/4 v4, 0x1

    .line 390
    invoke-direct {v2, v1, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 394
    .line 395
    .line 396
    :cond_a
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_b

    .line 401
    .line 402
    const-string/jumbo v0, "virtual_devices.value_virtual_devices_created_with_uid_count"

    .line 403
    .line 404
    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getUid()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    :cond_b
    return-object v3

    .line 413
    :goto_7
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 414
    throw v0

    .line 415
    :goto_8
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 416
    throw v0

    .line 417
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 418
    .line 419
    const-string v2, "No association with ID "

    .line 420
    .line 421
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :catchall_3
    move-exception v0

    .line 430
    move-object v1, v0

    .line 431
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    .line 433
    .line 434
    throw v1

    .line 435
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    .line 436
    .line 437
    const-string v1, "Package name "

    .line 438
    .line 439
    const-string v4, " does not belong to calling uid "

    .line 440
    .line 441
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0
.end method

.method public final createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, "Invalid VirtualDevice (deviceId = "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2, p4}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-interface {p3}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 44
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 45
    .line 46
    if-ne v0, v1, :cond_4

    .line 47
    .line 48
    const-string p3, "Virtual device already has a virtual display with ID "

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCategories()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyControllerLocked(Ljava/util/Set;)Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 63
    .line 64
    move-object v4, p1

    .line 65
    move-object v5, p2

    .line 66
    move-object v6, p0

    .line 67
    move-object v7, v1

    .line 68
    move-object v8, p4

    .line 69
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->interactiveScreenMirror()Z

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p4, :cond_0

    .line 79
    .line 80
    iget-object p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 81
    .line 82
    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    const/4 v2, -0x1

    .line 87
    if-eq p4, v2, :cond_0

    .line 88
    .line 89
    const/4 p4, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move p4, v0

    .line 92
    :goto_0
    iput p1, v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 93
    .line 94
    iput-boolean p4, v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 95
    .line 96
    iget-object p4, v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 97
    .line 98
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    .line 100
    .line 101
    iget-object p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter p4

    .line 104
    :try_start_2
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createAndAcquireWakeLockForDisplay(I)Landroid/os/PowerManager$WakeLock;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 117
    .line 118
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    .line 119
    .line 120
    invoke-direct {v3, p2, v1, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/os/PowerManager$WakeLock;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-boolean p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 127
    .line 128
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 130
    .line 131
    .line 132
    move-result-wide p3

    .line 133
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 141
    .line 142
    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 143
    .line 144
    invoke-virtual {v1, p2, p1}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 148
    .line 149
    iget-object p2, p2, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p2, p2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 155
    .line 156
    invoke-virtual {p2, v0, p1}, Lcom/android/server/input/InputManagerService;->setMousePointerAccelerationEnabled(ZI)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 160
    .line 161
    iget-object p2, p2, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object p2, p2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 167
    .line 168
    invoke-virtual {p2, p1, v0}, Lcom/android/server/input/InputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 172
    .line 173
    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    iget p2, p2, Landroid/view/DisplayInfo;->flags:I

    .line 178
    .line 179
    const/16 v1, 0x80

    .line 180
    .line 181
    and-int/2addr p2, v1

    .line 182
    if-ne p2, v1, :cond_1

    .line 183
    .line 184
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 185
    .line 186
    iget-object p2, p2, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    .line 187
    .line 188
    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :catchall_0
    move-exception p0

    .line 193
    goto :goto_2

    .line 194
    :cond_1
    :goto_1
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_2

    .line 202
    .line 203
    const-string/jumbo p2, "virtual_devices.value_virtual_display_created_count"

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    invoke-static {p2, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    :cond_2
    return p1

    .line 216
    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :catchall_1
    move-exception p0

    .line 221
    goto :goto_3

    .line 222
    :cond_3
    :try_start_4
    invoke-virtual {v1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 223
    .line 224
    .line 225
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 226
    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw p0

    .line 243
    :goto_3
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    throw p0

    .line 245
    :catchall_2
    move-exception p0

    .line 246
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    throw p0

    .line 248
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 249
    .line 250
    const-string/jumbo p1, "uid "

    .line 251
    .line 252
    .line 253
    const-string p2, " is not the owner of the supplied VirtualDevice (deviceId = "

    .line 254
    .line 255
    invoke-static {v1, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p3}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string p2, ")"

    .line 267
    .line 268
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :catchall_3
    move-exception p0

    .line 280
    goto :goto_4

    .line 281
    :cond_5
    :try_start_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 282
    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {p3}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p2, ")"

    .line 296
    .line 297
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p0

    .line 308
    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 309
    throw p0

    .line 310
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 311
    .line 312
    const-string p1, "Package name "

    .line 313
    .line 314
    const-string p2, " does not belong to calling uid "

    .line 315
    .line 316
    invoke-static {v1, p1, p4, p2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "VirtualDeviceManagerService"

    .line 8
    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "Created virtual devices: "

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 39
    .line 40
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/android/server/companion/virtual/Flags;->dumpHistory()Z

    .line 58
    .line 59
    .line 60
    const-string p1, "VirtualDevice Log:"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;

    .line 66
    .line 67
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-direct {p1, p3}, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;-><init>(Landroid/content/pm/PackageManager;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_2

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    .line 93
    .line 94
    invoke-virtual {p3, p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->dump(Ljava/io/PrintWriter;Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final getAllPersistentDeviceIds()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->getAllPersistentDeviceIds()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getAudioPlaybackSessionId(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioPlaybackSessionId()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getAudioRecordingSessionId(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getAudioRecordingSessionId()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getDeviceIdForDisplayId(I)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    move v0, v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    iget-object v4, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget p0, v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 40
    .line 41
    return p0

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_2
    :goto_1
    return v1
.end method

.method public final getDevicePolicy(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/companion/AssociationInfo;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final getVirtualDevices()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit v1

    .line 43
    return-object v0

    .line 44
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final isValidVirtualDeviceId(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final isVirtualDeviceOwnedMirrorDisplay(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 p1, -0x1

    .line 22
    if-eq p0, p1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :cond_1
    return v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    const-string p1, "VirtualDeviceManagerService"

    .line 8
    .line 9
    const-string p2, "Error during IPC"

    .line 10
    .line 11
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const-class p1, Landroid/os/RemoteException;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0
.end method

.method public final playSoundEffect(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    .line 20
    .line 21
    invoke-interface {p0, p2}, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;->onPlaySoundEffect(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "VirtualDeviceImpl"

    .line 27
    .line 28
    const-string p2, "Unable to invoke sound effect listener"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0
.end method

.method public final registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

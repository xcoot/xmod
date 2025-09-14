.class public final Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAutoframingOverride(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getRotateAndCropOverride(Ljava/lang/String;II)I
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    const-string v2, "CameraService_proxy"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "Calling UID: "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " doesn\'t match expected  camera service UID!"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-interface {v0, v1, v3, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 45
    .line 46
    .line 47
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    if-eqz p3, :cond_17

    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_17

    .line 59
    .line 60
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v4, 0x1

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 80
    .line 81
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_1

    .line 92
    .line 93
    new-instance p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 94
    .line 95
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    iget v6, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 101
    .line 102
    if-eqz v6, :cond_2

    .line 103
    .line 104
    move v6, v4

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    move v6, v3

    .line 107
    :goto_0
    iput-boolean v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    .line 108
    .line 109
    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    .line 110
    .line 111
    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 112
    .line 113
    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 114
    .line 115
    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 116
    .line 117
    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 118
    .line 119
    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    iput-boolean v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 124
    .line 125
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 126
    .line 127
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 128
    .line 129
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput-boolean v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const/4 p3, 0x0

    .line 137
    :goto_1
    if-nez p3, :cond_4

    .line 138
    .line 139
    const-string p0, "Recent tasks don\'t include camera client package name: "

    .line 140
    .line 141
    invoke-static {p0, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v3

    .line 145
    :cond_4
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 146
    .line 147
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-wide/32 v5, 0xb476b84

    .line 152
    .line 153
    .line 154
    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    const-string p0, "OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS enabled!"

    .line 161
    .line 162
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    return v3

    .line 166
    :cond_5
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 167
    .line 168
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-wide/32 v5, 0xb6a427e

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    const-string v0, "OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK enabled!"

    .line 182
    .line 183
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move v0, v4

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    move v0, v3

    .line 189
    :goto_2
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 190
    .line 191
    iget-object v5, v5, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    const-class v6, Landroid/hardware/display/DisplayManager;

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 200
    .line 201
    if-eqz v5, :cond_16

    .line 202
    .line 203
    iget v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-nez v5, :cond_7

    .line 210
    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p1, "Invalid display id: "

    .line 214
    .line 215
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget p1, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 219
    .line 220
    invoke-static {p0, p1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return v3

    .line 224
    :cond_7
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    const v7, 0x11101c1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_8

    .line 244
    .line 245
    const-string p0, "Disable Rotate and Crop to avoid conflicts with WM force rotation treatment."

    .line 246
    .line 247
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :cond_8
    if-eqz p2, :cond_9

    .line 253
    .line 254
    if-eq p2, v4, :cond_9

    .line 255
    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string/jumbo p1, "lensFacing="

    .line 259
    .line 260
    .line 261
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p1, ". Crop-rotate-scale is disabled."

    .line 268
    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :cond_9
    if-nez v0, :cond_b

    .line 282
    .line 283
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 292
    .line 293
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    .line 295
    const/16 p1, 0x17

    .line 296
    .line 297
    if-gt p0, p1, :cond_a

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :catch_0
    const-string p0, "Package name not found!"

    .line 301
    .line 302
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    :cond_a
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    .line 306
    .line 307
    if-eqz p0, :cond_b

    .line 308
    .line 309
    const-string p0, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    .line 310
    .line 311
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto/16 :goto_5

    .line 315
    .line 316
    :cond_b
    :goto_3
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 317
    .line 318
    if-nez p0, :cond_c

    .line 319
    .line 320
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 321
    .line 322
    if-nez p0, :cond_c

    .line 323
    .line 324
    const-string p0, "Non-fixed orientation activity. Crop-rotate-scale is disabled."

    .line 325
    .line 326
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_c
    const/16 p0, 0x5a

    .line 331
    .line 332
    const/16 p1, 0xb4

    .line 333
    .line 334
    const/16 v0, 0x10e

    .line 335
    .line 336
    const/4 v6, 0x3

    .line 337
    if-eqz v5, :cond_10

    .line 338
    .line 339
    if-eq v5, v4, :cond_f

    .line 340
    .line 341
    if-eq v5, v1, :cond_e

    .line 342
    .line 343
    if-eq v5, v6, :cond_d

    .line 344
    .line 345
    const-string p0, "Unsupported display rotation: "

    .line 346
    .line 347
    invoke-static {v5, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_d
    move v5, v0

    .line 352
    goto :goto_4

    .line 353
    :cond_e
    move v5, p1

    .line 354
    goto :goto_4

    .line 355
    :cond_f
    move v5, p0

    .line 356
    goto :goto_4

    .line 357
    :cond_10
    move v5, v3

    .line 358
    :goto_4
    const-string v7, "Display.getRotation()="

    .line 359
    .line 360
    const-string v8, " isFixedOrientationPortrait="

    .line 361
    .line 362
    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    iget-boolean v8, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 367
    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v8, " isFixedOrientationLandscape="

    .line 372
    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget-boolean p3, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 377
    .line 378
    invoke-static {v2, v7, p3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 379
    .line 380
    .line 381
    if-nez v5, :cond_11

    .line 382
    .line 383
    goto :goto_5

    .line 384
    :cond_11
    if-nez p2, :cond_12

    .line 385
    .line 386
    rsub-int v5, v5, 0x168

    .line 387
    .line 388
    :cond_12
    if-eq v5, p0, :cond_15

    .line 389
    .line 390
    if-eq v5, p1, :cond_14

    .line 391
    .line 392
    if-eq v5, v0, :cond_13

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_13
    move v3, v6

    .line 396
    goto :goto_5

    .line 397
    :cond_14
    move v3, v1

    .line 398
    goto :goto_5

    .line 399
    :cond_15
    move v3, v4

    .line 400
    :goto_5
    return v3

    .line 401
    :cond_16
    const-string p0, "Failed to query display manager!"

    .line 402
    .line 403
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    return v3

    .line 407
    :cond_17
    const-string p0, "Recent task list is empty!"

    .line 408
    .line 409
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    return v3

    .line 413
    :catch_1
    const-string p0, "Failed to query recent tasks!"

    .line 414
    .line 415
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    return v3
.end method

.method public final isCameraDisabled(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    const-string v2, "CameraService_proxy"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "Calling UID: "

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " doesn\'t match expected camera service UID!"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Failed to get the device policy manager service"

    .line 58
    .line 59
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return v3

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v2, 0x0

    .line 69
    :try_start_1
    invoke-virtual {p0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 70
    .line 71
    .line 72
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return p0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return v3

    .line 85
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .locals 38

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x417

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    const-string v0, "CameraService_proxy"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "Calling UID: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " doesn\'t match expected  camera service UID!"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    .line 45
    .line 46
    .line 47
    move-object/from16 v1, p0

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "cameraFacing="

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    .line 86
    .line 87
    .line 88
    move-result v17

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    .line 94
    .line 95
    .line 96
    move-result-wide v18

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    .line 98
    .line 99
    .line 100
    move-result-wide v20

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    .line 102
    .line 103
    .line 104
    move-result v22

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v30

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v24

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    .line 114
    .line 115
    .line 116
    move-result v25

    .line 117
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->logUltrawideUsage()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/4 v6, 0x0

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    if-eqz v4, :cond_1

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedUltraWide()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    move/from16 v26, v4

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move/from16 v26, v6

    .line 136
    .line 137
    :goto_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->logZoomOverrideUsage()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_2

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedZoomOverride()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    move/from16 v27, v4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    move/from16 v27, v6

    .line 151
    .line 152
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLogId()J

    .line 153
    .line 154
    .line 155
    move-result-wide v31

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionIndex()I

    .line 157
    .line 158
    .line 159
    move-result v33

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;

    .line 161
    .line 162
    .line 163
    move-result-object v29

    .line 164
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_3

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMostRequestedFpsRange()Landroid/util/Range;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :goto_2
    move-object/from16 v28, v4

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_3
    new-instance v4, Landroid/util/Range;

    .line 178
    .line 179
    invoke-direct {v4, v14, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :goto_3
    iget-object v12, v1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter v12

    .line 186
    :try_start_0
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v3, :cond_13

    .line 193
    .line 194
    if-eq v3, v0, :cond_d

    .line 195
    .line 196
    const/4 v2, 0x2

    .line 197
    const/4 v4, 0x3

    .line 198
    if-eq v3, v2, :cond_5

    .line 199
    .line 200
    if-eq v3, v4, :cond_4

    .line 201
    .line 202
    move/from16 v37, v9

    .line 203
    .line 204
    move-object/from16 v16, v12

    .line 205
    .line 206
    goto/16 :goto_10

    .line 207
    .line 208
    :cond_4
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    move-object/from16 v16, v12

    .line 216
    .line 217
    goto/16 :goto_11

    .line 218
    .line 219
    :cond_5
    :goto_4
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 220
    .line 221
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 226
    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    move-object/from16 v16, v2

    .line 230
    .line 231
    move-object/from16 v23, v30

    .line 232
    .line 233
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    .line 234
    .line 235
    .line 236
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 237
    .line 238
    check-cast v14, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move v2, v6

    .line 244
    :goto_5
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    if-ge v2, v14, :cond_7

    .line 251
    .line 252
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 253
    .line 254
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    check-cast v14, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 259
    .line 260
    iget-object v14, v14, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    if-eqz v14, :cond_6

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_6
    add-int/2addr v2, v0

    .line 270
    goto :goto_5

    .line 271
    :cond_7
    if-nez v13, :cond_8

    .line 272
    .line 273
    goto :goto_7

    .line 274
    :cond_8
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    .line 275
    .line 276
    array-length v14, v2

    .line 277
    :goto_6
    if-ge v6, v14, :cond_a

    .line 278
    .line 279
    aget-object v4, v2, v6

    .line 280
    .line 281
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_9

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_9
    add-int/2addr v6, v0

    .line 289
    const/4 v4, 0x3

    .line 290
    goto :goto_6

    .line 291
    :cond_a
    :goto_7
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 292
    .line 293
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 298
    .line 299
    const-string v4, "CameraService_proxy"

    .line 300
    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v14, "wmi.removeRefreshRateRangeForPackage clientName = "

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v13}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :goto_8
    const/4 v2, 0x3

    .line 326
    const/16 v22, 0x0

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_b
    move v2, v4

    .line 330
    :goto_9
    if-ne v3, v2, :cond_c

    .line 331
    .line 332
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .line 334
    const/4 v14, 0x2

    .line 335
    move-object v3, v2

    .line 336
    move-object v4, v15

    .line 337
    move-object v6, v13

    .line 338
    move v15, v9

    .line 339
    move v9, v14

    .line 340
    move-object/from16 v16, v12

    .line 341
    .line 342
    move/from16 v12, v22

    .line 343
    .line 344
    move-wide/from16 v13, v31

    .line 345
    .line 346
    move/from16 v37, v15

    .line 347
    .line 348
    move/from16 v15, v33

    .line 349
    .line 350
    :try_start_1
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 354
    .line 355
    check-cast v3, Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    goto :goto_a

    .line 361
    :catchall_1
    move-exception v0

    .line 362
    goto/16 :goto_11

    .line 363
    .line 364
    :cond_c
    move/from16 v37, v9

    .line 365
    .line 366
    move-object/from16 v16, v12

    .line 367
    .line 368
    :goto_a
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 369
    .line 370
    check-cast v2, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    const/16 v3, 0x14

    .line 377
    .line 378
    if-le v2, v3, :cond_16

    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_10

    .line 384
    .line 385
    :cond_d
    move/from16 v37, v9

    .line 386
    .line 387
    move-object/from16 v16, v12

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    :goto_b
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 391
    .line 392
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-ge v2, v3, :cond_f

    .line 397
    .line 398
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 399
    .line 400
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 405
    .line 406
    iget-object v3, v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_e

    .line 413
    .line 414
    goto :goto_e

    .line 415
    :cond_e
    add-int/2addr v2, v0

    .line 416
    goto :goto_b

    .line 417
    :cond_f
    if-nez v13, :cond_10

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_10
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    .line 421
    .line 422
    array-length v3, v2

    .line 423
    const/4 v6, 0x0

    .line 424
    :goto_c
    if-ge v6, v3, :cond_12

    .line 425
    .line 426
    aget-object v4, v2, v6

    .line 427
    .line 428
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_11

    .line 433
    .line 434
    goto :goto_e

    .line 435
    :cond_11
    add-int/2addr v6, v0

    .line 436
    goto :goto_c

    .line 437
    :cond_12
    :goto_d
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 438
    .line 439
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 444
    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    const/high16 v4, 0x42700000    # 60.0f

    .line 450
    .line 451
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    const/high16 v6, 0x41f00000    # 30.0f

    .line 456
    .line 457
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    const-string v6, "CameraService_proxy"

    .line 462
    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string/jumbo v12, "wmi.addRefreshRateRangeForPackage minFPS = "

    .line 469
    .line 470
    .line 471
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v12, ", maxFPS = "

    .line 478
    .line 479
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v12, ", clientName = "

    .line 486
    .line 487
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v13, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    .line 501
    .line 502
    .line 503
    :goto_e
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 504
    .line 505
    const/4 v9, 0x3

    .line 506
    move-object v3, v2

    .line 507
    move-object v4, v15

    .line 508
    move-object v6, v13

    .line 509
    move/from16 v12, v22

    .line 510
    .line 511
    move-object v0, v14

    .line 512
    move-wide/from16 v13, v31

    .line 513
    .line 514
    move-object/from16 v18, v0

    .line 515
    .line 516
    move-object v0, v15

    .line 517
    move/from16 v15, v33

    .line 518
    .line 519
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 523
    .line 524
    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 529
    .line 530
    if-eqz v2, :cond_16

    .line 531
    .line 532
    const-string v3, "CameraService_proxy"

    .line 533
    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v5, "Camera "

    .line 540
    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v0, " was already marked as active"

    .line 548
    .line 549
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .line 558
    .line 559
    const-string v31, ""

    .line 560
    .line 561
    new-instance v0, Landroid/util/Range;

    .line 562
    .line 563
    move-object/from16 v3, v18

    .line 564
    .line 565
    invoke-direct {v0, v3, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 566
    .line 567
    .line 568
    new-instance v36, Landroid/hardware/CameraExtensionSessionStats;

    .line 569
    .line 570
    invoke-direct/range {v36 .. v36}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    .line 571
    .line 572
    .line 573
    const-wide/16 v25, 0x0

    .line 574
    .line 575
    const-wide/16 v27, 0x0

    .line 576
    .line 577
    const/16 v29, 0x0

    .line 578
    .line 579
    const/16 v32, -0x1

    .line 580
    .line 581
    const/16 v33, 0x0

    .line 582
    .line 583
    const/16 v34, 0x0

    .line 584
    .line 585
    const/16 v24, 0x0

    .line 586
    .line 587
    move-object/from16 v23, v2

    .line 588
    .line 589
    move-object/from16 v35, v0

    .line 590
    .line 591
    invoke-virtual/range {v23 .. v36}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    .line 592
    .line 593
    .line 594
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 595
    .line 596
    check-cast v0, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    goto :goto_10

    .line 602
    :cond_13
    move/from16 v37, v9

    .line 603
    .line 604
    move-object/from16 v16, v12

    .line 605
    .line 606
    move-object v0, v15

    .line 607
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    const-class v4, Landroid/media/AudioManager;

    .line 612
    .line 613
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    check-cast v3, Landroid/media/AudioManager;

    .line 618
    .line 619
    if-eqz v3, :cond_15

    .line 620
    .line 621
    if-nez v5, :cond_14

    .line 622
    .line 623
    const-string v4, "back"

    .line 624
    .line 625
    goto :goto_f

    .line 626
    :cond_14
    const-string/jumbo v4, "front"

    .line 627
    .line 628
    .line 629
    :goto_f
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    :cond_15
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 637
    .line 638
    const/4 v9, 0x1

    .line 639
    move-object v3, v2

    .line 640
    move-object v4, v0

    .line 641
    move-object v6, v13

    .line 642
    move/from16 v12, v22

    .line 643
    .line 644
    move-object v15, v13

    .line 645
    move-wide/from16 v13, v31

    .line 646
    .line 647
    move-object/from16 v18, v0

    .line 648
    .line 649
    move-object v0, v15

    .line 650
    move/from16 v15, v33

    .line 651
    .line 652
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 653
    .line 654
    .line 655
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 656
    .line 657
    check-cast v3, Ljava/util/ArrayList;

    .line 658
    .line 659
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->canNotifyToNfcService(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-eqz v0, :cond_16

    .line 667
    .line 668
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 669
    .line 670
    move-object/from16 v3, v18

    .line 671
    .line 672
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    :cond_16
    :goto_10
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 676
    .line 677
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    iget-boolean v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 682
    .line 683
    if-eqz v2, :cond_17

    .line 684
    .line 685
    move/from16 v2, v37

    .line 686
    .line 687
    if-eq v2, v0, :cond_17

    .line 688
    .line 689
    const-string v3, "CameraService_proxy"

    .line 690
    .line 691
    const/4 v4, 0x1

    .line 692
    xor-int/2addr v2, v4

    .line 693
    xor-int/2addr v4, v0

    .line 694
    new-instance v5, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    const-string v6, "Notify nfc service : camera open was("

    .line 700
    .line 701
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v2, ") -> now("

    .line 708
    .line 709
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v2, ") = polling("

    .line 716
    .line 717
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    const-string v2, ")"

    .line 724
    .line 725
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .line 734
    .line 735
    invoke-virtual {v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 736
    .line 737
    .line 738
    :cond_17
    monitor-exit v16

    .line 739
    return-void

    .line 740
    :goto_11
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 741
    throw v0
.end method

.method public final notifyFeatureCombinationStats(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x417

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const-string p0, "CameraService_proxy"

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "Calling UID: "

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " doesn\'t match expected  camera service UID!"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 58
    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 65
    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/16 v1, 0x14

    .line 73
    .line 74
    if-le p1, v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final pingForUserUpdate()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "Calling UID: "

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " doesn\'t match expected  camera service UID!"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "CameraService_proxy"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    const/16 v2, 0x3c

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    throw p0
.end method

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

    .line 3
    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

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

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 7
    const-string v2, "CameraService_proxy"

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    const-string p1, "Calling UID: "

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " doesn\'t match expected  camera service UID!"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v3

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-interface {v0, v1, v3, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 47
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    if-eqz p3, :cond_17

    .line 50
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_17

    .line 60
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 63
    move-result-object p3

    .line 64
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p3

    .line 68
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v0

    .line 72
    const/4 v4, 0x1

    .line 73
    if-eqz v0, :cond_3

    .line 75
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 81
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 83
    if-eqz v5, :cond_1

    .line 85
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_1

    .line 93
    new-instance p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    .line 95
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 100
    iget v6, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 102
    if-eqz v6, :cond_2

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

    .line 109
    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    .line 111
    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 113
    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 115
    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 117
    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 119
    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    .line 122
    move-result v5

    .line 123
    iput-boolean v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 125
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 129
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 132
    move-result v0

    .line 133
    iput-boolean v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const/4 p3, 0x0

    .line 137
    :goto_1
    if-nez p3, :cond_4

    .line 139
    const-string p0, "Recent tasks don\'t include camera client package name: "

    .line 141
    invoke-static {p0, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v3

    .line 145
    :cond_4
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 147
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 150
    move-result-object v0

    .line 151
    const-wide/32 v5, 0xb476b84

    .line 154
    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_5

    .line 160
    const-string p0, "OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS enabled!"

    .line 162
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v3

    .line 166
    :cond_5
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    .line 168
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 171
    move-result-object v0

    .line 172
    const-wide/32 v5, 0xb6a427e

    .line 175
    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_6

    .line 181
    const-string v0, "OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK enabled!"

    .line 183
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 191
    iget-object v5, v5, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 193
    const-class v6, Landroid/hardware/display/DisplayManager;

    .line 195
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 198
    move-result-object v5

    .line 199
    check-cast v5, Landroid/hardware/display/DisplayManager;

    .line 201
    if-eqz v5, :cond_16

    .line 203
    iget v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 205
    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 208
    move-result-object v5

    .line 209
    if-nez v5, :cond_7

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    .line 213
    const-string p1, "Invalid display id: "

    .line 215
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget p1, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    .line 220
    invoke-static {p0, p1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 223
    return v3

    .line 224
    :cond_7
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    .line 227
    move-result v5

    .line 228
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 230
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    move-result-object v6

    .line 236
    const v7, 0x11101c1

    .line 239
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_8

    .line 245
    const-string p0, "Disable Rotate and Crop to avoid conflicts with WM force rotation treatment."

    .line 247
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    goto/16 :goto_5

    .line 252
    :cond_8
    if-eqz p2, :cond_9

    .line 254
    if-eq p2, v4, :cond_9

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo p1, "lensFacing="

    .line 261
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    const-string p1, ". Crop-rotate-scale is disabled."

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    goto/16 :goto_5

    .line 281
    :cond_9
    if-nez v0, :cond_b

    .line 283
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 290
    move-result-object p0

    .line 291
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 293
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    const/16 p1, 0x17

    .line 297
    if-gt p0, p1, :cond_a

    .line 299
    goto :goto_3

    .line 300
    :catch_0
    const-string p0, "Package name not found!"

    .line 302
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_a
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    .line 307
    if-eqz p0, :cond_b

    .line 309
    const-string p0, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    .line 311
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    goto/16 :goto_5

    .line 316
    :cond_b
    :goto_3
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 318
    if-nez p0, :cond_c

    .line 320
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 322
    if-nez p0, :cond_c

    .line 324
    const-string p0, "Non-fixed orientation activity. Crop-rotate-scale is disabled."

    .line 326
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto :goto_5

    .line 330
    :cond_c
    const/16 p0, 0x5a

    .line 332
    const/16 p1, 0xb4

    .line 334
    const/16 v0, 0x10e

    .line 336
    const/4 v6, 0x3

    .line 337
    if-eqz v5, :cond_10

    .line 339
    if-eq v5, v4, :cond_f

    .line 341
    if-eq v5, v1, :cond_e

    .line 343
    if-eq v5, v6, :cond_d

    .line 345
    const-string p0, "Unsupported display rotation: "

    .line 347
    invoke-static {v5, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

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

    .line 360
    const-string v8, " isFixedOrientationPortrait="

    .line 362
    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    move-result-object v7

    .line 366
    iget-boolean v8, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 371
    const-string v8, " isFixedOrientationLandscape="

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-boolean p3, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    .line 378
    invoke-static {v2, v7, p3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 381
    if-nez v5, :cond_11

    .line 383
    goto :goto_5

    .line 384
    :cond_11
    if-nez p2, :cond_12

    .line 386
    rsub-int v5, v5, 0x168

    .line 388
    :cond_12
    if-eq v5, p0, :cond_15

    .line 390
    if-eq v5, p1, :cond_14

    .line 392
    if-eq v5, v0, :cond_13

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

    .line 403
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v3

    .line 407
    :cond_17
    const-string p0, "Recent task list is empty!"

    .line 409
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v3

    .line 413
    :catch_1
    const-string p0, "Failed to query recent tasks!"

    .line 415
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v3
.end method

.method public final isCameraDisabled(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 7
    const-string v2, "CameraService_proxy"

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    const-string p1, "Calling UID: "

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " doesn\'t match expected camera service UID!"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v3

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 45
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 47
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 49
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 55
    if-nez p0, :cond_1

    .line 57
    const-string p0, "Failed to get the device policy manager service"

    .line 59
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 72
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    return v3

    .line 85
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public final notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .locals 38

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x417

    .line 8
    if-eq v1, v2, :cond_0

    .line 10
    const-string v0, "CameraService_proxy"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "Calling UID: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " doesn\'t match expected  camera service UID!"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    .line 42
    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    .line 47
    move-object/from16 v1, p0

    .line 49
    iget-object v1, v1, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const-string/jumbo v2, "cameraFacing="

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    .line 60
    move-result-object v15

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    .line 64
    move-result v3

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    .line 68
    move-result v5

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    .line 72
    move-result-object v13

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    .line 76
    move-result v7

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    .line 80
    move-result v8

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    .line 84
    move-result v11

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    .line 88
    move-result v17

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    .line 92
    move-result v10

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    .line 96
    move-result-wide v18

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    .line 100
    move-result-wide v20

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    .line 104
    move-result v22

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    .line 108
    move-result-object v30

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    .line 112
    move-result-object v24

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    .line 116
    move-result v25

    .line 117
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->logUltrawideUsage()Z

    .line 120
    move-result v4

    .line 121
    const/4 v6, 0x0

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v14

    .line 126
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedUltraWide()Z

    .line 131
    move-result v4

    .line 132
    move/from16 v26, v4

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    move/from16 v26, v6

    .line 137
    :goto_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->logZoomOverrideUsage()Z

    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_2

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedZoomOverride()Z

    .line 146
    move-result v4

    .line 147
    move/from16 v27, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    move/from16 v27, v6

    .line 152
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLogId()J

    .line 155
    move-result-wide v31

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionIndex()I

    .line 159
    move-result v33

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;

    .line 163
    move-result-object v29

    .line 164
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->analytics24q3()Z

    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_3

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMostRequestedFpsRange()Landroid/util/Range;

    .line 173
    move-result-object v4

    .line 174
    :goto_2
    move-object/from16 v28, v4

    .line 176
    goto :goto_3

    .line 177
    :cond_3
    new-instance v4, Landroid/util/Range;

    .line 179
    invoke-direct {v4, v14, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 182
    goto :goto_2

    .line 183
    :goto_3
    iget-object v12, v1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 185
    monitor-enter v12

    .line 186
    :try_start_0
    iget-object v4, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 188
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 191
    move-result v9

    .line 192
    if-eqz v3, :cond_13

    .line 194
    if-eq v3, v0, :cond_d

    .line 196
    const/4 v2, 0x2

    .line 197
    const/4 v4, 0x3

    .line 198
    if-eq v3, v2, :cond_5

    .line 200
    if-eq v3, v4, :cond_4

    .line 202
    move/from16 v37, v9

    .line 204
    move-object/from16 v16, v12

    .line 206
    goto/16 :goto_10

    .line 208
    :cond_4
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    goto :goto_4

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    move-object/from16 v16, v12

    .line 217
    goto/16 :goto_11

    .line 219
    :cond_5
    :goto_4
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 221
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 227
    if-eqz v2, :cond_b

    .line 229
    move-object/from16 v16, v2

    .line 231
    move-object/from16 v23, v30

    .line 233
    invoke-virtual/range {v16 .. v29}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    .line 236
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 238
    check-cast v14, Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move v2, v6

    .line 244
    :goto_5
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 246
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 249
    move-result v14

    .line 250
    if-ge v2, v14, :cond_7

    .line 252
    iget-object v14, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 254
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 257
    move-result-object v14

    .line 258
    check-cast v14, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 260
    iget-object v14, v14, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 262
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v14

    .line 266
    if-eqz v14, :cond_6

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

    .line 273
    goto :goto_7

    .line 274
    :cond_8
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    .line 276
    array-length v14, v2

    .line 277
    :goto_6
    if-ge v6, v14, :cond_a

    .line 279
    aget-object v4, v2, v6

    .line 281
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_9

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

    .line 293
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 299
    const-string v4, "CameraService_proxy"

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    const-string/jumbo v14, "wmi.removeRefreshRateRangeForPackage clientName = "

    .line 309
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v6

    .line 319
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v2, v13}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    .line 325
    :goto_8
    const/4 v2, 0x3

    .line 326
    const/16 v22, 0x0

    .line 328
    goto :goto_9

    .line 329
    :cond_b
    move v2, v4

    .line 330
    :goto_9
    if-ne v3, v2, :cond_c

    .line 332
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .line 342
    move/from16 v12, v22

    .line 344
    move-wide/from16 v13, v31

    .line 346
    move/from16 v37, v15

    .line 348
    move/from16 v15, v33

    .line 350
    :try_start_1
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 353
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 355
    check-cast v3, Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    goto :goto_a

    .line 361
    :catchall_1
    move-exception v0

    .line 362
    goto/16 :goto_11

    .line 364
    :cond_c
    move/from16 v37, v9

    .line 366
    move-object/from16 v16, v12

    .line 368
    :goto_a
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 370
    check-cast v2, Ljava/util/ArrayList;

    .line 372
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 375
    move-result v2

    .line 376
    const/16 v3, 0x14

    .line 378
    if-le v2, v3, :cond_16

    .line 380
    invoke-virtual {v1}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    .line 383
    goto/16 :goto_10

    .line 385
    :cond_d
    move/from16 v37, v9

    .line 387
    move-object/from16 v16, v12

    .line 389
    const/4 v2, 0x0

    .line 390
    :goto_b
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 392
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 395
    move-result v3

    .line 396
    if-ge v2, v3, :cond_f

    .line 398
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 400
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 403
    move-result-object v3

    .line 404
    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 406
    iget-object v3, v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 408
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_e

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

    .line 419
    goto :goto_d

    .line 420
    :cond_10
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    .line 422
    array-length v3, v2

    .line 423
    const/4 v6, 0x0

    .line 424
    :goto_c
    if-ge v6, v3, :cond_12

    .line 426
    aget-object v4, v2, v6

    .line 428
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_11

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

    .line 439
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    .line 448
    move-result v3

    .line 449
    const/high16 v4, 0x42700000    # 60.0f

    .line 451
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 454
    move-result v3

    .line 455
    const/high16 v6, 0x41f00000    # 30.0f

    .line 457
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    .line 460
    move-result v3

    .line 461
    const-string v6, "CameraService_proxy"

    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    .line 465
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    const-string/jumbo v12, "wmi.addRefreshRateRangeForPackage minFPS = "

    .line 471
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 477
    const-string v12, ", maxFPS = "

    .line 479
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 485
    const-string v12, ", clientName = "

    .line 487
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object v9

    .line 497
    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v2, v13, v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    .line 503
    :goto_e
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

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

    .line 511
    move-object v0, v14

    .line 512
    move-wide/from16 v13, v31

    .line 514
    move-object/from16 v18, v0

    .line 516
    move-object v0, v15

    .line 517
    move/from16 v15, v33

    .line 519
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 522
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 524
    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    .line 530
    if-eqz v2, :cond_16

    .line 532
    const-string v3, "CameraService_proxy"

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    .line 536
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    const-string v5, "Camera "

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v0, " was already marked as active"

    .line 549
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    move-result-object v0

    .line 556
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v31, ""

    .line 561
    new-instance v0, Landroid/util/Range;

    .line 563
    move-object/from16 v3, v18

    .line 565
    invoke-direct {v0, v3, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 568
    new-instance v36, Landroid/hardware/CameraExtensionSessionStats;

    .line 570
    invoke-direct/range {v36 .. v36}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    .line 573
    const-wide/16 v25, 0x0

    .line 575
    const-wide/16 v27, 0x0

    .line 577
    const/16 v29, 0x0

    .line 579
    const/16 v32, -0x1

    .line 581
    const/16 v33, 0x0

    .line 583
    const/16 v34, 0x0

    .line 585
    const/16 v24, 0x0

    .line 587
    move-object/from16 v23, v2

    .line 589
    move-object/from16 v35, v0

    .line 591
    invoke-virtual/range {v23 .. v36}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    .line 594
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 596
    check-cast v0, Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    goto :goto_10

    .line 602
    :cond_13
    move/from16 v37, v9

    .line 604
    move-object/from16 v16, v12

    .line 606
    move-object v0, v15

    .line 607
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 610
    move-result-object v3

    .line 611
    const-class v4, Landroid/media/AudioManager;

    .line 613
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 616
    move-result-object v3

    .line 617
    check-cast v3, Landroid/media/AudioManager;

    .line 619
    if-eqz v3, :cond_15

    .line 621
    if-nez v5, :cond_14

    .line 623
    const-string v4, "back"

    .line 625
    goto :goto_f

    .line 626
    :cond_14
    const-string/jumbo v4, "front"

    .line 629
    :goto_f
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 636
    :cond_15
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

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

    .line 644
    move-object v15, v13

    .line 645
    move-wide/from16 v13, v31

    .line 647
    move-object/from16 v18, v0

    .line 649
    move-object v0, v15

    .line 650
    move/from16 v15, v33

    .line 652
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    .line 655
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 657
    check-cast v3, Ljava/util/ArrayList;

    .line 659
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-virtual {v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->canNotifyToNfcService(Ljava/lang/String;)Z

    .line 665
    move-result v0

    .line 666
    if-eqz v0, :cond_16

    .line 668
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 670
    move-object/from16 v3, v18

    .line 672
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    :cond_16
    :goto_10
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 677
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 680
    move-result v0

    .line 681
    iget-boolean v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 683
    if-eqz v2, :cond_17

    .line 685
    move/from16 v2, v37

    .line 687
    if-eq v2, v0, :cond_17

    .line 689
    const-string v3, "CameraService_proxy"

    .line 691
    const/4 v4, 0x1

    .line 692
    xor-int/2addr v2, v4

    .line 693
    xor-int/2addr v4, v0

    .line 694
    new-instance v5, Ljava/lang/StringBuilder;

    .line 696
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    const-string v6, "Notify nfc service : camera open was("

    .line 701
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 707
    const-string v2, ") -> now("

    .line 709
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 715
    const-string v2, ") = polling("

    .line 717
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 723
    const-string v2, ")"

    .line 725
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    move-result-object v2

    .line 732
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-virtual {v1, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

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

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x417

    .line 14
    if-eq v0, v1, :cond_1

    .line 16
    const-string p0, "CameraService_proxy"

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string v0, "Calling UID: "

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " doesn\'t match expected  camera service UID!"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 47
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;

    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    .line 57
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 59
    check-cast p1, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result p1

    .line 72
    const/16 v1, 0x14

    .line 74
    if-le p1, v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

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

    .line 3
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

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

    .line 18
    return-void
.end method

.method public final pingForUserUpdate()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "Calling UID: "

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, " doesn\'t match expected  camera service UID!"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string v0, "CameraService_proxy"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 40
    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 42
    monitor-enter v1

    .line 43
    const/16 v2, 0x3c

    .line 45
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 51
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v0

    .line 54
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

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

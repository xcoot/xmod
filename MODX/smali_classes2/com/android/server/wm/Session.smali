.class public final Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAddedWindows:Ljava/util/ArrayList;

.field public mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field public final mAlertWindowSurfaces:Landroid/util/ArraySet;

.field public final mCallback:Landroid/view/IWindowSessionCallback;

.field public final mCanAddInternalSystemWindow:Z

.field public final mCanAlwaysUpdateWallpaper:Z

.field public final mCanCreateSystemApplicationOverlay:Z

.field public final mCanDeliverTouchToKeyguardWallpaper:Z

.field public final mCanForceShowingInsets:Z

.field public final mCanHideNonSystemOverlayWindows:Z

.field public final mCanSetUnrestrictedGestureExclusion:Z

.field public final mCanStartTasksFromRecents:Z

.field public mClientDead:Z

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public final mDummyControls:Landroid/view/InsetsSourceControl$Array;

.field public final mLastReportedAnimatorScale:F

.field public mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mProcess:Lcom/android/server/wm/WindowProcessController;

.field public mRelayoutTag:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSetsUnrestrictedKeepClearAreas:Z

.field public mShowingAlertWindowNotificationAllowed:Z

.field public final mStringName:Ljava/lang/String;

.field public mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mUid:I

.field public mWinSurfaceVisibleCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 20
    .line 21
    new-instance v1, Landroid/view/InsetsSourceControl$Array;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyControls:Landroid/view/InsetsSourceControl$Array;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mCanDeliverTouchToKeyguardWallpaper:Z

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 35
    .line 36
    iput p3, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 37
    .line 38
    iput p4, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 43
    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput v2, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 55
    .line 56
    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 61
    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    if-eqz v2, :cond_d

    .line 67
    .line 68
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x1

    .line 77
    if-nez v1, :cond_0

    .line 78
    .line 79
    move v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move v1, v0

    .line 82
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 83
    .line 84
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    .line 86
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_2

    .line 91
    .line 92
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move v1, v0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    :goto_1
    move v1, v2

    .line 106
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    .line 107
    .line 108
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-string v3, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    const-string v3, "android.permission.HIDE_OVERLAY_WINDOWS"

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    move v1, v0

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    :goto_3
    move v1, v2

    .line 132
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 133
    .line 134
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    const-string v3, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_5

    .line 143
    .line 144
    move v1, v2

    .line 145
    goto :goto_5

    .line 146
    :cond_5
    move v1, v0

    .line 147
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 148
    .line 149
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    const-string v3, "android.permission.START_TASKS_FROM_RECENTS"

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    move v1, v2

    .line 160
    goto :goto_6

    .line 161
    :cond_6
    move v1, v0

    .line 162
    :goto_6
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 163
    .line 164
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    const-string v3, "android.permission.SET_UNRESTRICTED_KEEP_CLEAR_AREAS"

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    move v1, v2

    .line 175
    goto :goto_7

    .line 176
    :cond_7
    move v1, v0

    .line 177
    :goto_7
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    .line 178
    .line 179
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    const-string v3, "android.permission.SET_UNRESTRICTED_GESTURE_EXCLUSION"

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    move v1, v2

    .line 190
    goto :goto_8

    .line 191
    :cond_8
    move v1, v0

    .line 192
    :goto_8
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    .line 193
    .line 194
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysUpdateWallpaperPermission()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    const-string v3, "android.permission.ALWAYS_UPDATE_WALLPAPER"

    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_9

    .line 209
    .line 210
    move v1, v2

    .line 211
    goto :goto_9

    .line 212
    :cond_9
    move v1, v0

    .line 213
    :goto_9
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAlwaysUpdateWallpaper:Z

    .line 214
    .line 215
    iget-boolean v1, p1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 216
    .line 217
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 218
    .line 219
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 220
    .line 221
    iput-object v1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 222
    .line 223
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_TOUCH_TO_KEYGUARD_WALLPAPER:Z

    .line 224
    .line 225
    if-eqz v1, :cond_b

    .line 226
    .line 227
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    const-string v1, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-nez p1, :cond_a

    .line 236
    .line 237
    move p1, v2

    .line 238
    goto :goto_a

    .line 239
    :cond_a
    move p1, v0

    .line 240
    :goto_a
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mCanDeliverTouchToKeyguardWallpaper:Z

    .line 241
    .line 242
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v1, "Session{"

    .line 245
    .line 246
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, " "

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const/16 p3, 0x2710

    .line 269
    .line 270
    if-ge p4, p3, :cond_c

    .line 271
    .line 272
    const-string p3, ":"

    .line 273
    .line 274
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    goto :goto_b

    .line 281
    :cond_c
    const-string p3, ":u"

    .line 282
    .line 283
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 287
    .line 288
    .line 289
    move-result p3

    .line 290
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const/16 p3, 0x61

    .line 294
    .line 295
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 299
    .line 300
    .line 301
    move-result p3

    .line 302
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    :goto_b
    const-string/jumbo p3, "}"

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    iput-object p1, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 316
    .line 317
    :try_start_1
    invoke-interface {p2}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    .line 323
    .line 324
    goto :goto_c

    .line 325
    :catch_0
    iput-boolean v2, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 326
    .line 327
    :goto_c
    return-void

    .line 328
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 329
    .line 330
    const-string p1, "Unknown pid="

    .line 331
    .line 332
    const-string p2, " uid="

    .line 333
    .line 334
    invoke-static {p3, p4, p1, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw p0

    .line 342
    :catchall_0
    move-exception p0

    .line 343
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 345
    .line 346
    .line 347
    throw p0
.end method


# virtual methods
.method public final actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 13
    .line 14
    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    iget v2, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 5
    .line 6
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move/from16 v4, p3

    .line 13
    .line 14
    move/from16 v5, p4

    .line 15
    .line 16
    move/from16 v7, p5

    .line 17
    .line 18
    move-object/from16 v8, p6

    .line 19
    .line 20
    move-object/from16 v9, p7

    .line 21
    .line 22
    move-object/from16 v10, p8

    .line 23
    .line 24
    move-object/from16 v11, p9

    .line 25
    .line 26
    move-object/from16 v12, p10

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0
.end method

.method public final addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move/from16 v4, p3

    .line 7
    .line 8
    move/from16 v5, p4

    .line 9
    .line 10
    move/from16 v6, p5

    .line 11
    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move-object/from16 v8, p7

    .line 15
    .line 16
    move-object/from16 v9, p8

    .line 17
    .line 18
    move-object/from16 v10, p9

    .line 19
    .line 20
    move-object/from16 v11, p10

    .line 21
    .line 22
    move-object/from16 v12, p11

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public final addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    iget v2, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 5
    .line 6
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    iget-object v10, v1, Lcom/android/server/wm/Session;->mDummyControls:Landroid/view/InsetsSourceControl$Array;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move/from16 v4, p3

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    move-object/from16 v9, p5

    .line 24
    .line 25
    move-object/from16 v11, p6

    .line 26
    .line 27
    move-object/from16 v12, p7

    .line 28
    .line 29
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public final binderDied()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 10
    .line 11
    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21
    .line 22
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v2, v1

    .line 29
    :goto_0
    if-ltz v2, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 38
    .line 39
    const-string v4, "WindowManager"

    .line 40
    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "WIN DEATH: "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-ne v4, v3, :cond_2

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 74
    .line 75
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    iget-object v6, v4, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 78
    .line 79
    iget-object v6, v6, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 80
    .line 81
    iget-object v7, v6, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    iget-object v8, v6, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Ljava/lang/Integer;

    .line 91
    .line 92
    if-eqz v8, :cond_0

    .line 93
    .line 94
    invoke-virtual {v6, v8}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v1

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :try_start_3
    iget-object v4, v4, Lcom/android/server/wm/SnapshotController;->mActivitySnapshotController:Lcom/android/server/wm/ActivitySnapshotController;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :goto_2
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :try_start_5
    throw v1

    .line 116
    :catchall_1
    move-exception v1

    .line 117
    goto :goto_4

    .line 118
    :cond_2
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeIfPossible()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    .line 120
    .line 121
    add-int/lit8 v2, v2, -0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 125
    .line 126
    .line 127
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    goto :goto_5

    .line 134
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 135
    .line 136
    .line 137
    throw v1

    .line 138
    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public final cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final cancelDraw(Landroid/view/IWindow;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->cancelDraw(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clearTouchableRegion(Landroid/view/IWindow;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_1
    invoke-virtual {v0, p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput v4, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 26
    .line 27
    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final clearTspDeadzone(Landroid/view/IWindow;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Drag into new candidate view @ "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "WindowManager"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final dragRecipientExited(Landroid/view/IWindow;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Drag from old candidate view @ "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "WindowManager"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final dropForAccessibility(Landroid/view/IWindow;II)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    int-to-float p3, p3

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragDropController;->dropForAccessibility(Landroid/view/IWindow;FF)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-wide/16 v3, 0x20

    .line 8
    .line 9
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v6, "finishDrawing: "

    .line 18
    .line 19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v6, v0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v6, "finishDrawingWindow: syncBuffer="

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-virtual {v1, v7, v8}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    :try_start_0
    iget-object v9, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 59
    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 61
    .line 62
    .line 63
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    const/4 v10, 0x0

    .line 65
    move-object/from16 v11, p1

    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v5, v0, v11, v10}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:[Z

    .line 72
    .line 73
    aget-boolean v10, v11, v10

    .line 74
    .line 75
    if-eqz v10, :cond_3

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 84
    .line 85
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string/jumbo v11, "null"

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    int-to-long v12, v2

    .line 100
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 101
    .line 102
    const-string v18, "finishDrawingWindow: %s mDrawState=%s seqId=%d"

    .line 103
    .line 104
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    filled-new-array {v10, v11, v12}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v19

    .line 112
    const-wide v15, 0x68f07e261273398bL    # 3.0821284494922176E197

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const/16 v17, 0x10

    .line 118
    .line 119
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    if-eqz v1, :cond_4

    .line 123
    .line 124
    iget-object v10, v1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-nez v10, :cond_4

    .line 131
    .line 132
    const-string v10, "WindowManager"

    .line 133
    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v6, v1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_4
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 170
    .line 171
    or-int/lit8 v2, v2, 0x4

    .line 172
    .line 173
    iput v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 174
    .line 175
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 176
    .line 177
    .line 178
    iget-object v0, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 181
    .line 182
    .line 183
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .line 186
    .line 187
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    .line 189
    .line 190
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catchall_1
    move-exception v0

    .line 195
    goto :goto_2

    .line 196
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 198
    .line 199
    .line 200
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public final finishMovingTask(Landroid/view/IWindow;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne v2, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning$1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p1

    .line 9
    move-object v5, p2

    .line 10
    move-object v6, p3

    .line 11
    move-object v7, p4

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->generateDisplayHash(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final getDragDeviceId()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/DragState;->mDeviceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final getDragPointerId()I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/DragState;->mPointerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final getDragStateInputToken()Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string p1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p4, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v17

    .line 22
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 25
    .line 26
    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 27
    .line 28
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    move/from16 v10, p6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    move v10, v2

    .line 37
    :goto_1
    move-object/from16 v2, p0

    .line 38
    .line 39
    move/from16 v5, p1

    .line 40
    .line 41
    move-object/from16 v6, p2

    .line 42
    .line 43
    move-object/from16 v7, p3

    .line 44
    .line 45
    move-object/from16 v8, p4

    .line 46
    .line 47
    move/from16 v9, p5

    .line 48
    .line 49
    move/from16 v11, p7

    .line 50
    .line 51
    move/from16 v12, p8

    .line 52
    .line 53
    move-object/from16 v13, p9

    .line 54
    .line 55
    move-object/from16 v14, p10

    .line 56
    .line 57
    move-object/from16 v15, p11

    .line 58
    .line 59
    move-object/from16 v16, p12

    .line 60
    .line 61
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/wm/WindowManagerService;->grantInputChannel(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p4, :cond_1

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v19

    .line 22
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 25
    .line 26
    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 27
    .line 28
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    move/from16 v10, p6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    move v10, v2

    .line 37
    :goto_1
    move-object/from16 v2, p0

    .line 38
    .line 39
    move/from16 v5, p1

    .line 40
    .line 41
    move-object/from16 v6, p2

    .line 42
    .line 43
    move-object/from16 v7, p3

    .line 44
    .line 45
    move-object/from16 v8, p4

    .line 46
    .line 47
    move/from16 v9, p5

    .line 48
    .line 49
    move/from16 v11, p7

    .line 50
    .line 51
    move/from16 v12, p8

    .line 52
    .line 53
    move-object/from16 v13, p9

    .line 54
    .line 55
    move-object/from16 v14, p10

    .line 56
    .line 57
    move-object/from16 v15, p11

    .line 58
    .line 59
    move-object/from16 v16, p12

    .line 60
    .line 61
    move/from16 v17, p13

    .line 62
    .line 63
    move-object/from16 v18, p14

    .line 64
    .line 65
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/wm/WindowManagerService;->grantInputChannelWithTaskToken(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public final isClientDead()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSatellitePointingUiPackage()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const v3, 0x1040393

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 25
    .line 26
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 27
    .line 28
    sget-object p0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 29
    .line 30
    const/4 v6, -0x1

    .line 31
    const/4 v7, 0x1

    .line 32
    const-string v4, "android.permission.SATELLITE_COMMUNICATION"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_1
    :goto_0
    return v1
.end method

.method public final killSessionLocked()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    aget-boolean v1, v1, v2

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 30
    .line 31
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-wide v2, 0x249f79a947f13dd4L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "Exception thrown when killing surface session "

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " in session "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ": "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "WindowManager"

    .line 89
    .line 90
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :goto_0
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v2, v1, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 118
    .line 119
    new-instance v3, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AlertWindowNotification;Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method public final moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return v4

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->moveFocusToAdjacentWindow(Lcom/android/server/wm/WindowState;I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "WindowManager"

    .line 12
    .line 13
    const-string p2, "Window Session Crash"

    .line 14
    .line 15
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    throw p0
.end method

.method public final onWindowAdded(Lcom/android/server/wm/WindowState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "relayoutWindow: "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    new-instance v0, Landroid/view/SurfaceSession;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 42
    .line 43
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    aget-boolean v1, v1, v2

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    .line 56
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-wide v2, -0x16218a9dfee8c189L    # -9.325798000122277E201

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    cmpl-float v0, v0, v1

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 92
    .line 93
    const/16 v1, 0x22

    .line 94
    .line 95
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 103
    .line 104
    iput-object p0, v0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 105
    .line 106
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final outOfMemory(Landroid/view/IWindow;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final performClipDataUpdate(Landroid/content/ClipData;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "updateClipData: wrong clipdata mData="

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string p0, "WindowManager"

    .line 26
    .line 27
    const-string/jumbo p1, "updateClipData: there is no clipdata to be updated."

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_2
    iget v4, v3, Lcom/android/server/wm/DragState;->mUid:I

    .line 41
    .line 42
    if-ne v4, v0, :cond_3

    .line 43
    .line 44
    iget-object v0, v3, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 59
    .line 60
    iput-object p1, v3, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 61
    .line 62
    if-le v1, v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->notifyUpdateClipDataLocked()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->restartDragLocked(Landroid/content/ClipData;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "WindowManager"

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 83
    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, " data="

    .line 88
    .line 89
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string p0, "WindowManager"

    .line 104
    .line 105
    const-string/jumbo p1, "updateClipData: caller\'s uid is not valid."

    .line 106
    .line 107
    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_0
    move-exception p0

    .line 117
    goto :goto_2

    .line 118
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 123
    :goto_2
    const-string p1, "WindowManager"

    .line 124
    .line 125
    const-string/jumbo v0, "updateClipData: exception e="

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v0, p1}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    return-void
.end method

.method public final performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    move-object/from16 v15, p11

    .line 14
    .line 15
    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/wm/Session;->validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move/from16 v2, p2

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Session;->validateDragFlags(II)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v19

    .line 27
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 28
    .line 29
    iget v5, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 30
    .line 31
    iget v6, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 32
    .line 33
    const/16 v18, 0x0

    .line 34
    .line 35
    move-object/from16 v7, p1

    .line 36
    .line 37
    move/from16 v8, p2

    .line 38
    .line 39
    move-object/from16 v9, p3

    .line 40
    .line 41
    move/from16 v10, p4

    .line 42
    .line 43
    move/from16 v11, p5

    .line 44
    .line 45
    move/from16 v12, p6

    .line 46
    .line 47
    move/from16 v13, p7

    .line 48
    .line 49
    move/from16 v14, p8

    .line 50
    .line 51
    move/from16 v15, p9

    .line 52
    .line 53
    move/from16 v16, p10

    .line 54
    .line 55
    move-object/from16 v17, p11

    .line 56
    .line 57
    invoke-virtual/range {v4 .. v18}, Lcom/android/server/wm/DragDropController;->performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;)Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public final performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 10
    .line 11
    iget v5, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    move/from16 v7, p2

    .line 16
    .line 17
    move-object/from16 v8, p3

    .line 18
    .line 19
    move/from16 v9, p4

    .line 20
    .line 21
    move/from16 v10, p5

    .line 22
    .line 23
    move/from16 v11, p6

    .line 24
    .line 25
    move/from16 v12, p7

    .line 26
    .line 27
    move/from16 v13, p8

    .line 28
    .line 29
    move/from16 v14, p9

    .line 30
    .line 31
    move/from16 v15, p10

    .line 32
    .line 33
    move-object/from16 v16, p11

    .line 34
    .line 35
    move-object/from16 v17, p12

    .line 36
    .line 37
    invoke-virtual/range {v3 .. v17}, Lcom/android/server/wm/DragDropController;->performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;)Landroid/os/IBinder;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public final performHapticFeedback(IZZ)Z
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move v5, p1

    .line 19
    move v8, p2

    .line 20
    move v9, p3

    .line 21
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->performHapticFeedback(IILjava/lang/String;Ljava/lang/String;ZZ)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final performHapticFeedbackAsync(IZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Session;->performHapticFeedback(IZZ)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final pokeDrawLock(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 3
    .line 4
    const-wide/16 v11, 0x20

    .line 5
    .line 6
    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move/from16 v4, p3

    .line 14
    .line 15
    move/from16 v5, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v7, p6

    .line 20
    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    move/from16 v9, p8

    .line 24
    .line 25
    move-object/from16 v10, p9

    .line 26
    .line 27
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    return v0
.end method

.method public final relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .locals 26

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    move/from16 v4, p3

    .line 15
    .line 16
    move/from16 v5, p4

    .line 17
    .line 18
    move/from16 v6, p5

    .line 19
    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    move/from16 v8, p7

    .line 23
    .line 24
    move/from16 v9, p8

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/Session;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v24, 0x0

    .line 31
    .line 32
    const/16 v25, 0x0

    .line 33
    .line 34
    const/16 v20, 0x0

    .line 35
    .line 36
    const/16 v21, 0x0

    .line 37
    .line 38
    const/16 v22, 0x0

    .line 39
    .line 40
    const/16 v23, 0x0

    .line 41
    .line 42
    move-object/from16 v11, p0

    .line 43
    .line 44
    move-object/from16 v12, p1

    .line 45
    .line 46
    move-object/from16 v13, p2

    .line 47
    .line 48
    move/from16 v14, p3

    .line 49
    .line 50
    move/from16 v15, p4

    .line 51
    .line 52
    move/from16 v16, p5

    .line 53
    .line 54
    move/from16 v17, p6

    .line 55
    .line 56
    move/from16 v18, p7

    .line 57
    .line 58
    move/from16 v19, p8

    .line 59
    .line 60
    invoke-virtual/range {v11 .. v25}, Lcom/android/server/wm/Session;->relayoutLegacy(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final relayoutLegacy(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v14, 0x20

    .line 6
    .line 7
    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    const/16 v16, 0x0

    .line 13
    .line 14
    move-object/from16 v1, p0

    .line 15
    .line 16
    move-object/from16 v2, p1

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    move/from16 v4, p3

    .line 21
    .line 22
    move/from16 v5, p4

    .line 23
    .line 24
    move/from16 v6, p5

    .line 25
    .line 26
    move/from16 v7, p6

    .line 27
    .line 28
    move/from16 v8, p7

    .line 29
    .line 30
    move/from16 v9, p8

    .line 31
    .line 32
    move-object/from16 v10, p9

    .line 33
    .line 34
    move-object/from16 v11, p10

    .line 35
    .line 36
    move-object/from16 v12, p11

    .line 37
    .line 38
    move-object/from16 v13, p12

    .line 39
    .line 40
    move-wide/from16 v17, v14

    .line 41
    .line 42
    move-object/from16 v14, p13

    .line 43
    .line 44
    move-object/from16 v15, p14

    .line 45
    .line 46
    invoke-virtual/range {v0 .. v16}, Lcom/android/server/wm/WindowManagerService;->relayoutWindowInner(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;Landroid/view/WindowRelayoutResult;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    return v0
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 17
    .line 18
    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    iget-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmbeddedWindowController;->remove(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final removeWithTaskToken(Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmbeddedWindowController;->remove(Landroid/os/IBinder;)V

    .line 12
    .line 13
    .line 14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportDecorViewGestureChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final reportDropResult(Landroid/view/IWindow;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reportKeepClearAreasChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public final sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    move-object v6, p1

    .line 18
    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 27
    .line 28
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAlwaysUpdateWallpaper:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, v6, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 33
    .line 34
    if-eq v4, v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v6, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 37
    .line 38
    if-ne v4, v0, :cond_1

    .line 39
    .line 40
    :cond_0
    move-object v7, p2

    .line 41
    move/from16 v8, p3

    .line 42
    .line 43
    move/from16 v9, p4

    .line 44
    .line 45
    move/from16 v10, p5

    .line 46
    .line 47
    move-object/from16 v11, p6

    .line 48
    .line 49
    move/from16 v12, p7

    .line 50
    .line 51
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public setHasOverlayUi(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 6
    .line 7
    const/16 v1, 0x3a

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, ", minimizedInsets="

    .line 7
    .line 8
    const-string/jumbo v2, "setInsetsWindow "

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 22
    .line 23
    .line 24
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    const/4 v7, 0x0

    .line 26
    :try_start_1
    invoke-virtual {v0, p0, p1, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "WindowManager"

    .line 37
    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", contentInsets="

    .line 47
    .line 48
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " -> "

    .line 57
    .line 58
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", visibleInsets="

    .line 65
    .line 66
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, " -> "

    .line 75
    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", touchableRegion="

    .line 83
    .line 84
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 88
    .line 89
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, " -> "

    .line 93
    .line 94
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, ", touchableInsets "

    .line 101
    .line 102
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 106
    .line 107
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, " -> "

    .line 111
    .line 112
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    .line 119
    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, " -> "

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_0
    const-string v1, ""

    .line 149
    .line 150
    :goto_0
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_1
    if-eqz p0, :cond_6

    .line 161
    .line 162
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 163
    .line 164
    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 165
    .line 166
    if-eqz p1, :cond_2

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 169
    .line 170
    if-eqz p1, :cond_2

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    iget p1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 174
    .line 175
    if-ne p1, p2, :cond_3

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 186
    .line 187
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_3

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 194
    .line 195
    invoke-virtual {p1, p5}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    .line 204
    .line 205
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_3
    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 210
    .line 211
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 215
    .line 216
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 220
    .line 221
    invoke-virtual {p1, p5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 222
    .line 223
    .line 224
    iput p2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 225
    .line 226
    iget p1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 227
    .line 228
    const/high16 p2, 0x3f800000    # 1.0f

    .line 229
    .line 230
    cmpl-float p2, p1, p2

    .line 231
    .line 232
    if-eqz p2, :cond_4

    .line 233
    .line 234
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 240
    .line 241
    iget p2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 247
    .line 248
    iget p2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 249
    .line 250
    invoke-virtual {p1, p2}, Landroid/graphics/Region;->scale(F)V

    .line 251
    .line 252
    .line 253
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    .line 254
    .line 255
    if-eqz p1, :cond_5

    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 258
    .line 259
    invoke-virtual {p1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 260
    .line 261
    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 266
    .line 267
    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 268
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 273
    .line 274
    invoke-virtual {p1, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 282
    .line 283
    const/4 p2, 0x1

    .line 284
    invoke-virtual {p1, p2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 285
    .line 286
    .line 287
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_6

    .line 294
    .line 295
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 302
    .line 303
    filled-new-array {p0}, [I

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p1, v3, p0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid(I[I)V

    .line 308
    .line 309
    .line 310
    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :goto_3
    return-void

    .line 316
    :catchall_1
    move-exception p0

    .line 317
    goto :goto_5

    .line 318
    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 319
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 320
    .line 321
    .line 322
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 323
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    .line 325
    .line 326
    throw p0
.end method

.method public final setKeyguardWallpaperTouchAllowed(Landroid/view/IWindow;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanDeliverTouchToKeyguardWallpaper:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iput-boolean p2, p0, Lcom/android/server/wm/WindowState;->mKeyguardWallpaperTouchAllowed:Z

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string p1, "Requires READ_WALLPAPER_INTERNAL permission"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setOnBackInvokedCallback(): No window state for package:"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, p0, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string p1, "WindowManager"

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    .line 44
    .line 45
    aget-boolean p0, p0, v3

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 58
    .line 59
    const-string v6, "%s: Setting back callback %s"

    .line 60
    .line 61
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-wide v3, -0x6471b7289323c563L    # -5.978792561111694E-176

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iput-object p2, p1, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 75
    .line 76
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;

    .line 10
    .line 11
    invoke-direct {v1, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTspNoteMode(Landroid/view/IWindow;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTspNoteMode(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;

    .line 14
    .line 15
    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 27
    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v3, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;-><init>(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "Zoom must be a valid float between 0 and 1: "

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move/from16 v8, p5

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    move v8, v0

    .line 17
    :goto_0
    const/4 v11, 0x0

    .line 18
    move-object v4, p1

    .line 19
    move v5, p2

    .line 20
    move-object v6, p3

    .line 21
    move/from16 v7, p4

    .line 22
    .line 23
    move/from16 v9, p6

    .line 24
    .line 25
    move-object/from16 v10, p7

    .line 26
    .line 27
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerService;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move/from16 v8, p5

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    move v8, v0

    .line 21
    :goto_0
    move-object v4, p1

    .line 22
    move v5, p2

    .line 23
    move-object v6, p3

    .line 24
    move/from16 v7, p4

    .line 25
    .line 26
    move/from16 v9, p6

    .line 27
    .line 28
    move-object/from16 v10, p7

    .line 29
    .line 30
    move-object/from16 v11, p8

    .line 31
    .line 32
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/WindowManagerService;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_1
    return-void
.end method

.method public final updateRequestedVisibleTypes(Landroid/view/IWindow;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 19
    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/wm/InsetsPolicy;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/WindowState;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-nez v2, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const-string v3, "application/vnd.android.activity"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "application/vnd.android.shortcut"

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const-string v5, "application/vnd.android.task"

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int v5, v3, v4

    .line 37
    .line 38
    add-int/2addr v5, v2

    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/4 v6, 0x1

    .line 43
    if-gt v5, v6, :cond_16

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_15

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    move v5, v11

    .line 53
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-ge v5, v7, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string v1, "Unexpected item, expected an intent"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_4
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    .line 84
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 85
    .line 86
    iget v7, v5, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 87
    .line 88
    const/4 v8, -0x1

    .line 89
    if-ne v7, v8, :cond_5

    .line 90
    .line 91
    iget-object v7, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const-wide/32 v12, 0x100000

    .line 98
    .line 99
    .line 100
    const-string v9, "com.android.systemui"

    .line 101
    .line 102
    invoke-virtual {v7, v9, v12, v13, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    iput v7, v5, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 107
    .line 108
    :cond_5
    iget v5, v5, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 109
    .line 110
    const/16 v12, 0x3e8

    .line 111
    .line 112
    if-eq v5, v10, :cond_7

    .line 113
    .line 114
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 115
    .line 116
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 119
    .line 120
    iget v5, v5, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 121
    .line 122
    invoke-static {v10, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_7

    .line 127
    .line 128
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 129
    .line 130
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 133
    .line 134
    iget v5, v5, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    .line 135
    .line 136
    invoke-static {v10, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move v9, v10

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    :goto_2
    move v9, v12

    .line 146
    :goto_3
    if-eqz v3, :cond_a

    .line 147
    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    :goto_4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-ge v11, v4, :cond_9

    .line 157
    .line 158
    invoke-virtual {v1, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const-string v6, "android.intent.extra.PENDING_INTENT"

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, Landroid/app/PendingIntent;

    .line 173
    .line 174
    const-string v7, "android.intent.extra.USER"

    .line 175
    .line 176
    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Landroid/os/UserHandle;

    .line 181
    .line 182
    if-eqz v6, :cond_8

    .line 183
    .line 184
    if-eqz v5, :cond_8

    .line 185
    .line 186
    iget-object v7, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 187
    .line 188
    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 189
    .line 190
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v7, v6}, Landroid/app/ActivityManagerInternal;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v17

    .line 202
    iget-object v6, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 203
    .line 204
    iget-object v13, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    move v15, v9

    .line 213
    move/from16 v16, p3

    .line 214
    .line 215
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v11, v11, 0x1

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    goto :goto_5

    .line 227
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    const-string v1, "Clip data must include the pending intent to launch and its associated user to launch for."

    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_a

    .line 239
    .line 240
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_a
    if-eqz v4, :cond_f

    .line 245
    .line 246
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 247
    .line 248
    if-eqz v2, :cond_e

    .line 249
    .line 250
    move v15, v11

    .line 251
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ge v15, v2, :cond_14

    .line 256
    .line 257
    invoke-virtual {v1, v15}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    invoke-virtual {v14}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v3, "android.intent.extra.shortcut.ID"

    .line 266
    .line 267
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    const-string v3, "android.intent.extra.USER"

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    move-object v13, v2

    .line 284
    check-cast v13, Landroid/os/UserHandle;

    .line 285
    .line 286
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_d

    .line 291
    .line 292
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_d

    .line 297
    .line 298
    if-eqz v13, :cond_d

    .line 299
    .line 300
    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 301
    .line 302
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 307
    .line 308
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    move-object/from16 v4, p4

    .line 317
    .line 318
    move/from16 v8, p3

    .line 319
    .line 320
    move v11, v9

    .line 321
    move/from16 v9, p2

    .line 322
    .line 323
    invoke-virtual/range {v2 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-eqz v2, :cond_c

    .line 328
    .line 329
    array-length v3, v2

    .line 330
    if-eqz v3, :cond_c

    .line 331
    .line 332
    if-ne v11, v12, :cond_b

    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    aget-object v4, v2, v3

    .line 336
    .line 337
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 338
    .line 339
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v18

    .line 349
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 350
    .line 351
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 352
    .line 353
    aget-object v17, v2, v3

    .line 354
    .line 355
    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    move-object v13, v4

    .line 360
    move-object v8, v14

    .line 361
    move v14, v2

    .line 362
    move v9, v15

    .line 363
    move v15, v11

    .line 364
    move/from16 v16, p3

    .line 365
    .line 366
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    goto :goto_7

    .line 371
    :cond_b
    move-object v8, v14

    .line 372
    move v9, v15

    .line 373
    iget-object v3, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 374
    .line 375
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 376
    .line 377
    const/4 v4, 0x0

    .line 378
    aget-object v6, v2, v4

    .line 379
    .line 380
    const/4 v7, 0x0

    .line 381
    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    move-object v2, v3

    .line 386
    move v3, v4

    .line 387
    move/from16 v4, p2

    .line 388
    .line 389
    move/from16 v5, p3

    .line 390
    .line 391
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    :goto_7
    invoke-virtual {v8, v2}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 396
    .line 397
    .line 398
    add-int/lit8 v15, v9, 0x1

    .line 399
    .line 400
    move v9, v11

    .line 401
    const/4 v11, 0x0

    .line 402
    goto/16 :goto_6

    .line 403
    .line 404
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 405
    .line 406
    const-string v1, "Invalid shortcut id"

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v0

    .line 412
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 413
    .line 414
    const-string v1, "Clip item must include the package name, shortcut id, and the user to launch for."

    .line 415
    .line 416
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    .line 421
    .line 422
    const-string v1, "Requires START_TASKS_FROM_RECENTS permission"

    .line 423
    .line 424
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_f
    move v11, v9

    .line 429
    if-eqz v2, :cond_14

    .line 430
    .line 431
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 432
    .line 433
    if-eqz v2, :cond_13

    .line 434
    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-lez v2, :cond_14

    .line 440
    .line 441
    const/4 v2, 0x0

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    const-string v3, "android.intent.extra.TASK_ID"

    .line 451
    .line 452
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eq v2, v8, :cond_12

    .line 457
    .line 458
    iget-object v3, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    .line 460
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 461
    .line 462
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 463
    .line 464
    .line 465
    monitor-enter v3

    .line 466
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 467
    .line 468
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 469
    .line 470
    invoke-virtual {v4, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    if-eqz v2, :cond_11

    .line 475
    .line 476
    const/4 v4, 0x0

    .line 477
    invoke-virtual {v2, v6, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 482
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 483
    .line 484
    .line 485
    if-eqz v4, :cond_10

    .line 486
    .line 487
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 488
    .line 489
    invoke-virtual {v1, v0}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_10
    iget-object v0, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 494
    .line 495
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 496
    .line 497
    iget-object v0, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 498
    .line 499
    const/16 v18, 0x0

    .line 500
    .line 501
    iget v14, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 502
    .line 503
    move v15, v11

    .line 504
    move/from16 v16, p3

    .line 505
    .line 506
    move-object/from16 v17, v0

    .line 507
    .line 508
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v1, v0}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 513
    .line 514
    .line 515
    :goto_8
    return-void

    .line 516
    :catchall_1
    move-exception v0

    .line 517
    goto :goto_9

    .line 518
    :cond_11
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 519
    .line 520
    const-string v1, "Invalid task id."

    .line 521
    .line 522
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :goto_9
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 532
    .line 533
    const-string v1, "Clip item must include the task id."

    .line 534
    .line 535
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v0

    .line 539
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    .line 540
    .line 541
    const-string v1, "Requires START_TASKS_FROM_RECENTS permission"

    .line 542
    .line 543
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_14
    :goto_a
    return-void

    .line 548
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 549
    .line 550
    const-string v1, "Unexpected number of items (none)"

    .line 551
    .line 552
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v0

    .line 556
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 557
    .line 558
    const-string v1, "Can not specify more than one of activity, shortcut, or task mime types"

    .line 559
    .line 560
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    throw v0
.end method

.method public validateDragFlags(II)V
    .locals 1

    .line 1
    and-int/lit16 v0, p1, 0x800

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string p1, "Requires START_TASKS_FROM_RECENTS permission"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    and-int/lit16 p1, p1, 0x4000

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    invoke-static {p2, p0}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(ILcom/android/server/wm/ActivityTaskManagerService;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 34
    .line 35
    const-string p1, "Caller is not the assistant"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_3
    :goto_1
    return-void
.end method

.method public final wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    new-instance v0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;-><init>(ILandroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;-><init>(ILandroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

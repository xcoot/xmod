.class public final Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mActivityType:I

.field public mAffinity:Ljava/lang/String;

.field public mAffinityIntent:Landroid/content/Intent;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoRemoveRecents:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCreatedByOrganizer:Z

.field public mDeferTaskAppear:Z

.field public mEffectiveUid:I

.field public mHasBeenVisible:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastDescription:Ljava/lang/String;

.field public mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mLastTimeMoved:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchFlags:I

.field public mMinHeight:I

.field public mMinWidth:I

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliateTaskId:I

.field public mOnTop:Z

.field public mOrigActivity:Landroid/content/ComponentName;

.field public mParent:Lcom/android/server/wm/WindowContainer;

.field public mPrevAffiliateTaskId:I

.field public mRealActivity:Landroid/content/ComponentName;

.field public mRealActivitySuspended:Z

.field public mRemoveWithTaskOrganizer:Z

.field public mResizeMode:I

.field public mRootAffinity:Ljava/lang/String;

.field public mRootWasReset:Z

.field public mSourceTask:Lcom/android/server/wm/Task;

.field public mStageType:I

.field public mSupportsPictureInPicture:Z

.field public mTaskAffiliation:I

.field public mTaskId:I

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/wm/Task;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    instance-of v4, v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    if-eqz v4, :cond_b

    .line 11
    .line 12
    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 13
    .line 14
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    iget-boolean v4, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    iput v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 29
    .line 30
    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "Root task="

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v3, " of activityType="

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p0, " already on display="

    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, ". Can\'t have multiple."

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    :goto_0
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 91
    .line 92
    iget-object v5, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    .line 94
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 95
    .line 96
    iget-boolean v7, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 97
    .line 98
    iget-boolean v8, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 99
    .line 100
    invoke-static {v4, v6, v7, v8}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_4

    .line 105
    .line 106
    iget-boolean v4, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 111
    .line 112
    const/4 v6, 0x6

    .line 113
    if-ne v4, v6, :cond_3

    .line 114
    .line 115
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    .line 116
    .line 117
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_3

    .line 122
    .line 123
    iget-object v4, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 124
    .line 125
    iget-boolean v4, v4, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 126
    .line 127
    if-eqz v4, :cond_3

    .line 128
    .line 129
    const-string v4, "ActivityTaskManager"

    .line 130
    .line 131
    const-string/jumbo v5, "validateRootTask: force support to create root stage task!"

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "Can\'t create root task for unsupported windowingMode="

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 148
    .line 149
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_4
    :goto_1
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 161
    .line 162
    const/4 v5, 0x2

    .line 163
    if-ne v4, v5, :cond_6

    .line 164
    .line 165
    iget v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 166
    .line 167
    if-ne v6, v3, :cond_5

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string v0, "Root task with pinned windowing mode cannot with non-standard activity type."

    .line 173
    .line 174
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    :goto_2
    if-ne v4, v5, :cond_7

    .line 179
    .line 180
    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 181
    .line 182
    if-eqz v4, :cond_7

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 185
    .line 186
    .line 187
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 188
    .line 189
    if-eqz v4, :cond_8

    .line 190
    .line 191
    iget v5, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 192
    .line 193
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    or-int/2addr v4, v5

    .line 198
    iput v4, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 199
    .line 200
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 201
    .line 202
    if-eqz v4, :cond_9

    .line 203
    .line 204
    move-object v4, v1

    .line 205
    goto :goto_3

    .line 206
    :cond_9
    iget v6, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 207
    .line 208
    iget v7, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 209
    .line 210
    iget-object v8, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 211
    .line 212
    iget-object v9, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    .line 213
    .line 214
    iget v10, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    .line 215
    .line 216
    const/4 v11, 0x0

    .line 217
    move-object v5, v0

    .line 218
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    :goto_3
    if-eqz v4, :cond_a

    .line 223
    .line 224
    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 225
    .line 226
    iput-object v4, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 227
    .line 228
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 233
    .line 234
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 235
    .line 236
    if-nez v0, :cond_c

    .line 237
    .line 238
    new-instance v0, Landroid/content/pm/ActivityInfo;

    .line 239
    .line 240
    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 244
    .line 245
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    .line 246
    .line 247
    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 248
    .line 249
    .line 250
    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 251
    .line 252
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 253
    .line 254
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    .line 256
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 257
    .line 258
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 263
    .line 264
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 265
    .line 266
    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 267
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v4

    .line 272
    iput-wide v4, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 273
    .line 274
    iput-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 277
    .line 278
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 279
    .line 280
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 281
    .line 282
    iput v4, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 283
    .line 284
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v4, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 287
    .line 288
    iget v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 289
    .line 290
    iput v4, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 297
    .line 298
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 299
    .line 300
    if-nez v0, :cond_d

    .line 301
    .line 302
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 303
    .line 304
    if-eqz v0, :cond_d

    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 311
    .line 312
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-boolean v4, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    .line 317
    .line 318
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 319
    .line 320
    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    .line 321
    .line 322
    if-eqz v4, :cond_e

    .line 323
    .line 324
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 325
    .line 326
    .line 327
    :cond_e
    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 328
    .line 329
    if-eqz v4, :cond_13

    .line 330
    .line 331
    instance-of v5, v4, Lcom/android/server/wm/Task;

    .line 332
    .line 333
    const/high16 v6, -0x80000000

    .line 334
    .line 335
    const v7, 0x7fffffff

    .line 336
    .line 337
    .line 338
    if-eqz v5, :cond_11

    .line 339
    .line 340
    check-cast v4, Lcom/android/server/wm/Task;

    .line 341
    .line 342
    iget-boolean v5, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 343
    .line 344
    if-eqz v5, :cond_f

    .line 345
    .line 346
    move v6, v7

    .line 347
    :cond_f
    iget-object v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .line 349
    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    .line 350
    .line 351
    and-int/lit16 v5, v5, 0x400

    .line 352
    .line 353
    if-eqz v5, :cond_10

    .line 354
    .line 355
    move v2, v3

    .line 356
    :cond_10
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v6, v0, v2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 360
    .line 361
    .line 362
    goto :goto_4

    .line 363
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    .line 364
    .line 365
    if-eqz v1, :cond_12

    .line 366
    .line 367
    move v6, v7

    .line 368
    :cond_12
    invoke-virtual {v4, v0, v6}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 369
    .line 370
    .line 371
    :cond_13
    :goto_4
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    .line 372
    .line 373
    if-eqz v1, :cond_14

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setStageType(I)V

    .line 376
    .line 377
    .line 378
    :cond_14
    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    .line 379
    .line 380
    if-eqz p0, :cond_15

    .line 381
    .line 382
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 383
    .line 384
    .line 385
    :cond_15
    return-object v0
.end method

.method public buildInner()Lcom/android/server/wm/Task;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v39, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    move-object/from16 v1, v39

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    .line 22
    .line 23
    iget-boolean v11, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    .line 24
    .line 25
    iget v12, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    .line 26
    .line 27
    iget v13, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v40, v1

    .line 32
    .line 33
    iget-wide v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    .line 34
    .line 35
    move-wide v15, v1

    .line 36
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    .line 37
    .line 38
    move/from16 v17, v1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 41
    .line 42
    move-object/from16 v18, v1

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 45
    .line 46
    move-object/from16 v19, v1

    .line 47
    .line 48
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    .line 49
    .line 50
    move/from16 v20, v1

    .line 51
    .line 52
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    .line 53
    .line 54
    move/from16 v21, v1

    .line 55
    .line 56
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    .line 57
    .line 58
    move/from16 v22, v1

    .line 59
    .line 60
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    .line 61
    .line 62
    move/from16 v23, v1

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    .line 65
    .line 66
    move-object/from16 v24, v1

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    .line 69
    .line 70
    move-object/from16 v25, v1

    .line 71
    .line 72
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    .line 73
    .line 74
    move/from16 v26, v1

    .line 75
    .line 76
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    .line 77
    .line 78
    move/from16 v27, v1

    .line 79
    .line 80
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    .line 81
    .line 82
    move/from16 v28, v1

    .line 83
    .line 84
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    .line 85
    .line 86
    move/from16 v29, v1

    .line 87
    .line 88
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    .line 89
    .line 90
    move/from16 v30, v1

    .line 91
    .line 92
    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    .line 93
    .line 94
    move/from16 v31, v1

    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 97
    .line 98
    move-object/from16 v32, v1

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 101
    .line 102
    move-object/from16 v33, v1

    .line 103
    .line 104
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 105
    .line 106
    move-object/from16 v34, v1

    .line 107
    .line 108
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    .line 109
    .line 110
    move/from16 v35, v1

    .line 111
    .line 112
    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    .line 113
    .line 114
    move-object/from16 v36, v1

    .line 115
    .line 116
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    .line 117
    .line 118
    move/from16 v37, v1

    .line 119
    .line 120
    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    .line 121
    .line 122
    move/from16 v38, v1

    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 125
    .line 126
    move-object/from16 v1, v40

    .line 127
    .line 128
    invoke-direct/range {v1 .. v38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    .line 129
    .line 130
    .line 131
    return-object v39
.end method

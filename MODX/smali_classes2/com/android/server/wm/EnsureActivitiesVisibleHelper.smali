.class public final Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAboveTop:Z

.field public mBehindFullyOccludedContainer:Z

.field public mNotifyClients:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final process(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iput-object v3, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v6

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v5

    .line 24
    :goto_0
    iput-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 25
    .line 26
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    xor-int/2addr v0, v6

    .line 33
    iput-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 34
    .line 35
    iput-boolean v2, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 36
    .line 37
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v8, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    iget-object v9, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    if-eq v9, v8, :cond_2

    .line 57
    .line 58
    iget-object v8, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object v8, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 68
    .line 69
    .line 70
    iput-object v7, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    .line 73
    .line 74
    const/16 v8, 0x65

    .line 75
    .line 76
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    :cond_3
    move v8, v6

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    move v8, v5

    .line 104
    :goto_1
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    sub-int/2addr v0, v6

    .line 111
    move v9, v0

    .line 112
    move-object v10, v7

    .line 113
    :goto_2
    if-ltz v9, :cond_29

    .line 114
    .line 115
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 116
    .line 117
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    if-eqz v11, :cond_a

    .line 128
    .line 129
    invoke-virtual {v11, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    if-eqz v12, :cond_a

    .line 134
    .line 135
    invoke-virtual {v11, v2, v3}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(ZLcom/android/server/wm/ActivityRecord;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 139
    .line 140
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 145
    .line 146
    .line 147
    move-result-object v13

    .line 148
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    if-eqz v12, :cond_5

    .line 153
    .line 154
    invoke-virtual {v11, v3}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_5

    .line 159
    .line 160
    move v12, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move v12, v5

    .line 163
    :goto_3
    or-int/2addr v0, v12

    .line 164
    iput-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 165
    .line 166
    iget-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 167
    .line 168
    if-eqz v0, :cond_6

    .line 169
    .line 170
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-ne v0, v11, :cond_6

    .line 177
    .line 178
    iput-boolean v5, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 179
    .line 180
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    goto/16 :goto_10

    .line 185
    .line 186
    :cond_7
    if-eqz v10, :cond_8

    .line 187
    .line 188
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_8

    .line 193
    .line 194
    invoke-virtual {v11, v3}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_28

    .line 199
    .line 200
    iget-object v0, v11, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_28

    .line 207
    .line 208
    iput-boolean v6, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 209
    .line 210
    goto/16 :goto_10

    .line 211
    .line 212
    :cond_8
    iget-object v0, v11, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 213
    .line 214
    if-eqz v0, :cond_28

    .line 215
    .line 216
    if-nez v10, :cond_9

    .line 217
    .line 218
    new-instance v10, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    :cond_9
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto/16 :goto_10

    .line 227
    .line 228
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    if-eqz v11, :cond_28

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 239
    .line 240
    if-ne v11, v0, :cond_b

    .line 241
    .line 242
    move v0, v6

    .line 243
    goto :goto_4

    .line 244
    :cond_b
    move v0, v5

    .line 245
    :goto_4
    iget-boolean v12, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 246
    .line 247
    if-eqz v12, :cond_c

    .line 248
    .line 249
    if-nez v0, :cond_c

    .line 250
    .line 251
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_10

    .line 255
    .line 256
    :cond_c
    iput-boolean v5, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 257
    .line 258
    iget-boolean v12, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 259
    .line 260
    if-nez v12, :cond_d

    .line 261
    .line 262
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 263
    .line 264
    iget-boolean v13, v12, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 265
    .line 266
    if-eqz v13, :cond_e

    .line 267
    .line 268
    iget-object v12, v12, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 269
    .line 270
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    iget-object v14, v12, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 275
    .line 276
    if-eqz v14, :cond_e

    .line 277
    .line 278
    new-instance v15, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;

    .line 279
    .line 280
    const/4 v7, 0x1

    .line 281
    invoke-direct {v15, v7, v13}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v15, v12, v5, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    if-eqz v7, :cond_e

    .line 289
    .line 290
    :cond_d
    iget-boolean v7, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 291
    .line 292
    if-eqz v7, :cond_f

    .line 293
    .line 294
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_f

    .line 299
    .line 300
    move v7, v6

    .line 301
    goto :goto_5

    .line 302
    :cond_f
    move v7, v5

    .line 303
    :goto_5
    iput-boolean v7, v11, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 304
    .line 305
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    iget-boolean v12, v11, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 310
    .line 311
    if-eqz v12, :cond_12

    .line 312
    .line 313
    invoke-virtual {v11, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 314
    .line 315
    .line 316
    move-result v12

    .line 317
    if-eqz v12, :cond_10

    .line 318
    .line 319
    iput-boolean v6, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_10
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 323
    .line 324
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 325
    .line 326
    invoke-virtual {v12, v11}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    if-nez v12, :cond_11

    .line 331
    .line 332
    iput-boolean v6, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_11
    iput-boolean v5, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_12
    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    .line 339
    .line 340
    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-eqz v12, :cond_14

    .line 345
    .line 346
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 347
    .line 348
    if-eqz v12, :cond_13

    .line 349
    .line 350
    invoke-virtual {v11, v5}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 351
    .line 352
    .line 353
    :cond_13
    iget-object v12, v11, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 354
    .line 355
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 356
    .line 357
    iget-object v12, v12, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 358
    .line 359
    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-nez v12, :cond_14

    .line 364
    .line 365
    iget-object v12, v11, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 366
    .line 367
    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 368
    .line 369
    invoke-virtual {v12, v11}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 370
    .line 371
    .line 372
    :cond_14
    :goto_6
    if-eqz v7, :cond_26

    .line 373
    .line 374
    iget-boolean v7, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 375
    .line 376
    if-eqz v7, :cond_15

    .line 377
    .line 378
    goto/16 :goto_10

    .line 379
    .line 380
    :cond_15
    iget-object v7, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 381
    .line 382
    if-eq v11, v7, :cond_19

    .line 383
    .line 384
    iget-boolean v7, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 385
    .line 386
    if-eqz v7, :cond_19

    .line 387
    .line 388
    if-nez v0, :cond_18

    .line 389
    .line 390
    iget-object v7, v11, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 391
    .line 392
    iget-object v12, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 393
    .line 394
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 395
    .line 396
    iget-boolean v12, v12, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 397
    .line 398
    if-nez v12, :cond_16

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_16
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 402
    .line 403
    .line 404
    move-result-object v12

    .line 405
    if-eqz v12, :cond_17

    .line 406
    .line 407
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    goto :goto_7

    .line 412
    :cond_17
    const/4 v12, 0x0

    .line 413
    :goto_7
    if-eqz v12, :cond_18

    .line 414
    .line 415
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    .line 416
    .line 417
    .line 418
    move-result v12

    .line 419
    invoke-virtual {v7, v12, v11}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(ILcom/android/server/wm/ActivityRecord;)V

    .line 420
    .line 421
    .line 422
    :cond_18
    :goto_8
    invoke-virtual {v11, v6}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 423
    .line 424
    .line 425
    :cond_19
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-nez v7, :cond_1d

    .line 430
    .line 431
    iget-object v7, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 432
    .line 433
    if-eqz v8, :cond_1a

    .line 434
    .line 435
    if-eqz v0, :cond_1a

    .line 436
    .line 437
    move v0, v6

    .line 438
    goto :goto_9

    .line 439
    :cond_1a
    move v0, v5

    .line 440
    :goto_9
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 441
    .line 442
    .line 443
    move-result v12

    .line 444
    if-eqz v12, :cond_1b

    .line 445
    .line 446
    iget-boolean v12, v11, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 447
    .line 448
    if-eqz v12, :cond_1c

    .line 449
    .line 450
    :cond_1b
    invoke-virtual {v11, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 451
    .line 452
    .line 453
    :cond_1c
    if-eq v11, v7, :cond_27

    .line 454
    .line 455
    iget-object v7, v4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 456
    .line 457
    invoke-virtual {v7, v11, v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_f

    .line 461
    .line 462
    :cond_1d
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_21

    .line 467
    .line 468
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 469
    .line 470
    if-eqz v0, :cond_1f

    .line 471
    .line 472
    iget-boolean v7, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 473
    .line 474
    if-eqz v7, :cond_1f

    .line 475
    .line 476
    if-eqz v0, :cond_1e

    .line 477
    .line 478
    const/4 v0, 0x0

    .line 479
    goto :goto_a

    .line 480
    :cond_1e
    move-object v0, v3

    .line 481
    :goto_a
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 482
    .line 483
    .line 484
    iput-boolean v5, v11, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 485
    .line 486
    :cond_1f
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 487
    .line 488
    .line 489
    iget-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 490
    .line 491
    if-eqz v0, :cond_20

    .line 492
    .line 493
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 494
    .line 495
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 496
    .line 497
    .line 498
    :cond_20
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_27

    .line 503
    .line 504
    iget-object v0, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 505
    .line 506
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 509
    .line 510
    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    .line 511
    .line 512
    if-eqz v0, :cond_27

    .line 513
    .line 514
    iget-boolean v7, v0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 515
    .line 516
    if-eqz v7, :cond_27

    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_f

    .line 522
    .line 523
    :cond_21
    iget-object v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 524
    .line 525
    iget-boolean v7, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    .line 526
    .line 527
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 528
    .line 529
    sget-object v13, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 530
    .line 531
    if-ne v12, v13, :cond_22

    .line 532
    .line 533
    iget-boolean v12, v11, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 534
    .line 535
    if-nez v12, :cond_27

    .line 536
    .line 537
    :cond_22
    if-ne v11, v0, :cond_23

    .line 538
    .line 539
    goto :goto_f

    .line 540
    :cond_23
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 541
    .line 542
    .line 543
    move-result-object v12

    .line 544
    :try_start_0
    iget-object v13, v12, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 545
    .line 546
    if-eqz v13, :cond_24

    .line 547
    .line 548
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 549
    .line 550
    invoke-virtual {v11, v13}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 551
    .line 552
    .line 553
    iget-object v12, v12, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_b

    .line 559
    :catch_0
    move-exception v0

    .line 560
    goto :goto_d

    .line 561
    :cond_24
    :goto_b
    invoke-virtual {v11, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 562
    .line 563
    .line 564
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 565
    .line 566
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    new-instance v13, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    .line 570
    .line 571
    const/4 v14, 0x0

    .line 572
    invoke-direct {v13, v14}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 573
    .line 574
    .line 575
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 576
    .line 577
    iget-object v15, v12, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    .line 578
    .line 579
    invoke-static {v13, v15, v14}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 580
    .line 581
    .line 582
    move-result-object v13

    .line 583
    iget-object v12, v12, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 584
    .line 585
    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 586
    .line 587
    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 588
    .line 589
    .line 590
    if-eqz v7, :cond_25

    .line 591
    .line 592
    iput-boolean v5, v11, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 593
    .line 594
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_c

    .line 598
    :cond_25
    iput-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 599
    .line 600
    :goto_c
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 601
    .line 602
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .line 606
    .line 607
    goto :goto_e

    .line 608
    :goto_d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    const-string v12, "Exception thrown making visible: "

    .line 611
    .line 612
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 616
    .line 617
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 618
    .line 619
    .line 620
    move-result-object v12

    .line 621
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    const-string v12, "ActivityTaskManager"

    .line 629
    .line 630
    invoke-static {v12, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    .line 632
    .line 633
    :goto_e
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 634
    .line 635
    .line 636
    goto :goto_f

    .line 637
    :cond_26
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    .line 638
    .line 639
    .line 640
    :cond_27
    :goto_f
    iget-boolean v0, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 641
    .line 642
    if-nez v0, :cond_28

    .line 643
    .line 644
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_28

    .line 649
    .line 650
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    if-eqz v0, :cond_28

    .line 655
    .line 656
    iput-boolean v6, v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 657
    .line 658
    :cond_28
    :goto_10
    add-int/lit8 v9, v9, -0x1

    .line 659
    .line 660
    const/4 v7, 0x0

    .line 661
    goto/16 :goto_2

    .line 662
    .line 663
    :cond_29
    return-void
.end method

.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-boolean p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/util/function/Consumer;

    .line 32
    .line 33
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    .line 34
    .line 35
    check-cast p1, Lcom/android/server/wm/Task;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_5

    .line 47
    :cond_2
    const/4 v1, 0x1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p0, :cond_5

    .line 50
    .line 51
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-int/2addr v3, v1

    .line 58
    :goto_1
    if-ltz v3, :cond_8

    .line 59
    .line 60
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {v4, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move v2, v1

    .line 90
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move v3, v2

    .line 94
    :goto_3
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ge v2, v4, :cond_8

    .line 101
    .line 102
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    invoke-virtual {v4, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move v3, v1

    .line 132
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_8
    :goto_5
    return-void

    .line 136
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p0, [I

    .line 141
    .line 142
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 143
    .line 144
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 145
    .line 146
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STATES_enabled:[Z

    .line 147
    .line 148
    const/4 v3, 0x1

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    if-eqz v1, :cond_f

    .line 152
    .line 153
    if-nez v0, :cond_9

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    aget-boolean v1, v2, v3

    .line 162
    .line 163
    if-eqz v1, :cond_e

    .line 164
    .line 165
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 172
    .line 173
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    const-wide v7, -0x696dabdd061ec692L    # -5.986232381718657E-200

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-virtual {v1, v6}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual {v1, v6}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v1, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    .line 223
    .line 224
    if-eqz v1, :cond_c

    .line 225
    .line 226
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 227
    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    .line 231
    .line 232
    if-eqz v1, :cond_c

    .line 233
    .line 234
    :cond_b
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 235
    .line 236
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 237
    .line 238
    :cond_c
    aget-boolean v1, v2, v3

    .line 239
    .line 240
    if-eqz v1, :cond_d

    .line 241
    .line 242
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 249
    .line 250
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    const-wide v7, -0x759601d600bccb53L

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    const/4 v9, 0x0

    .line 260
    const/4 v10, 0x0

    .line 261
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_d
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 265
    .line 266
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 267
    .line 268
    const-string/jumbo v6, "sleep"

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v5, v6, v1, v3}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    .line 272
    .line 273
    .line 274
    :cond_e
    :goto_6
    move v1, v4

    .line 275
    goto :goto_7

    .line 276
    :cond_f
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 277
    .line 278
    if-eqz v1, :cond_10

    .line 279
    .line 280
    aget-boolean v6, v2, v3

    .line 281
    .line 282
    if-eqz v6, :cond_e

    .line 283
    .line 284
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 289
    .line 290
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    const-wide v7, -0x1470bd70b5a2c4cdL    # -1.2846237711164552E210

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v10, 0x0

    .line 301
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_10
    move v1, v3

    .line 306
    :goto_7
    if-nez v0, :cond_13

    .line 307
    .line 308
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 309
    .line 310
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    sub-int/2addr v0, v3

    .line 317
    :goto_8
    if-ltz v0, :cond_13

    .line 318
    .line 319
    iget-object v6, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 320
    .line 321
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 328
    .line 329
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    if-ne v6, p1, :cond_12

    .line 334
    .line 335
    aget-boolean v0, v2, v3

    .line 336
    .line 337
    if-eqz v0, :cond_11

    .line 338
    .line 339
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    int-to-long v0, v0

    .line 348
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 349
    .line 350
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    const/4 v9, 0x1

    .line 359
    const/4 v10, 0x0

    .line 360
    const-wide v7, -0x255f84253da9ca06L    # -3.570636829513725E128

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_11
    iget-object v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 371
    .line 372
    .line 373
    move v1, v4

    .line 374
    goto :goto_9

    .line 375
    :cond_12
    add-int/lit8 v0, v0, -0x1

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_13
    :goto_9
    if-eqz v1, :cond_14

    .line 379
    .line 380
    invoke-virtual {p1, v3, v5}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(ZLcom/android/server/wm/ActivityRecord;)V

    .line 381
    .line 382
    .line 383
    :cond_14
    if-nez v1, :cond_15

    .line 384
    .line 385
    aget p1, p0, v4

    .line 386
    .line 387
    add-int/2addr p1, v3

    .line 388
    aput p1, p0, v4

    .line 389
    .line 390
    :cond_15
    return-void

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 394
    .line 395
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;->f$1:Z

    .line 396
    .line 397
    check-cast p1, Lcom/android/server/wm/Task;

    .line 398
    .line 399
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(ZLcom/android/server/wm/ActivityRecord;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

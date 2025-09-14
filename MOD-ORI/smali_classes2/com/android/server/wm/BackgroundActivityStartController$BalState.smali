.class Lcom/android/server/wm/BackgroundActivityStartController$BalState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppSwitchState:I

.field public final mAutoOptInCaller:Z

.field public final mAutoOptInReason:Ljava/lang/String;

.field public final mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

.field public final mBalAllowedByPiCreatorWithHardening:Landroid/app/BackgroundStartPrivileges;

.field public final mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

.field public final mCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCallingUidHasAnyVisibleWindow:Z

.field public final mCallingUidProcState:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mForcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsCallForResult:Z

.field public final mIsCallingUidPersistentSystemProcess:Z

.field public final mIsRealCallingUidPersistentSystemProcess:Z

.field public final mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public final mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mRealCallingPackage:Ljava/lang/String;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mRealCallingUidHasAnyVisibleWindow:Z

.field public final mRealCallingUidProcState:I

.field public mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v7, p8

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 18
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 23
    .line 24
    iput v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 25
    .line 26
    move/from16 v8, p3

    .line 27
    .line 28
    iput v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    .line 29
    .line 30
    iput v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 31
    .line 32
    iput v5, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    .line 33
    .line 34
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    move-object/from16 v8, p9

    .line 37
    .line 38
    iput-object v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mForcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 39
    .line 40
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 41
    .line 42
    move-object/from16 v8, p11

    .line 43
    .line 44
    iput-object v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v8, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    .line 48
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 49
    .line 50
    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const-string v9, ", pid="

    .line 55
    .line 56
    const-string v10, "callingPackage for (uid="

    .line 57
    .line 58
    const-string v11, "ActivityTaskManager"

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v14, 0x1

    .line 62
    if-eqz v8, :cond_2

    .line 63
    .line 64
    iget v15, v8, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 65
    .line 66
    if-eq v15, v4, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    move-object v15, v8

    .line 74
    check-cast v15, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-eq v13, v14, :cond_1

    .line 81
    .line 82
    const-string v13, ") is ambiguous: "

    .line 83
    .line 84
    invoke-static {v4, v5, v10, v9, v13}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :goto_0
    const/4 v8, 0x0

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    :goto_1
    const-string v8, ") has no WPC"

    .line 108
    .line 109
    invoke-static {v4, v5, v10, v9, v8}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_2
    iput-object v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz p10, :cond_3

    .line 120
    .line 121
    move v9, v14

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    move v9, v12

    .line 124
    :goto_3
    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    .line 125
    .line 126
    move-object/from16 v10, p12

    .line 127
    .line 128
    iput-object v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 129
    .line 130
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    invoke-static {}, Lcom/android/window/flags/Flags;->balImproveRealCallerVisibilityCheck()Z

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    const/4 v14, -0x1

    .line 143
    if-nez v15, :cond_4

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    iput-object v15, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 147
    .line 148
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    if-nez v7, :cond_5

    .line 152
    .line 153
    const-string/jumbo v7, "notPendingIntent"

    .line 154
    .line 155
    .line 156
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 157
    .line 158
    const/4 v7, 0x1

    .line 159
    iput-boolean v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    if-eqz v9, :cond_6

    .line 163
    .line 164
    const-string v7, "callForResult"

    .line 165
    .line 166
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 167
    .line 168
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    if-ne v2, v4, :cond_7

    .line 172
    .line 173
    invoke-static {}, Lcom/android/window/flags/Flags;->balRequireOptInSameUid()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_7

    .line 178
    .line 179
    const-string/jumbo v7, "sameUid"

    .line 180
    .line 181
    .line 182
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 183
    .line 184
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    if-ne v13, v14, :cond_8

    .line 188
    .line 189
    const-string v7, "compatibility"

    .line 190
    .line 191
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 192
    .line 193
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_8
    const/4 v7, 0x0

    .line 197
    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 198
    .line 199
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 200
    .line 201
    :goto_4
    iget-boolean v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 202
    .line 203
    const/4 v9, 0x2

    .line 204
    if-eqz v7, :cond_a

    .line 205
    .line 206
    if-ne v11, v9, :cond_9

    .line 207
    .line 208
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_9
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 212
    .line 213
    :goto_5
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 214
    .line 215
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreatorWithHardening:Landroid/app/BackgroundStartPrivileges;

    .line 216
    .line 217
    goto/16 :goto_a

    .line 218
    .line 219
    :cond_a
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_d

    .line 224
    .line 225
    const/4 v15, 0x1

    .line 226
    if-eq v7, v15, :cond_c

    .line 227
    .line 228
    if-ne v7, v9, :cond_b

    .line 229
    .line 230
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 234
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v2, "unsupported BackgroundActivityStartMode: "

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_c
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_d
    if-eqz v2, :cond_12

    .line 262
    .line 263
    const/16 v7, 0x3e8

    .line 264
    .line 265
    if-ne v2, v7, :cond_e

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_e
    const-wide/32 v14, 0x11abe8e7

    .line 269
    .line 270
    .line 271
    if-eqz v3, :cond_10

    .line 272
    .line 273
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    invoke-static {v14, v15, v3, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_f

    .line 282
    .line 283
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_f
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_10
    invoke-static {v14, v15, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_11

    .line 294
    .line 295
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_11
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :cond_12
    :goto_6
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 302
    .line 303
    :goto_7
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreatorWithHardening:Landroid/app/BackgroundStartPrivileges;

    .line 304
    .line 305
    if-ne v11, v9, :cond_13

    .line 306
    .line 307
    sget-object v7, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_13
    sget-object v7, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 311
    .line 312
    :goto_8
    invoke-static {}, Lcom/android/window/flags/Flags;->balRequireOptInByPendingIntentCreator()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_14

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_14
    move-object v3, v7

    .line 320
    :goto_9
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 321
    .line 322
    :goto_a
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 323
    .line 324
    if-eqz v3, :cond_16

    .line 325
    .line 326
    if-ne v13, v9, :cond_15

    .line 327
    .line 328
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_15
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 332
    .line 333
    :goto_b
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_16
    sget v3, Lcom/android/server/am/PendingIntentRecord;->$r8$clinit:I

    .line 337
    .line 338
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    if-nez v3, :cond_17

    .line 343
    .line 344
    invoke-static {v4, v8}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    goto :goto_c

    .line 349
    :cond_17
    const-string v7, "android.pendingIntent.backgroundActivityAllowed"

    .line 350
    .line 351
    invoke-virtual {v3, v7, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_19

    .line 356
    .line 357
    if-eq v3, v9, :cond_18

    .line 358
    .line 359
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    .line 360
    .line 361
    goto :goto_c

    .line 362
    :cond_18
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_19
    invoke-static {v4, v8}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    :goto_c
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 370
    .line 371
    :goto_d
    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 372
    .line 373
    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 374
    .line 375
    iput v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 376
    .line 377
    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 378
    .line 379
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 380
    .line 381
    monitor-enter v3

    .line 382
    :try_start_0
    iget-object v7, v3, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 383
    .line 384
    const/16 v8, 0x14

    .line 385
    .line 386
    invoke-virtual {v7, v2, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 387
    .line 388
    .line 389
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 390
    monitor-exit v3

    .line 391
    iput v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    .line 392
    .line 393
    const/4 v3, 0x1

    .line 394
    if-gt v7, v3, :cond_1a

    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    goto :goto_e

    .line 398
    :cond_1a
    move v3, v12

    .line 399
    :goto_e
    iput-boolean v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    .line 400
    .line 401
    iget-object v9, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 402
    .line 403
    invoke-virtual {v9, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasAnyVisibleWindow:Z

    .line 408
    .line 409
    const/4 v10, -0x1

    .line 410
    if-ne v4, v10, :cond_1b

    .line 411
    .line 412
    iput v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 413
    .line 414
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 415
    .line 416
    const/4 v1, 0x0

    .line 417
    iput-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 418
    .line 419
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 420
    .line 421
    goto :goto_f

    .line 422
    :cond_1b
    if-ne v2, v4, :cond_1d

    .line 423
    .line 424
    iput v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 425
    .line 426
    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 427
    .line 428
    if-nez v6, :cond_1c

    .line 429
    .line 430
    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 431
    .line 432
    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    move-object v6, v1

    .line 437
    :cond_1c
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 438
    .line 439
    iput-boolean v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 440
    .line 441
    goto :goto_f

    .line 442
    :cond_1d
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 443
    .line 444
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 445
    .line 446
    monitor-enter v2

    .line 447
    :try_start_1
    iget-object v3, v2, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    .line 448
    .line 449
    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 450
    .line 451
    .line 452
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    monitor-exit v2

    .line 454
    iput v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 455
    .line 456
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 457
    .line 458
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 463
    .line 464
    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 465
    .line 466
    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    iput-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 471
    .line 472
    const/4 v1, 0x1

    .line 473
    if-gt v3, v1, :cond_1e

    .line 474
    .line 475
    move v12, v1

    .line 476
    :cond_1e
    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 477
    .line 478
    :goto_f
    return-void

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    monitor-exit v2

    .line 481
    throw v0

    .line 482
    :catchall_1
    move-exception v0

    .line 483
    monitor-exit v3

    .line 484
    throw v0
.end method


# virtual methods
.method public final getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    const-string/jumbo p0, "root[debugOnly]"

    .line 7
    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    const-string/jumbo p0, "uid="

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_2
    const-string p1, "[debugOnly]"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    const-string v1, "[callingPackage: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 12
    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "; callingPackageTargetSdk: "

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v3, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "; callingUid: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, "; callingPid: "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "; appSwitchState: "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "; callingUidHasAnyVisibleWindow: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasAnyVisibleWindow:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "; callingUidProcState: "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-class v1, Landroid/app/ActivityManager;

    .line 80
    .line 81
    const-string v2, "PROCESS_STATE_"

    .line 82
    .line 83
    iget v4, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    .line 84
    .line 85
    invoke-static {v1, v2, v4}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "; isCallingUidPersistentSystemProcess: "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "; forcedBalByPiSender: "

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mForcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "; intent: "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, "; callerApp: "

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_0

    .line 133
    .line 134
    const-string v4, "; inVisibleTask: "

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_0
    const-string v1, "; balAllowedByPiCreator: "

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "; balAllowedByPiCreatorWithHardening: "

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreatorWithHardening:Landroid/app/BackgroundStartPrivileges;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, "; resultIfPiCreatorAllowsBal: "

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, "; hasRealCaller: "

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    const/4 v4, 0x1

    .line 183
    const/4 v5, -0x1

    .line 184
    iget v6, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 185
    .line 186
    if-eq v6, v5, :cond_1

    .line 187
    .line 188
    move v7, v4

    .line 189
    goto :goto_0

    .line 190
    :cond_1
    move v7, v1

    .line 191
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v7, "; isCallForResult: "

    .line 195
    .line 196
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-boolean v7, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    .line 200
    .line 201
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v7, "; isPendingIntent: "

    .line 205
    .line 206
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v7, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 210
    .line 211
    if-eqz v7, :cond_2

    .line 212
    .line 213
    if-eq v6, v5, :cond_2

    .line 214
    .line 215
    move v1, v4

    .line 216
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, "; autoOptInReason: "

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    if-eq v6, v5, :cond_4

    .line 230
    .line 231
    const-string v1, "; realCallingPackage: "

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v4, "; realCallingPackageTargetSdk: "

    .line 246
    .line 247
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v1, "; realCallingUid: "

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, "; realCallingPid: "

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v1, "; realCallingUidHasAnyVisibleWindow: "

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v1, "; realCallingUidProcState: "

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-class v1, Landroid/app/ActivityManager;

    .line 291
    .line 292
    iget v3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 293
    .line 294
    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v1, "; isRealCallingUidPersistentSystemProcess: "

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, "; originatingPendingIntent: "

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v1, "; realCallerApp: "

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    if-eqz v1, :cond_3

    .line 330
    .line 331
    const-string v2, "; realInVisibleTask: "

    .line 332
    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    :cond_3
    const-string v1, "; balAllowedByPiSender: "

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v1, "; resultIfPiSenderAllowsBal: "

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 359
    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    :cond_4
    const-string p0, "; balImproveRealCallerVisibilityCheck: "

    .line 364
    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-static {}, Lcom/android/window/flags/Flags;->balImproveRealCallerVisibilityCheck()Z

    .line 369
    .line 370
    .line 371
    move-result p0

    .line 372
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string p0, "; balRequireOptInByPendingIntentCreator: "

    .line 376
    .line 377
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-static {}, Lcom/android/window/flags/Flags;->balRequireOptInByPendingIntentCreator()Z

    .line 381
    .line 382
    .line 383
    move-result p0

    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string p0, "; balRequireOptInSameUid: "

    .line 388
    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-static {}, Lcom/android/window/flags/Flags;->balRequireOptInSameUid()Z

    .line 393
    .line 394
    .line 395
    move-result p0

    .line 396
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string p0, "; balRespectAppSwitchStateWhenCheckBoundByForegroundUid: "

    .line 400
    .line 401
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-static {}, Lcom/android/window/flags/Flags;->balRespectAppSwitchStateWhenCheckBoundByForegroundUid()Z

    .line 405
    .line 406
    .line 407
    move-result p0

    .line 408
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string p0, "; balDontBringExistingBackgroundTaskStackToFg: "

    .line 412
    .line 413
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/android/window/flags/Flags;->balDontBringExistingBackgroundTaskStackToFg()Z

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string p0, "]"

    .line 424
    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    return-object p0
.end method

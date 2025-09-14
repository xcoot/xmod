.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aget-boolean v1, v1, v2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 22
    .line 23
    int-to-long v4, v4

    .line 24
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v8, "fromTouch= false isVisibleRequestedOrAdding="

    .line 31
    .line 32
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v8, " mViewVisibility="

    .line 43
    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v8, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v8, " mRemoveOnExit="

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v8, " flags="

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, " appWindowsAreFocusable="

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    invoke-virtual {v8, v3}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move v8, v3

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    move v8, v2

    .line 93
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v8, " canReceiveTouchInput="

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v8, " displayIsOnTop="

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v8, " displayIsTrusted="

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 134
    .line 135
    invoke-virtual {v8}, Landroid/view/Display;->isTrusted()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v8, " transitShouldKeepFocus="

    .line 143
    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 148
    .line 149
    if-eqz v8, :cond_2

    .line 150
    .line 151
    iget-object v9, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 152
    .line 153
    invoke-virtual {v9, v8}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-eqz v8, :cond_2

    .line 158
    .line 159
    move v8, v2

    .line 160
    goto :goto_2

    .line 161
    :cond_2
    move v8, v3

    .line 162
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 174
    .line 175
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    filled-new-array {v1, v4, v5, v7}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    const-wide v9, 0x13e01f7bb62a3decL    # 5.986575007244763E-213

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    const/16 v11, 0x34

    .line 193
    .line 194
    const/4 v12, 0x0

    .line 195
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 203
    .line 204
    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    .line 205
    .line 206
    const v4, 0x8000

    .line 207
    .line 208
    .line 209
    and-int/2addr v1, v4

    .line 210
    if-eqz v1, :cond_5

    .line 211
    .line 212
    const-string p0, "SPEG"

    .line 213
    .line 214
    const-string p1, "Do not update focused window"

    .line 215
    .line 216
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    :cond_4
    :goto_3
    move v2, v3

    .line 220
    goto/16 :goto_6

    .line 221
    .line 222
    :cond_5
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_6

    .line 227
    .line 228
    :goto_4
    goto :goto_3

    .line 229
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 230
    .line 231
    if-eqz v1, :cond_7

    .line 232
    .line 233
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 234
    .line 235
    if-eqz v1, :cond_7

    .line 236
    .line 237
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 238
    .line 239
    if-eqz v1, :cond_4

    .line 240
    .line 241
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_7

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_7
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 253
    .line 254
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 255
    .line 256
    const/16 v4, 0x7dc

    .line 257
    .line 258
    if-ne v1, v4, :cond_8

    .line 259
    .line 260
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 261
    .line 262
    if-eqz v1, :cond_8

    .line 263
    .line 264
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_8

    .line 273
    .line 274
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_8

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 284
    .line 285
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 286
    .line 287
    if-nez v0, :cond_a

    .line 288
    .line 289
    aget-boolean v0, v4, v2

    .line 290
    .line 291
    if-eqz v0, :cond_9

    .line 292
    .line 293
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 298
    .line 299
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    const/4 v7, 0x0

    .line 304
    const-wide v4, -0x1bbdc48e43fccda6L    # -9.018756768844263E174

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    const/4 v6, 0x0

    .line 310
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 314
    .line 315
    goto/16 :goto_6

    .line 316
    .line 317
    :cond_a
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-nez v5, :cond_c

    .line 322
    .line 323
    aget-boolean v0, v4, v2

    .line 324
    .line 325
    if-eqz v0, :cond_b

    .line 326
    .line 327
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 332
    .line 333
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    const/4 v7, 0x0

    .line 338
    const-wide v4, -0x150002912957ca17L    # -2.567620893806859E207

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    const/4 v6, 0x0

    .line 344
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 348
    .line 349
    goto/16 :goto_6

    .line 350
    .line 351
    :cond_c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_FLEX_PANEL:Z

    .line 352
    .line 353
    if-eqz v5, :cond_e

    .line 354
    .line 355
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 356
    .line 357
    if-eqz v5, :cond_e

    .line 358
    .line 359
    aget-boolean v0, v4, v2

    .line 360
    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 368
    .line 369
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    const/4 v7, 0x0

    .line 374
    const-wide v4, -0x700a5a8a118ac23cL    # -8.714202288878394E-232

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    const/4 v6, 0x0

    .line 380
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 384
    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :cond_e
    if-eqz v1, :cond_f

    .line 388
    .line 389
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 390
    .line 391
    if-eqz v5, :cond_f

    .line 392
    .line 393
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 394
    .line 395
    if-eq v1, v5, :cond_f

    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_f
    const/4 v5, 0x0

    .line 400
    if-eqz v1, :cond_12

    .line 401
    .line 402
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 403
    .line 404
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 405
    .line 406
    const/4 v7, 0x3

    .line 407
    if-eq v6, v7, :cond_12

    .line 408
    .line 409
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    if-lez v6, :cond_11

    .line 414
    .line 415
    aget-boolean p1, v4, v2

    .line 416
    .line 417
    if-eqz p1, :cond_10

    .line 418
    .line 419
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 424
    .line 425
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    const/4 v10, 0x0

    .line 430
    const-wide v7, 0x3c30d7ddea7380fL

    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    const/4 v9, 0x0

    .line 436
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_10
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 440
    .line 441
    goto/16 :goto_6

    .line 442
    .line 443
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    if-eqz v6, :cond_12

    .line 448
    .line 449
    iget-boolean v6, v6, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 450
    .line 451
    if-eqz v6, :cond_12

    .line 452
    .line 453
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 454
    .line 455
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 456
    .line 457
    if-ne v6, v7, :cond_12

    .line 458
    .line 459
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    if-eq v6, v7, :cond_12

    .line 468
    .line 469
    goto/16 :goto_4

    .line 470
    .line 471
    :cond_12
    if-eqz v1, :cond_13

    .line 472
    .line 473
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 474
    .line 475
    goto :goto_5

    .line 476
    :cond_13
    move-object v6, v5

    .line 477
    :goto_5
    if-eqz v6, :cond_16

    .line 478
    .line 479
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    if-eqz v7, :cond_16

    .line 484
    .line 485
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-nez v7, :cond_14

    .line 490
    .line 491
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_ORDERING:Z

    .line 492
    .line 493
    if-eqz v7, :cond_16

    .line 494
    .line 495
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    if-eqz v7, :cond_16

    .line 500
    .line 501
    :cond_14
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-lez v0, :cond_16

    .line 506
    .line 507
    aget-boolean p1, v4, v2

    .line 508
    .line 509
    if-eqz p1, :cond_15

    .line 510
    .line 511
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 516
    .line 517
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v11

    .line 521
    const/4 v10, 0x0

    .line 522
    const-wide v7, 0x48d6d47c230838f1L    # 7.95510063381841E42

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    const/4 v9, 0x0

    .line 528
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    :cond_15
    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 532
    .line 533
    goto/16 :goto_3

    .line 534
    .line 535
    :cond_16
    if-eqz v6, :cond_17

    .line 536
    .line 537
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    if-eqz v0, :cond_17

    .line 542
    .line 543
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_17

    .line 548
    .line 549
    goto/16 :goto_4

    .line 550
    .line 551
    :cond_17
    if-eqz v6, :cond_19

    .line 552
    .line 553
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-eqz v0, :cond_19

    .line 558
    .line 559
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 560
    .line 561
    iget v1, v6, Lcom/android/server/wm/Task;->mTaskViewTaskOrganizerTaskId:I

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    if-eqz v0, :cond_19

    .line 568
    .line 569
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 570
    .line 571
    const/4 v5, 0x2

    .line 572
    invoke-direct {v1, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    if-eqz v1, :cond_18

    .line 580
    .line 581
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 582
    .line 583
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    .line 584
    .line 585
    invoke-virtual {v1, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-eqz v1, :cond_18

    .line 590
    .line 591
    goto/16 :goto_4

    .line 592
    .line 593
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-eqz v0, :cond_19

    .line 598
    .line 599
    goto/16 :goto_4

    .line 600
    .line 601
    :cond_19
    aget-boolean v0, v4, v2

    .line 602
    .line 603
    if-eqz v0, :cond_1a

    .line 604
    .line 605
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 610
    .line 611
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    const/4 v7, 0x0

    .line 616
    const-wide v4, 0x2a8ea20a22d9383fL    # 1.068514868993723E-103

    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    const/4 v6, 0x0

    .line 622
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    :cond_1a
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 626
    .line 627
    :goto_6
    return v2
.end method

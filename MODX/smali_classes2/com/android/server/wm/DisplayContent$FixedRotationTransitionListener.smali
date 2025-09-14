.class public final Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

.field public mRecentsWillBeTop:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppTransitionCancelledLocked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_12

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    if-eq p1, v0, :cond_12

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_8

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mAnimatingRecents:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->mRecentsWillBeTop:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    iget-object p0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 50
    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_0
    return-void

    .line 57
    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    if-eqz v2, :cond_d

    .line 61
    .line 62
    if-eq v0, p1, :cond_5

    .line 63
    .line 64
    iget-object v4, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 65
    .line 66
    if-ne v2, v4, :cond_d

    .line 67
    .line 68
    :cond_5
    iget-object p0, v2, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    sub-int/2addr p0, v3

    .line 75
    :goto_1
    if-ltz p0, :cond_11

    .line 76
    .line 77
    iget-object p1, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/android/server/wm/WindowToken;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 92
    .line 93
    if-eqz v2, :cond_7

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 98
    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 108
    .line 109
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    sub-int/2addr v4, v3

    .line 116
    :goto_2
    if-ltz v4, :cond_7

    .line 117
    .line 118
    iget-object v5, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lcom/android/server/wm/Transition;

    .line 125
    .line 126
    iget v6, v5, Lcom/android/server/wm/Transition;->mType:I

    .line 127
    .line 128
    const/16 v7, 0xa

    .line 129
    .line 130
    if-ne v6, v7, :cond_6

    .line 131
    .line 132
    invoke-virtual {v5, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_6

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    if-eqz p1, :cond_c

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_c

    .line 150
    .line 151
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_c

    .line 158
    .line 159
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 160
    .line 161
    if-eqz v2, :cond_b

    .line 162
    .line 163
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 164
    .line 165
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_b

    .line 170
    .line 171
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 172
    .line 173
    iget-object v4, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    sub-int/2addr v4, v3

    .line 180
    :goto_3
    if-ltz v4, :cond_a

    .line 181
    .line 182
    iget-object v5, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lcom/android/server/wm/Transition;

    .line 189
    .line 190
    iget-object v6, v5, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 191
    .line 192
    iget-object v6, v6, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 193
    .line 194
    if-eqz v6, :cond_8

    .line 195
    .line 196
    invoke-virtual {v6}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_8

    .line 205
    .line 206
    iget v6, v5, Lcom/android/server/wm/Transition;->mType:I

    .line 207
    .line 208
    const/16 v7, 0x3e8

    .line 209
    .line 210
    if-lt v6, v7, :cond_8

    .line 211
    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v7, "continue inPlayingTransition checkCustomTransition playing="

    .line 215
    .line 216
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    const-string v6, "TransitionController"

    .line 227
    .line 228
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_8
    invoke-virtual {v5, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-eqz v5, :cond_9

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v4, "continue customTransition isInTransition r="

    .line 245
    .line 246
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    const-string v2, "WindowManager"

    .line 257
    .line 258
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_b
    :goto_5
    return-void

    .line 263
    :cond_c
    :goto_6
    add-int/lit8 p0, p0, -0x1

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_d
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 270
    .line 271
    if-eq v2, v0, :cond_f

    .line 272
    .line 273
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 274
    .line 275
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 276
    .line 277
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 278
    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    :cond_e
    return-void

    .line 288
    :cond_f
    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 289
    .line 290
    const/4 v0, 0x7

    .line 291
    invoke-direct {p1, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    if-eqz p1, :cond_10

    .line 299
    .line 300
    return-void

    .line 301
    :cond_10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 302
    .line 303
    if-eqz p1, :cond_11

    .line 304
    .line 305
    iget-object p1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 306
    .line 307
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 308
    .line 309
    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 310
    .line 311
    if-nez p1, :cond_11

    .line 312
    .line 313
    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    .line 314
    .line 315
    const/4 v0, 0x2

    .line 316
    invoke-direct {p1, v0, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    if-eqz p0, :cond_11

    .line 324
    .line 325
    return-void

    .line 326
    :cond_11
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 327
    .line 328
    .line 329
    :cond_12
    :goto_8
    return-void
.end method

.method public final onAppTransitionTimeoutLocked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

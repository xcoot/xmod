.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public mAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field public mAppWindowDrawn:Z

.field public final mBounds:Landroid/graphics/Rect;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public final mIsOpen:Z

.field public final mSwitchType:I

.field public final mTarget:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 19
    .line 20
    iput-boolean p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mIsOpen:Z

    .line 21
    .line 22
    iput p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, "BackWindowAnimationAdaptor mCapturedLeash="

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_1
    const/4 v4, 0x1

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    if-nez v1, :cond_5

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 77
    .line 78
    :cond_6
    if-eqz v3, :cond_9

    .line 79
    .line 80
    if-nez v1, :cond_7

    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_7
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_8

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    iget-object v6, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/4 v8, 0x0

    .line 101
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :goto_3
    move-object v12, v5

    .line 110
    goto :goto_4

    .line 111
    :cond_8
    new-instance v5, Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_4
    iget-boolean v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mIsOpen:Z

    .line 118
    .line 119
    xor-int/lit8 v8, v5, 0x1

    .line 120
    .line 121
    new-instance v5, Landroid/view/RemoteAnimationTarget;

    .line 122
    .line 123
    iget v7, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 124
    .line 125
    iget-object v9, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    xor-int/lit8 v10, v6, 0x1

    .line 132
    .line 133
    new-instance v4, Landroid/graphics/Rect;

    .line 134
    .line 135
    move-object v11, v4

    .line 136
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    new-instance v4, Landroid/graphics/Point;

    .line 144
    .line 145
    move-object v14, v4

    .line 146
    iget-object v6, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 147
    .line 148
    iget v15, v6, Landroid/graphics/Rect;->left:I

    .line 149
    .line 150
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 151
    .line 152
    invoke-direct {v4, v15, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 153
    .line 154
    .line 155
    iget-object v4, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mBounds:Landroid/graphics/Rect;

    .line 156
    .line 157
    move-object v15, v4

    .line 158
    move-object/from16 v16, v4

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 161
    .line 162
    .line 163
    move-result-object v17

    .line 164
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v21

    .line 168
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    .line 169
    .line 170
    .line 171
    move-result v22

    .line 172
    const/16 v19, 0x0

    .line 173
    .line 174
    const/16 v20, 0x0

    .line 175
    .line 176
    const/16 v18, 0x1

    .line 177
    .line 178
    move-object v6, v5

    .line 179
    invoke-direct/range {v6 .. v22}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 180
    .line 181
    .line 182
    iput-object v5, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 183
    .line 184
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_PREDICTIVE_BACK_ANIM:Z

    .line 185
    .line 186
    if-eqz v3, :cond_a

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v5, v1}, Landroid/view/RemoteAnimationTarget;->setDisplayId(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v3, "createRemoteAnimationTarget fail "

    .line 199
    .line 200
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v3, "CoreBackPreview"

    .line 211
    .line 212
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_a
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_b

    .line 220
    .line 221
    iget v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mSwitchType:I

    .line 222
    .line 223
    const/4 v3, 0x3

    .line 224
    if-ne v2, v3, :cond_b

    .line 225
    .line 226
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 227
    .line 228
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 229
    .line 230
    new-instance v3, Landroid/graphics/Point;

    .line 231
    .line 232
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 233
    .line 234
    .line 235
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 238
    .line 239
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 243
    .line 244
    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 245
    .line 246
    int-to-float v1, v1

    .line 247
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 248
    .line 249
    int-to-float v2, v2

    .line 250
    move-object/from16 v3, p2

    .line 251
    .line 252
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 253
    .line 254
    .line 255
    :cond_b
    return-void
.end method

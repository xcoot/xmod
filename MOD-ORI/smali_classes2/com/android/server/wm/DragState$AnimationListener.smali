.class public Lcom/android/server/wm/DragState$AnimationListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    .line 17
    .line 18
    .line 19
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "scale"

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 20
    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const-string p0, "WindowManager"

    .line 28
    .line 29
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v2, v1

    .line 66
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    return-void

    .line 74
    :goto_2
    if-eqz v1, :cond_2

    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_3
    throw p0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 96
    .line 97
    :try_start_3
    const-string/jumbo v1, "x"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/Float;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const-string/jumbo v2, "y"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/Float;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 128
    .line 129
    iget-boolean v3, v2, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 130
    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    iget v3, v2, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iget-object v5, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 141
    .line 142
    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetY:F

    .line 143
    .line 144
    const/4 v7, 0x1

    .line 145
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v2, v1, p1, v3, v5}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 154
    .line 155
    iget v2, v1, Lcom/android/server/wm/DragState;->mSourceX:F

    .line 156
    .line 157
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 162
    .line 163
    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    .line 164
    .line 165
    invoke-virtual {v3, v5, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    iget-object v5, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 170
    .line 171
    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 172
    .line 173
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    iget-object v6, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 178
    .line 179
    iget v8, v6, Lcom/android/server/wm/DragState;->mTargetY:F

    .line 180
    .line 181
    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/4 v2, 0x0

    .line 190
    cmpl-float v3, v1, v2

    .line 191
    .line 192
    if-eqz v3, :cond_3

    .line 193
    .line 194
    div-float v2, p1, v1

    .line 195
    .line 196
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 197
    .line 198
    iget v1, p1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 199
    .line 200
    iget v3, p1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 201
    .line 202
    iget v5, p1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 203
    .line 204
    mul-float/2addr v3, v5

    .line 205
    sub-float/2addr v1, v3

    .line 206
    invoke-virtual {p1, v1, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 211
    .line 212
    iget v3, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 213
    .line 214
    iget v5, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 215
    .line 216
    iget v6, v1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 217
    .line 218
    mul-float/2addr v5, v6

    .line 219
    sub-float/2addr v3, v5

    .line 220
    invoke-virtual {v1, v3, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 225
    .line 226
    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceX:F

    .line 227
    .line 228
    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    sub-float/2addr v3, p1

    .line 233
    mul-float/2addr v3, v2

    .line 234
    add-float/2addr p1, v3

    .line 235
    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 236
    .line 237
    iget v4, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    .line 238
    .line 239
    invoke-virtual {v3, v4, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    sub-float/2addr v3, v1

    .line 244
    mul-float/2addr v3, v2

    .line 245
    add-float/2addr v1, v3

    .line 246
    move v9, v1

    .line 247
    move v1, p1

    .line 248
    move p1, v9

    .line 249
    goto :goto_4

    .line 250
    :catchall_2
    move-exception p0

    .line 251
    goto :goto_7

    .line 252
    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 253
    .line 254
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 255
    .line 256
    if-nez p0, :cond_5

    .line 257
    .line 258
    const-string p0, "WindowManager"

    .line 259
    .line 260
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 261
    .line 262
    .line 263
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 264
    .line 265
    .line 266
    if-eqz v0, :cond_6

    .line 267
    .line 268
    :goto_5
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_5
    :try_start_4
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_6
    :goto_6
    return-void

    .line 280
    :goto_7
    if-eqz v0, :cond_7

    .line 281
    .line 282
    :try_start_5
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :catchall_3
    move-exception p1

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_7
    :goto_8
    throw p0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 296
    .line 297
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 302
    .line 303
    :try_start_6
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 304
    .line 305
    const-string v2, "alpha"

    .line 306
    .line 307
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    check-cast p1, Ljava/lang/Float;

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    iput p1, v1, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 320
    .line 321
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 322
    .line 323
    if-nez p1, :cond_8

    .line 324
    .line 325
    const-string p0, "WindowManager"

    .line 326
    .line 327
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 328
    .line 329
    .line 330
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 331
    .line 332
    .line 333
    if-eqz v0, :cond_9

    .line 334
    .line 335
    :goto_9
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 336
    .line 337
    .line 338
    goto :goto_a

    .line 339
    :catchall_4
    move-exception p0

    .line 340
    goto :goto_b

    .line 341
    :cond_8
    :try_start_7
    iget p0, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 342
    .line 343
    invoke-virtual {v0, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 347
    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_9
    :goto_a
    return-void

    .line 351
    :goto_b
    if-eqz v0, :cond_a

    .line 352
    .line 353
    :try_start_8
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 354
    .line 355
    .line 356
    goto :goto_c

    .line 357
    :catchall_5
    move-exception p1

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :cond_a
    :goto_c
    throw p0

    .line 362
    :pswitch_2
    const-string/jumbo v0, "scale"

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 366
    .line 367
    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 368
    .line 369
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 370
    .line 371
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 376
    .line 377
    :try_start_9
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 378
    .line 379
    if-eqz v2, :cond_b

    .line 380
    .line 381
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 382
    .line 383
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 384
    .line 385
    if-nez v2, :cond_b

    .line 386
    .line 387
    const-string p0, "WindowManager"

    .line 388
    .line 389
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 390
    .line 391
    .line 392
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 393
    .line 394
    .line 395
    if-eqz v1, :cond_c

    .line 396
    .line 397
    :goto_d
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 398
    .line 399
    .line 400
    goto :goto_e

    .line 401
    :catchall_6
    move-exception p0

    .line 402
    goto :goto_f

    .line 403
    :cond_b
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 404
    .line 405
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 406
    .line 407
    const-string/jumbo v3, "x"

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Ljava/lang/Float;

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    const-string/jumbo v4, "y"

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    check-cast v4, Ljava/lang/Float;

    .line 428
    .line 429
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 434
    .line 435
    .line 436
    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 437
    .line 438
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 439
    .line 440
    const-string v3, "alpha"

    .line 441
    .line 442
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/lang/Float;

    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 453
    .line 454
    .line 455
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    .line 456
    .line 457
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 458
    .line 459
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    check-cast p0, Ljava/lang/Float;

    .line 464
    .line 465
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    check-cast p0, Ljava/lang/Float;

    .line 474
    .line 475
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    const/4 v5, 0x0

    .line 480
    const/4 v6, 0x0

    .line 481
    move-object v2, v1

    .line 482
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 486
    .line 487
    .line 488
    goto :goto_d

    .line 489
    :cond_c
    :goto_e
    return-void

    .line 490
    :goto_f
    if-eqz v1, :cond_d

    .line 491
    .line 492
    :try_start_b
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 493
    .line 494
    .line 495
    goto :goto_10

    .line 496
    :catchall_7
    move-exception p1

    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    :cond_d
    :goto_10
    throw p0

    .line 501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

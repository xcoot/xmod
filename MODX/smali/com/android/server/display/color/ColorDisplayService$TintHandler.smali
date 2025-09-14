.class public final Lcom/android/server/display/color/ColorDisplayService$TintHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 9
    goto/16 :goto_7

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 13
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 15
    invoke-static {p0, p1, v3}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 18
    goto/16 :goto_7

    .line 20
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 22
    iget-object v6, v5, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 24
    const-string p0, "DisplayWhiteBalanceTintController animation started: toCct="

    .line 26
    iget-object v1, v5, Lcom/android/server/display/color/ColorDisplayService;->mCctTintApplierLock:Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 32
    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 34
    invoke-virtual {v5, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    move-object v9, p1

    .line 39
    check-cast v9, Lcom/android/server/display/color/DisplayTransformManager;

    .line 41
    iget v8, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 43
    invoke-virtual {v6}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 51
    :goto_0
    move v7, p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    if-le v7, v8, :cond_1

    .line 58
    iget-wide v2, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    iget-wide v2, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    .line 63
    :goto_2
    const-string p1, "ColorDisplayService"

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string p0, " fromCct="

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string p0, " with duration="

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    filled-new-array {v8, v7}, [I

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 103
    move-result-object p0

    .line 104
    iput-object p0, v6, Lcom/android/server/display/color/TintController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 106
    iget-object p1, v6, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

    .line 108
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 113
    goto :goto_3

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_4

    .line 116
    :cond_2
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 122
    move-result-object p1

    .line 123
    const v0, 0x10c000b

    .line 126
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 133
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;

    .line 135
    invoke-direct {p1, v5, v6, v9}, Lcom/android/server/display/color/ColorDisplayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;Lcom/android/server/display/color/DisplayTransformManager;)V

    .line 138
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$4;

    .line 143
    move-object v4, p1

    .line 144
    invoke-direct/range {v4 .. v9}, Lcom/android/server/display/color/ColorDisplayService$4;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayWhiteBalanceTintController;IILcom/android/server/display/color/DisplayTransformManager;)V

    .line 147
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    monitor-exit v1

    .line 154
    goto/16 :goto_7

    .line 156
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    throw p0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 160
    iget-object v1, v1, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 162
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    const/16 v4, 0x64

    .line 169
    if-gez p1, :cond_3

    .line 171
    move p1, v2

    .line 172
    goto :goto_5

    .line 173
    :cond_3
    if-le p1, v4, :cond_4

    .line 175
    move p1, v4

    .line 176
    :cond_4
    :goto_5
    const-string v5, "Setting saturation level: "

    .line 178
    const-string v6, "ColorDisplayService"

    .line 180
    invoke-static {p1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v5, v1, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    .line 185
    if-ne p1, v4, :cond_5

    .line 187
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 189
    iput-object p1, v1, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 191
    invoke-static {v5, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 194
    goto :goto_6

    .line 195
    :cond_5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    iput-object v4, v1, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    .line 199
    invoke-static {v5, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 202
    int-to-float p1, p1

    .line 203
    const v1, 0x3c23d70a    # 0.01f

    .line 206
    mul-float/2addr p1, v1

    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    sub-float/2addr v1, p1

    .line 210
    const v4, 0x3e6c8b44    # 0.231f

    .line 213
    mul-float/2addr v4, v1

    .line 214
    const v6, 0x3f370a3d    # 0.715f

    .line 217
    mul-float/2addr v6, v1

    .line 218
    const v7, 0x3d9374bc    # 0.072f

    .line 221
    mul-float/2addr v1, v7

    .line 222
    const/4 v7, 0x3

    .line 223
    new-array v7, v7, [F

    .line 225
    aput v4, v7, v2

    .line 227
    aput v6, v7, v3

    .line 229
    aput v1, v7, v0

    .line 231
    aget v1, v7, v2

    .line 233
    add-float/2addr v1, p1

    .line 234
    aput v1, v5, v2

    .line 236
    aget v1, v7, v2

    .line 238
    aput v1, v5, v3

    .line 240
    aput v1, v5, v0

    .line 242
    aget v1, v7, v3

    .line 244
    const/4 v3, 0x4

    .line 245
    aput v1, v5, v3

    .line 247
    const/4 v3, 0x5

    .line 248
    add-float v4, v1, p1

    .line 250
    aput v4, v5, v3

    .line 252
    const/4 v3, 0x6

    .line 253
    aput v1, v5, v3

    .line 255
    aget v0, v7, v0

    .line 257
    const/16 v1, 0x8

    .line 259
    aput v0, v5, v1

    .line 261
    const/16 v1, 0x9

    .line 263
    aput v0, v5, v1

    .line 265
    const/16 v1, 0xa

    .line 267
    add-float/2addr v0, p1

    .line 268
    aput v0, v5, v1

    .line 270
    :goto_6
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 272
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 274
    invoke-static {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 277
    goto :goto_7

    .line 278
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 280
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 282
    invoke-static {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 285
    goto :goto_7

    .line 286
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 288
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 290
    invoke-static {p0, p1, v3}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 293
    goto :goto_7

    .line 294
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 296
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 299
    goto :goto_7

    .line 300
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 302
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V

    .line 307
    :goto_7
    return-void

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

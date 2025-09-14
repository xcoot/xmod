.class public final Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/accessibility/MagnificationAnimationCallback;


# instance fields
.field public final mAnimate:Z

.field public final mCurrentCenter:Landroid/graphics/PointF;

.field public final mCurrentMode:I

.field public final mCurrentScale:F

.field public final mDisplayId:I

.field public mExpired:Z

.field public final mTargetMode:I

.field public final mTransitionCallBack:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;IIFLandroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 9
    new-instance p1, Landroid/graphics/PointF;

    .line 11
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 16
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    .line 18
    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 20
    iput p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    .line 22
    xor-int/lit8 p2, p4, 0x3

    .line 24
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 26
    iput p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    .line 28
    invoke-virtual {p1, p6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    .line 34
    return-void
.end method


# virtual methods
.method public final adjustCurrentCenterIfNeededLocked()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 17
    move-result-object v1

    .line 18
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 23
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 25
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 27
    float-to-int v2, v2

    .line 28
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 30
    float-to-int v1, v1

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->contains(II)Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    .line 41
    move-result-object v0

    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 55
    return-void
.end method

.method public final applyMagnificationModeLocked(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 6
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 9
    move-result-object v0

    .line 10
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 18
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 23
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 25
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 29
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 31
    iget v4, p1, Landroid/graphics/PointF;->y:F

    .line 33
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 45
    move-result-object v0

    .line 46
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 48
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentScale:F

    .line 50
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentCenter:Landroid/graphics/PointF;

    .line 52
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 54
    iget v4, p1, Landroid/graphics/PointF;->y:F

    .line 56
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mAnimate:Z

    .line 58
    if-eqz p0, :cond_2

    .line 60
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 62
    :goto_0
    move-object v5, p0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    goto :goto_0

    .line 66
    :goto_1
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    .line 71
    :goto_2
    return-void
.end method

.method public final onResult(Z)V
    .locals 6

    .line 1
    const-string/jumbo v0, "onResult success = "

    .line 4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 6
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const-string v2, "MagnificationController"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_2

    .line 34
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 43
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 45
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 51
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 53
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 62
    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->adjustCurrentCenterIfNeededLocked()V

    .line 67
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 75
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 78
    move-result-object v2

    .line 79
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 81
    if-ne v3, v0, :cond_3

    .line 83
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 85
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_3

    .line 91
    new-instance v3, Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 93
    invoke-direct {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 96
    new-instance v4, Landroid/graphics/Region;

    .line 98
    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 101
    invoke-virtual {v3, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 104
    move-result-object v0

    .line 105
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 107
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 110
    move-result v5

    .line 111
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 114
    move-result-object v0

    .line 115
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 117
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 120
    move-result v5

    .line 121
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 124
    move-result-object v0

    .line 125
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 127
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    .line 130
    move-result v5

    .line 131
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 134
    move-result-object v0

    .line 135
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 137
    invoke-virtual {v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 140
    move-result v5

    .line 141
    invoke-virtual {v0, v5}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 144
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 146
    invoke-virtual {v2, v0, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 151
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 153
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 155
    invoke-virtual {v3}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 162
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 164
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 166
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTargetMode:I

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    .line 173
    if-eqz v0, :cond_4

    .line 175
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 177
    invoke-virtual {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->onResult(IZ)V

    .line 180
    :cond_4
    monitor-exit v1

    .line 181
    return-void

    .line 182
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    throw p0
.end method

.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;


# instance fields
.field public mLastMoveOutsideMagnifiedRegion:Z

.field protected mScaleToRecoverAfterDraggingEnd:F

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 8
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 10
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_8

    .line 7
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p2, v1, :cond_6

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq p2, v2, :cond_1

    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p2, v1, :cond_6

    .line 19
    const/4 p1, 0x5

    .line 20
    if-eq p2, p1, :cond_0

    .line 22
    const/4 p0, 0x6

    .line 23
    if-eq p2, p0, :cond_8

    .line 25
    goto/16 :goto_5

    .line 27
    :cond_0
    iget p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 29
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 31
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 33
    iget-object p0, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 35
    invoke-virtual {p3, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 38
    goto/16 :goto_5

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 43
    move-result p2

    .line 44
    if-ne p2, v1, :cond_5

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 49
    move-result v4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 53
    move-result v5

    .line 54
    iget-object p1, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 56
    iget p2, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 58
    invoke-virtual {p1, p2, v4, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->magnificationRegionContains(IFF)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 66
    iget p2, p3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 68
    iget-boolean p3, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 70
    iget-object v8, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 72
    monitor-enter v8

    .line 73
    :try_start_0
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    move-object v2, p1

    .line 80
    check-cast v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 82
    if-nez v2, :cond_2

    .line 84
    monitor-exit v8

    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    if-eqz p3, :cond_3

    .line 90
    sget-object p1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 92
    :goto_0
    move-object v6, p1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p1, 0x0

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 98
    const/4 v7, 0x0

    .line 99
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    .line 102
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 105
    goto :goto_5

    .line 106
    :goto_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    new-instance p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$GestureException;

    .line 113
    const-string p1, "Should have one pointer down."

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$GestureException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p0

    .line 119
    :cond_6
    iget p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    .line 123
    cmpl-float v1, p2, v1

    .line 125
    if-ltz v1, :cond_7

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 134
    move-result p1

    .line 135
    invoke-virtual {p3, p2, v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomToScale(FFF)V

    .line 138
    goto :goto_4

    .line 139
    :cond_7
    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->zoomOff()V

    .line 142
    :goto_4
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 144
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 146
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 148
    iget-object p0, p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$DetectingState;

    .line 150
    invoke-virtual {p3, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$State;)V

    .line 153
    :goto_5
    return-void

    .line 154
    :cond_8
    new-instance p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$GestureException;

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    const-string p3, "Unexpected event type: "

    .line 160
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$GestureException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ViewportDraggingState{mScaleToRecoverAfterDraggingEnd="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mScaleToRecoverAfterDraggingEnd:F

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mLastMoveOutsideMagnifiedRegion="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const/16 p0, 0x7d

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

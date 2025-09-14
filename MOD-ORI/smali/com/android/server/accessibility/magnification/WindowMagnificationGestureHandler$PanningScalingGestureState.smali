.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;


# instance fields
.field public final mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;Lcom/android/server/accessibility/magnification/PanningScalingHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEnter()V
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    .line 12
    .line 13
    return-void
.end method

.method public final onExit()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    iput v1, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 9
    .line 10
    iput-boolean v2, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 17
    .line 18
    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpg-float v5, v4, v5

    .line 25
    .line 26
    if-gez v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 30
    .line 31
    invoke-virtual {v3, v4, p0}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->putScale(FI)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iput v1, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 35
    .line 36
    iput-boolean v2, v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 37
    .line 38
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PanningScalingState{mPanningScalingHandler="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;->mPanningScalingHandler:Lcom/android/server/accessibility/magnification/PanningScalingHandler;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

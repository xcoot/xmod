.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;


# instance fields
.field public mEnabledBeforeDrag:Z

.field public mLastX:F

.field public mLastY:F

.field public final synthetic this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 5
    .line 6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onExit()V
    .locals 1

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 6
    .line 7
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x1

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    .line 7
    .line 8
    if-eq p2, p3, :cond_2

    .line 9
    .line 10
    const/4 p3, 0x2

    .line 11
    if-eq p2, p3, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    if-eq p2, p0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    iget p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget p3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 38
    .line 39
    sub-float/2addr p2, p3

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 45
    .line 46
    sub-float/2addr p3, v1

    .line 47
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 48
    .line 49
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    .line 50
    .line 51
    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->releaseTripleTapAndHold()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ViewportDraggingState{mLastX="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastX:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",mLastY="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$ViewportDraggingState;->mLastY:F

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

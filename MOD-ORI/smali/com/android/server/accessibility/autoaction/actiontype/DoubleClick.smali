.class public final Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# virtual methods
.method public final click(IJJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 9
    .line 10
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 19
    .line 20
    invoke-virtual {v5, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 21
    .line 22
    .line 23
    aget-object v0, v2, v4

    .line 24
    .line 25
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 26
    .line 27
    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    move-wide v2, p2

    .line 32
    move-wide v4, p4

    .line 33
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/16 p3, 0x1002

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setSource(I)V

    .line 40
    .line 41
    .line 42
    const/high16 p3, 0x800000

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 51
    .line 52
    const/4 p3, 0x2

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final performCornerAction(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v6

    .line 9
    move-object v0, p0

    .line 10
    move v1, p1

    .line 11
    move-wide v2, v6

    .line 12
    move-wide v4, v6

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(IJJ)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x32

    .line 17
    .line 18
    add-long v4, v6, v0

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move v1, p1

    .line 22
    move-wide v2, v4

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(IJJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

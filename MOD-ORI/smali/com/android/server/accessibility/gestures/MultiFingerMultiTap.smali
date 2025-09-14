.class public Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBases:[Landroid/graphics/PointF;

.field public mCompletedTapCount:I

.field public final mDoubleTapSlop:I

.field public final mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

.field public mIsTargetFingerCountReached:Z

.field public final mTargetFingerCount:I

.field public final mTargetTapCount:I

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p4, v0, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 11
    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    iput-boolean p4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 15
    .line 16
    const/4 p5, 0x2

    .line 17
    if-lt p2, p5, :cond_0

    .line 18
    .line 19
    const/4 p5, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p5, p4

    .line 22
    :goto_0
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 23
    .line 24
    .line 25
    const-string p5, "Tap count must greater than 0."

    .line 26
    .line 27
    invoke-static {p3, p5}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 31
    .line 32
    iput p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    mul-int/2addr p3, p2

    .line 43
    iput p3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    .line 44
    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    mul-int/2addr p1, p2

    .line 54
    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    .line 55
    .line 56
    new-array p1, p2, [Landroid/graphics/PointF;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 59
    .line 60
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 61
    .line 62
    array-length p2, p1

    .line 63
    if-ge p4, p2, :cond_1

    .line 64
    .line 65
    new-instance p2, Landroid/graphics/PointF;

    .line 66
    .line 67
    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object p2, p1, p4

    .line 71
    .line 72
    add-int/lit8 p4, p4, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    iget p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->clear()V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 14
    .line 15
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;
    .locals 9

    .line 1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v3, v1

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 8
    .line 9
    array-length v5, v4

    .line 10
    if-ge v2, v5, :cond_5

    .line 11
    .line 12
    aget-object v4, v4, v2

    .line 13
    .line 14
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 15
    .line 16
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    iget v5, v4, Landroid/graphics/PointF;->y:F

    .line 23
    .line 24
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-eqz p3, :cond_1

    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 47
    .line 48
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    sub-float/2addr v6, v7

    .line 53
    iget v7, v4, Landroid/graphics/PointF;->y:F

    .line 54
    .line 55
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    sub-float/2addr v7, v5

    .line 60
    const/4 v5, 0x0

    .line 61
    cmpl-float v8, v6, v5

    .line 62
    .line 63
    if-nez v8, :cond_3

    .line 64
    .line 65
    cmpl-float v5, v7, v5

    .line 66
    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    return-object v4

    .line 77
    :cond_3
    float-to-double v5, v6

    .line 78
    float-to-double v7, v7

    .line 79
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    double-to-float v5, v5

    .line 84
    cmpl-float v6, v0, v5

    .line 85
    .line 86
    if-lez v6, :cond_4

    .line 87
    .line 88
    move-object v3, v4

    .line 89
    move v0, v5

    .line 90
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    cmpg-float p1, v0, p2

    .line 94
    .line 95
    if-gez p1, :cond_7

    .line 96
    .line 97
    if-eqz p3, :cond_6

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_6
    return-object v3

    .line 105
    :cond_7
    return-object v1
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-Finger "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 18
    .line 19
    if-ne p0, v1, :cond_0

    .line 20
    .line 21
    const-string p0, "Single"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x2

    .line 28
    if-ne p0, v1, :cond_1

    .line 29
    .line 30
    const-string p0, "Double"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x3

    .line 37
    if-ne p0, v1, :cond_2

    .line 38
    .line 39
    const-string p0, "Triple"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-le p0, v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    const-string p0, " Tap"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 12
    .line 13
    aget-object p0, p0, v1

    .line 14
    .line 15
    iget v1, p0, Landroid/graphics/PointF;->x:F

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget v1, p0, Landroid/graphics/PointF;->y:F

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-object p0
.end method

.method public final onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v5, v0

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    move-object v7, p1

    .line 26
    move-object v8, p2

    .line 27
    move v9, p3

    .line 28
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-virtual {v0, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v3, v0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    move-object v5, p1

    .line 15
    move-object v6, p2

    .line 16
    move v7, p3

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x3

    .line 25
    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    .line 26
    .line 27
    if-gt v0, v2, :cond_5

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->initBaseLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v3, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mDoubleTapSlop:I

    .line 45
    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_0
    iget v5, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 52
    .line 53
    if-eq v5, v4, :cond_2

    .line 54
    .line 55
    if-nez v5, :cond_4

    .line 56
    .line 57
    :cond_2
    if-eqz v3, :cond_4

    .line 58
    .line 59
    if-ne v0, v2, :cond_3

    .line 60
    .line 61
    iput-boolean v4, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-virtual {v3, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void

    .line 83
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 85
    .line 86
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v3, v0

    .line 27
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    move-object v5, p1

    .line 36
    move-object v6, p2

    .line 37
    move v7, p3

    .line 38
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->cancelAfterDoubleTapTimeout(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTouchSlop:I

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->findNearestPoint(Landroid/view/MotionEvent;FZ)Landroid/graphics/PointF;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    :cond_0
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 26
    .line 27
    add-int/2addr v0, v3

    .line 28
    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 38
    .line 39
    if-ne v0, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_4

    .line 49
    .line 50
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-long v3, v0

    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    move-object v5, p1

    .line 64
    move-object v6, p2

    .line 65
    move v7, p3

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x3

    .line 71
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const-string v1, ", CompletedTapCount: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", IsTargetFingerCountReached: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", Bases: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mBases:[Landroid/graphics/PointF;

    .line 41
    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", ExcludedPointsForDownSlopChecked: "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mExcludedPointsForDownSlopChecked:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

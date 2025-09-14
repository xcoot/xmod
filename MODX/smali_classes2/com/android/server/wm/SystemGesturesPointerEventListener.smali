.class public final Lcom/android/server/wm/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public final mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

.field public final mHandler:Landroid/os/Handler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtBottom:Z

.field public mMouseHoveringAtLeft:Z

.field public mMouseHoveringAtRight:Z

.field public mMouseHoveringAtTop:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;

.field public screenHeight:I

.field public screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V
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
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/16 v0, 0x20

    .line 12
    .line 13
    new-array v1, v0, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 20
    .line 21
    new-array v1, v0, [F

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 24
    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p1, " must not be null"

    .line 44
    .line 45
    const-string p2, "context"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method


# virtual methods
.method public final captureDown(ILandroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    aput v2, v1, v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    aput p1, v1, v0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    aput-wide p1, p0, v0

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final detectSwipe(IJFF)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 6
    .line 7
    aget v1, v1, p1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 10
    .line 11
    aget-wide v2, v2, p1

    .line 12
    .line 13
    sub-long/2addr p2, v2

    .line 14
    iget-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v2, v1, v2

    .line 20
    .line 21
    const-wide/16 v3, 0x1f4

    .line 22
    .line 23
    if-gtz v2, :cond_0

    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    add-float/2addr v2, v1

    .line 29
    cmpl-float v2, p5, v2

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    cmp-long v2, p2, v3

    .line 34
    .line 35
    if-gez v2, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 40
    .line 41
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    sub-int/2addr v2, v5

    .line 44
    int-to-float v2, v2

    .line 45
    cmpl-float v2, v1, v2

    .line 46
    .line 47
    if-ltz v2, :cond_1

    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    sub-float/2addr v1, v2

    .line 53
    cmpg-float p5, p5, v1

    .line 54
    .line 55
    if-gez p5, :cond_1

    .line 56
    .line 57
    cmp-long p5, p2, v3

    .line 58
    .line 59
    if-gez p5, :cond_1

    .line 60
    .line 61
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_1
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 64
    .line 65
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 66
    .line 67
    sub-int/2addr p5, v1

    .line 68
    int-to-float p5, p5

    .line 69
    cmpl-float p5, v0, p5

    .line 70
    .line 71
    if-ltz p5, :cond_2

    .line 72
    .line 73
    iget p5, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 74
    .line 75
    int-to-float p5, p5

    .line 76
    sub-float p5, v0, p5

    .line 77
    .line 78
    cmpg-float p5, p4, p5

    .line 79
    .line 80
    if-gez p5, :cond_2

    .line 81
    .line 82
    cmp-long p5, p2, v3

    .line 83
    .line 84
    if-gez p5, :cond_2

    .line 85
    .line 86
    const/4 p0, 0x3

    .line 87
    return p0

    .line 88
    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 89
    .line 90
    int-to-float p1, p1

    .line 91
    cmpg-float p1, v0, p1

    .line 92
    .line 93
    if-gtz p1, :cond_3

    .line 94
    .line 95
    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 96
    .line 97
    int-to-float p0, p0

    .line 98
    add-float/2addr v0, p0

    .line 99
    cmpl-float p0, p4, v0

    .line 100
    .line 101
    if-lez p0, :cond_3

    .line 102
    .line 103
    cmp-long p0, p2, v3

    .line 104
    .line 105
    if-gez p0, :cond_3

    .line 106
    .line 107
    const/4 p0, 0x4

    .line 108
    return p0

    .line 109
    :cond_3
    const/4 p0, 0x0

    .line 110
    return p0
.end method

.method public final findIndex(I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 7
    .line 8
    aget v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/16 v0, 0x20

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v1, v0, :cond_3

    .line 20
    .line 21
    if-ne p1, v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 29
    .line 30
    aput p1, v0, v1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    :goto_1
    return v2
.end method

.method public final onConfigurationChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x1050574

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    const v1, 0x1050573

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 34
    .line 35
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const v3, 0x1050182

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aget-object v1, v0, v2

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 76
    .line 77
    add-int/2addr v1, v4

    .line 78
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    :cond_1
    const/4 v1, 0x1

    .line 85
    aget-object v1, v0, v1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 98
    .line 99
    add-int/2addr v1, v4

    .line 100
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    :cond_2
    const/4 v1, 0x2

    .line 107
    aget-object v1, v0, v1

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    iget-object v2, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iget v4, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 120
    .line 121
    add-int/2addr v1, v4

    .line 122
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    :cond_3
    const/4 v1, 0x3

    .line 129
    aget-object v0, v0, v1

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    .line 134
    .line 135
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iget p0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    .line 142
    .line 143
    add-int/2addr v0, p0

    .line 144
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mGestureDetector:Lcom/android/server/wm/SystemGesturesPointerEventListener$1;

    .line 16
    .line 17
    invoke-virtual {v1, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v9, 0x0

    .line 27
    if-eqz v1, :cond_22

    .line 28
    .line 29
    if-eq v1, v8, :cond_1f

    .line 30
    .line 31
    const/4 v10, 0x3

    .line 32
    const/4 v11, 0x2

    .line 33
    const/4 v12, 0x0

    .line 34
    if-eq v1, v11, :cond_b

    .line 35
    .line 36
    if-eq v1, v10, :cond_1f

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    if-eq v1, v2, :cond_9

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_d

    .line 45
    .line 46
    :cond_1
    const/16 v1, 0x2002

    .line 47
    .line 48
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_29

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 63
    .line 64
    const-wide/16 v4, 0x1f4

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    cmpl-float v6, v1, v12

    .line 69
    .line 70
    if-nez v6, :cond_2

    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 73
    .line 74
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 75
    .line 76
    iget-object v7, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 77
    .line 78
    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 84
    .line 85
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-eqz v3, :cond_3

    .line 94
    .line 95
    cmpl-float v3, v1, v12

    .line 96
    .line 97
    if-lez v3, :cond_3

    .line 98
    .line 99
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 100
    .line 101
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 102
    .line 103
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 111
    .line 112
    :cond_3
    :goto_0
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 113
    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    cmpl-float v6, v2, v12

    .line 117
    .line 118
    if-nez v6, :cond_4

    .line 119
    .line 120
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 121
    .line 122
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 123
    .line 124
    iget-object v7, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 125
    .line 126
    iget-object v10, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .line 137
    .line 138
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    if-eqz v3, :cond_5

    .line 142
    .line 143
    cmpl-float v3, v2, v12

    .line 144
    .line 145
    if-lez v3, :cond_5

    .line 146
    .line 147
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 148
    .line 149
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 150
    .line 151
    iget-object v6, v6, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 152
    .line 153
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 159
    .line 160
    :cond_5
    :goto_1
    iget-boolean v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 161
    .line 162
    if-nez v3, :cond_6

    .line 163
    .line 164
    iget v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 165
    .line 166
    sub-int/2addr v6, v8

    .line 167
    int-to-float v6, v6

    .line 168
    cmpl-float v6, v1, v6

    .line 169
    .line 170
    if-ltz v6, :cond_6

    .line 171
    .line 172
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 173
    .line 174
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 175
    .line 176
    iget-object v6, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 177
    .line 178
    iget-object v7, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 186
    .line 187
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    .line 189
    .line 190
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    if-eqz v3, :cond_7

    .line 194
    .line 195
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 196
    .line 197
    sub-int/2addr v3, v8

    .line 198
    int-to-float v3, v3

    .line 199
    cmpg-float v1, v1, v3

    .line 200
    .line 201
    if-gez v1, :cond_7

    .line 202
    .line 203
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 204
    .line 205
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 206
    .line 207
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 208
    .line 209
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    .line 213
    .line 214
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 215
    .line 216
    :cond_7
    :goto_2
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 217
    .line 218
    if-nez v1, :cond_8

    .line 219
    .line 220
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 221
    .line 222
    sub-int/2addr v3, v8

    .line 223
    int-to-float v3, v3

    .line 224
    cmpl-float v3, v2, v3

    .line 225
    .line 226
    if-ltz v3, :cond_8

    .line 227
    .line 228
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 229
    .line 230
    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 231
    .line 232
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 233
    .line 234
    iget-object v6, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 240
    .line 241
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 242
    .line 243
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .line 245
    .line 246
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 247
    .line 248
    goto/16 :goto_d

    .line 249
    .line 250
    :cond_8
    if-eqz v1, :cond_29

    .line 251
    .line 252
    iget v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 253
    .line 254
    sub-int/2addr v1, v8

    .line 255
    int-to-float v1, v1

    .line 256
    cmpg-float v1, v2, v1

    .line 257
    .line 258
    if-gez v1, :cond_29

    .line 259
    .line 260
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 261
    .line 262
    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 263
    .line 264
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 272
    .line 273
    goto/16 :goto_d

    .line 274
    .line 275
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    .line 280
    .line 281
    .line 282
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 283
    .line 284
    if-eqz v1, :cond_29

    .line 285
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-ge v1, v2, :cond_a

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_a
    move v8, v9

    .line 294
    :goto_3
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 295
    .line 296
    if-nez v8, :cond_29

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_d

    .line 304
    .line 305
    :cond_b
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 306
    .line 307
    if-eqz v1, :cond_29

    .line 308
    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    const/4 v13, 0x4

    .line 314
    if-ne v1, v13, :cond_f

    .line 315
    .line 316
    const/16 v1, 0x35

    .line 317
    .line 318
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    const/high16 v2, 0x40400000    # 3.0f

    .line 323
    .line 324
    cmpl-float v1, v1, v2

    .line 325
    .line 326
    if-nez v1, :cond_f

    .line 327
    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownX:[F

    .line 333
    .line 334
    aget v2, v2, v9

    .line 335
    .line 336
    sub-float/2addr v1, v2

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownY:[F

    .line 342
    .line 343
    aget v3, v3, v9

    .line 344
    .line 345
    sub-float/2addr v2, v3

    .line 346
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    cmpg-float v3, v3, v4

    .line 355
    .line 356
    if-gez v3, :cond_d

    .line 357
    .line 358
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 363
    .line 364
    int-to-float v3, v3

    .line 365
    cmpl-float v1, v1, v3

    .line 366
    .line 367
    if-lez v1, :cond_f

    .line 368
    .line 369
    cmpl-float v1, v2, v12

    .line 370
    .line 371
    if-lez v1, :cond_c

    .line 372
    .line 373
    move v1, v8

    .line 374
    goto :goto_4

    .line 375
    :cond_c
    move v1, v11

    .line 376
    goto :goto_4

    .line 377
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    iget v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 382
    .line 383
    int-to-float v3, v3

    .line 384
    cmpl-float v2, v2, v3

    .line 385
    .line 386
    if-lez v2, :cond_f

    .line 387
    .line 388
    cmpl-float v1, v1, v12

    .line 389
    .line 390
    if-lez v1, :cond_e

    .line 391
    .line 392
    move v1, v13

    .line 393
    goto :goto_4

    .line 394
    :cond_e
    move v1, v10

    .line 395
    goto :goto_4

    .line 396
    :cond_f
    move v1, v9

    .line 397
    :goto_4
    if-nez v1, :cond_10

    .line 398
    .line 399
    move v2, v8

    .line 400
    goto :goto_5

    .line 401
    :cond_10
    move v2, v9

    .line 402
    :goto_5
    iput-boolean v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 403
    .line 404
    if-nez v2, :cond_14

    .line 405
    .line 406
    if-ne v1, v8, :cond_11

    .line 407
    .line 408
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_d

    .line 414
    .line 415
    :cond_11
    if-ne v1, v11, :cond_12

    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_d

    .line 423
    .line 424
    :cond_12
    if-ne v1, v10, :cond_13

    .line 425
    .line 426
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 427
    .line 428
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_d

    .line 432
    .line 433
    :cond_13
    if-ne v1, v13, :cond_29

    .line 434
    .line 435
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 443
    .line 444
    .line 445
    move-result v14

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 447
    .line 448
    .line 449
    move-result v15

    .line 450
    move v6, v9

    .line 451
    :goto_6
    if-ge v6, v15, :cond_15

    .line 452
    .line 453
    invoke-virtual {v7, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->findIndex(I)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPalm()F

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    cmpl-float v1, v1, v12

    .line 466
    .line 467
    if-lez v1, :cond_16

    .line 468
    .line 469
    :cond_15
    move v1, v9

    .line 470
    goto :goto_8

    .line 471
    :cond_16
    const/4 v1, -0x1

    .line 472
    if-eq v5, v1, :cond_19

    .line 473
    .line 474
    move v3, v9

    .line 475
    :goto_7
    if-ge v3, v14, :cond_18

    .line 476
    .line 477
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 478
    .line 479
    .line 480
    move-result-wide v16

    .line 481
    invoke-virtual {v7, v6, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 482
    .line 483
    .line 484
    move-result v18

    .line 485
    invoke-virtual {v7, v6, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 486
    .line 487
    .line 488
    move-result v19

    .line 489
    move-object/from16 v1, p0

    .line 490
    .line 491
    move v2, v5

    .line 492
    move/from16 v20, v3

    .line 493
    .line 494
    move-wide/from16 v3, v16

    .line 495
    .line 496
    move/from16 v16, v5

    .line 497
    .line 498
    move/from16 v5, v18

    .line 499
    .line 500
    move v12, v6

    .line 501
    move/from16 v6, v19

    .line 502
    .line 503
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_17

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_17
    add-int/lit8 v3, v20, 0x1

    .line 511
    .line 512
    move v6, v12

    .line 513
    move/from16 v5, v16

    .line 514
    .line 515
    const/4 v12, 0x0

    .line 516
    goto :goto_7

    .line 517
    :cond_18
    move/from16 v16, v5

    .line 518
    .line 519
    move v12, v6

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 521
    .line 522
    .line 523
    move-result-wide v3

    .line 524
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    move-object/from16 v1, p0

    .line 533
    .line 534
    move/from16 v2, v16

    .line 535
    .line 536
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    if-eqz v1, :cond_1a

    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_19
    move v12, v6

    .line 544
    :cond_1a
    add-int/lit8 v6, v12, 0x1

    .line 545
    .line 546
    const/4 v12, 0x0

    .line 547
    goto :goto_6

    .line 548
    :goto_8
    if-nez v1, :cond_1b

    .line 549
    .line 550
    move v9, v8

    .line 551
    :cond_1b
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 552
    .line 553
    if-ne v1, v8, :cond_1c

    .line 554
    .line 555
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 556
    .line 557
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromTop()V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_d

    .line 561
    .line 562
    :cond_1c
    if-ne v1, v11, :cond_1d

    .line 563
    .line 564
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 565
    .line 566
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromBottom()V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_d

    .line 570
    .line 571
    :cond_1d
    if-ne v1, v10, :cond_1e

    .line 572
    .line 573
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromRight()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_d

    .line 579
    .line 580
    :cond_1e
    if-ne v1, v13, :cond_29

    .line 581
    .line 582
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 583
    .line 584
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy$1;->onSwipeFromLeft()V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_d

    .line 588
    .line 589
    :cond_1f
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 590
    .line 591
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 592
    .line 593
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 594
    .line 595
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 598
    .line 599
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 600
    .line 601
    if-eqz v0, :cond_20

    .line 602
    .line 603
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 604
    .line 605
    :cond_20
    if-eqz v2, :cond_29

    .line 606
    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 608
    .line 609
    .line 610
    move-result-wide v0

    .line 611
    iget-object v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 612
    .line 613
    monitor-enter v3

    .line 614
    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 615
    .line 616
    if-eqz v2, :cond_21

    .line 617
    .line 618
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 619
    .line 620
    .line 621
    goto :goto_9

    .line 622
    :catchall_0
    move-exception v0

    .line 623
    goto :goto_a

    .line 624
    :cond_21
    :goto_9
    monitor-exit v3

    .line 625
    goto :goto_d

    .line 626
    :goto_a
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    throw v0

    .line 628
    :cond_22
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 629
    .line 630
    iput-boolean v8, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 631
    .line 632
    iput v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 633
    .line 634
    invoke-virtual {v0, v9, v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->captureDown(ILandroid/view/MotionEvent;)V

    .line 635
    .line 636
    .line 637
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 638
    .line 639
    if-eqz v1, :cond_23

    .line 640
    .line 641
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtLeft:Z

    .line 642
    .line 643
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 644
    .line 645
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 646
    .line 647
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 648
    .line 649
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromLeft:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 650
    .line 651
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    .line 653
    .line 654
    :cond_23
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 655
    .line 656
    if-eqz v1, :cond_24

    .line 657
    .line 658
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtTop:Z

    .line 659
    .line 660
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 661
    .line 662
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 663
    .line 664
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 665
    .line 666
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromTop:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 667
    .line 668
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    .line 670
    .line 671
    :cond_24
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 672
    .line 673
    if-eqz v1, :cond_25

    .line 674
    .line 675
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtRight:Z

    .line 676
    .line 677
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 678
    .line 679
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 680
    .line 681
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromRight:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 684
    .line 685
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    .line 687
    .line 688
    :cond_25
    iget-boolean v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 689
    .line 690
    if-eqz v1, :cond_26

    .line 691
    .line 692
    iput-boolean v9, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMouseHoveringAtBottom:Z

    .line 693
    .line 694
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 695
    .line 696
    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 697
    .line 698
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 699
    .line 700
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$1;->mOnSwipeFromBottom:Lcom/android/server/wm/DisplayPolicy$1$$ExternalSyntheticLambda0;

    .line 701
    .line 702
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    .line 704
    .line 705
    :cond_26
    iget-object v0, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/DisplayPolicy$1;

    .line 706
    .line 707
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$1;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 708
    .line 709
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 710
    .line 711
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 712
    .line 713
    if-eqz v0, :cond_27

    .line 714
    .line 715
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 716
    .line 717
    :cond_27
    if-eqz v2, :cond_29

    .line 718
    .line 719
    iget-object v1, v2, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 720
    .line 721
    monitor-enter v1

    .line 722
    :try_start_1
    iget-object v0, v2, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 723
    .line 724
    if-eqz v0, :cond_28

    .line 725
    .line 726
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 727
    .line 728
    .line 729
    goto :goto_b

    .line 730
    :catchall_1
    move-exception v0

    .line 731
    goto :goto_c

    .line 732
    :cond_28
    :goto_b
    monitor-exit v1

    .line 733
    goto :goto_d

    .line 734
    :goto_c
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 735
    throw v0

    .line 736
    :cond_29
    :goto_d
    return-void
.end method

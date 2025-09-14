.class public final Lcom/android/server/accessibility/magnification/PanningScalingHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBlockScroll:Z

.field public final mDisplayId:I

.field public mEnable:Z

.field public mInitialScaleFactor:F

.field public final mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

.field public final mMaxScale:F

.field public final mMinScale:F

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mScaling:Z

.field public final mScalingThreshold:F

.field public final mScrollGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PanningScalingHandler"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .line 15
    .line 16
    const/high16 p2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/accessibility/Flags;->pinchZoomZeroMinSpan()Z

    .line 24
    .line 25
    .line 26
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    mul-int/lit8 v2, v0, 0x2

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    move-object v0, p2

    .line 44
    move-object v1, p1

    .line 45
    move-object v5, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;IILandroid/os/Handler;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 50
    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, p1, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 64
    .line 65
    .line 66
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 67
    .line 68
    new-instance p2, Landroid/util/TypedValue;

    .line 69
    .line 70
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const p3, 0x1050110

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "PanningScalingHandler"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v2, "onScale: triggered "

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    cmpg-float v0, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 38
    .line 39
    sub-float/2addr p1, v0

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScalingThreshold:F

    .line 45
    .line 46
    cmpl-float p1, p1, v0

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v3, v1

    .line 52
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 53
    .line 54
    return v3

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 56
    .line 57
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 58
    .line 59
    invoke-interface {v2, v4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->getScale(I)F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    mul-float/2addr p1, v2

    .line 68
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMaxScale:F

    .line 69
    .line 70
    cmpl-float v5, p1, v4

    .line 71
    .line 72
    if-lez v5, :cond_4

    .line 73
    .line 74
    cmpl-float v5, p1, v2

    .line 75
    .line 76
    if-lez v5, :cond_4

    .line 77
    .line 78
    :goto_1
    move p1, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget v4, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMinScale:F

    .line 81
    .line 82
    cmpg-float v5, p1, v4

    .line 83
    .line 84
    if-gez v5, :cond_5

    .line 85
    .line 86
    cmpg-float v2, p1, v2

    .line 87
    .line 88
    if-gez v2, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "Scaled content to: "

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "x"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 117
    .line 118
    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 119
    .line 120
    invoke-interface {v0, p1, p0}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->setScale(FI)V

    .line 121
    .line 122
    .line 123
    return v3
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 7
    .line 8
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mEnable:Z

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mBlockScroll:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mMagnificationDelegate:Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mDisplayId:I

    .line 18
    .line 19
    invoke-interface {p1, p0, p3, p4}, Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;->processScroll(IFF)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PanningScalingHandler{mInitialScaleFactor="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mInitialScaleFactor:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mScaling="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/PanningScalingHandler;->mScaling:Z

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

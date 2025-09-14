.class public final Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mAnimatedScale:F

.field public volatile mAnimationCompleted:Z

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mAnimatorSet:Ljava/util/HashMap;

.field public mApplyAlpha:Z

.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingTaskIdToHide:I

.field public mCenterPivotOffsetX:F

.field public mCenterPivotOffsetY:F

.field public mCrossProfileCopyAllowed:Z

.field public final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field public mCurrentAlpha:F

.field public mCurrentX:F

.field public mCurrentY:F

.field public mData:Landroid/content/ClipData;

.field public mDataDescription:Landroid/content/ClipDescription;

.field public mDeviceId:I

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mDragInProgress:Z

.field public mDragInProgressByRecents:Z

.field public mDragMoved:Z

.field public mDragResult:Z

.field public mDragSplitAppIconHasDrawable:Z

.field public mFlags:I

.field public mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public mIsClosing:Z

.field public mIsObjectCapture:Z

.field public mIsUpdatingClipdata:Z

.field public mLocalWin:Landroid/os/IBinder;

.field public mMimeType:I

.field public mNeedAdjustPosition:Z

.field public mNotifiedWindows:Ljava/util/ArrayList;

.field public mObjectCaptureRect:Landroid/graphics/RectF;

.field public mOriginalAlpha:F

.field public mOriginalX:F

.field public mOriginalY:F

.field public mPid:I

.field public mPointerId:I

.field public final mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

.field public mRelinquishDragSurfaceToDropTarget:Z

.field public mScaleAnimSource:F

.field public mScaleAnimTarget:F

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSourceUserId:I

.field public mSourceX:F

.field public mSourceY:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mTargetX:F

.field public mTargetY:F

.field public mThumbOffsetX:F

.field public mThumbOffsetY:F

.field public final mTmpClipRect:Landroid/graphics/Rect;

.field public mToken:Landroid/os/IBinder;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mUid:I

.field public mUnhandledDropEvent:Landroid/view/DragEvent;


# direct methods
.method public static -$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sub-float/2addr p1, p3

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    float-to-double p0, p0

    .line 10
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    sub-float/2addr p2, p4

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    float-to-double p2, p2

    .line 22
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 23
    .line 24
    .line 25
    move-result-wide p2

    .line 26
    add-double/2addr p2, p0

    .line 27
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    double-to-float p0, p0

    .line 32
    return p0
.end method

.method public static -$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 10
    .line 11
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 12
    .line 13
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/Point;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 36
    .line 37
    new-instance v1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 43
    .line 44
    iput v0, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 45
    .line 46
    const v1, 0x3f4ccccd    # 0.8f

    .line 47
    .line 48
    .line 49
    iput v1, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 50
    .line 51
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v2, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 58
    .line 59
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 60
    .line 61
    const v3, 0x3e6147ae    # 0.22f

    .line 62
    .line 63
    .line 64
    const/high16 v4, 0x3e800000    # 0.25f

    .line 65
    .line 66
    invoke-direct {v1, v3, v4, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 70
    .line 71
    iput v2, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 76
    .line 77
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 78
    .line 79
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 80
    .line 81
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 82
    .line 83
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 84
    .line 85
    new-instance p2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    return-void
.end method

.method public static containsApplicationExtras(Landroid/content/ClipDescription;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "application/vnd.android.activity"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string v1, "application/vnd.android.shortcut"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "application/vnd.android.task"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    :cond_2
    return v0
.end method

.method public static targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    and-int/2addr p0, v1

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_1
    return v0
.end method


# virtual methods
.method public final adjustPosition(FI)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 18
    .line 19
    mul-float/2addr p1, v0

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 26
    .line 27
    :goto_1
    add-float/2addr p1, p0

    .line 28
    :cond_2
    return p1
.end method

.method public final adjustScale(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 18
    .line 19
    mul-float/2addr p1, p0

    .line 20
    :cond_1
    return p1
.end method

.method public final broadcastDragStartedLocked(FF)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x20

    .line 2
    .line 3
    const-string v2, "DragDropController#DRAG_STARTED"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 37
    .line 38
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 43
    .line 44
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 53
    .line 54
    const-string/jumbo v3, "no_cross_profile_copy_paste"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    xor-int/2addr v0, v1

    .line 62
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Broadcasting DRAG_STARTED at ("

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ")"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "WindowManager"

    .line 92
    .line 93
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/android/server/wm/DragState;->containsApplicationExtras(Landroid/content/ClipDescription;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 105
    .line 106
    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DragState;FFZ)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final cancelAnimatorAllLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final cancelDragLocked(Z)V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 10
    .line 11
    if-eqz v3, :cond_6

    .line 12
    .line 13
    if-nez p1, :cond_6

    .line 14
    .line 15
    iget p1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 16
    .line 17
    and-int/lit16 p1, p1, 0x400

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_2
    iget p1, p0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 43
    .line 44
    const/4 v3, -0x1

    .line 45
    const-string v4, "alpha"

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    const-string/jumbo v6, "scale"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v7, "y"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v8, "x"

    .line 55
    .line 56
    .line 57
    const/4 v9, 0x4

    .line 58
    const/4 v10, 0x0

    .line 59
    if-eq p1, v3, :cond_3

    .line 60
    .line 61
    new-array p1, v9, [Landroid/animation/PropertyValuesHolder;

    .line 62
    .line 63
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 64
    .line 65
    new-array v9, v0, [F

    .line 66
    .line 67
    aput v3, v9, v2

    .line 68
    .line 69
    aput v3, v9, v1

    .line 70
    .line 71
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    aput-object v3, p1, v2

    .line 76
    .line 77
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 78
    .line 79
    new-array v8, v0, [F

    .line 80
    .line 81
    aput v3, v8, v2

    .line 82
    .line 83
    aput v3, v8, v1

    .line 84
    .line 85
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    aput-object v3, p1, v1

    .line 90
    .line 91
    iget v3, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 92
    .line 93
    new-array v7, v0, [F

    .line 94
    .line 95
    aput v3, v7, v2

    .line 96
    .line 97
    aput v3, v7, v1

    .line 98
    .line 99
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    aput-object v3, p1, v0

    .line 104
    .line 105
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 106
    .line 107
    new-array v0, v0, [F

    .line 108
    .line 109
    aput v3, v0, v2

    .line 110
    .line 111
    aput v10, v0, v1

    .line 112
    .line 113
    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    aput-object v0, p1, v5

    .line 118
    .line 119
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto/16 :goto_1

    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const/4 p1, 0x0

    .line 139
    :goto_0
    if-eqz p1, :cond_5

    .line 140
    .line 141
    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    .line 142
    .line 143
    iget v9, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 144
    .line 145
    iget v11, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 146
    .line 147
    sub-float v11, v9, v11

    .line 148
    .line 149
    iget v12, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 150
    .line 151
    mul-float/2addr v11, v12

    .line 152
    iget v13, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 153
    .line 154
    add-float/2addr v11, v13

    .line 155
    mul-float/2addr v9, v12

    .line 156
    add-float/2addr v9, v13

    .line 157
    new-array v12, v0, [F

    .line 158
    .line 159
    aput v11, v12, v2

    .line 160
    .line 161
    aput v9, v12, v1

    .line 162
    .line 163
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    aput-object v8, v3, v2

    .line 168
    .line 169
    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 170
    .line 171
    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 172
    .line 173
    sub-float v9, v8, v9

    .line 174
    .line 175
    iget v11, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 176
    .line 177
    mul-float/2addr v9, v11

    .line 178
    iget v12, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 179
    .line 180
    add-float/2addr v9, v12

    .line 181
    mul-float/2addr v8, v11

    .line 182
    add-float/2addr v8, v12

    .line 183
    new-array v11, v0, [F

    .line 184
    .line 185
    aput v9, v11, v2

    .line 186
    .line 187
    aput v8, v11, v1

    .line 188
    .line 189
    invoke-static {v7, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    aput-object v7, v3, v1

    .line 194
    .line 195
    iget v7, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 196
    .line 197
    iget p1, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 198
    .line 199
    mul-float/2addr v7, p1

    .line 200
    new-array p1, v0, [F

    .line 201
    .line 202
    aput v7, p1, v2

    .line 203
    .line 204
    aput v10, p1, v1

    .line 205
    .line 206
    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    aput-object p1, v3, v0

    .line 211
    .line 212
    iget p1, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 213
    .line 214
    new-array v0, v0, [F

    .line 215
    .line 216
    aput p1, v0, v2

    .line 217
    .line 218
    aput v10, v0, v1

    .line 219
    .line 220
    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    aput-object p1, v3, v5

    .line 225
    .line 226
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    goto :goto_1

    .line 231
    :cond_5
    new-array p1, v9, [Landroid/animation/PropertyValuesHolder;

    .line 232
    .line 233
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 234
    .line 235
    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 236
    .line 237
    sub-float v9, v3, v9

    .line 238
    .line 239
    new-array v11, v0, [F

    .line 240
    .line 241
    aput v9, v11, v2

    .line 242
    .line 243
    aput v3, v11, v1

    .line 244
    .line 245
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    aput-object v3, p1, v2

    .line 250
    .line 251
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 252
    .line 253
    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 254
    .line 255
    sub-float v8, v3, v8

    .line 256
    .line 257
    new-array v9, v0, [F

    .line 258
    .line 259
    aput v8, v9, v2

    .line 260
    .line 261
    aput v3, v9, v1

    .line 262
    .line 263
    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    aput-object v3, p1, v1

    .line 268
    .line 269
    iget v3, p0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 270
    .line 271
    new-array v7, v0, [F

    .line 272
    .line 273
    aput v3, v7, v2

    .line 274
    .line 275
    aput v10, v7, v1

    .line 276
    .line 277
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    aput-object v3, p1, v0

    .line 282
    .line 283
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 284
    .line 285
    new-array v0, v0, [F

    .line 286
    .line 287
    aput v3, v0, v2

    .line 288
    .line 289
    aput v10, v0, v1

    .line 290
    .line 291
    invoke-static {v4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    aput-object v0, p1, v5

    .line 296
    .line 297
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    :goto_1
    new-instance v0, Lcom/android/server/wm/DragState$AnimationListener;

    .line 302
    .line 303
    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 304
    .line 305
    .line 306
    const-wide/16 v2, 0xc3

    .line 307
    .line 308
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    .line 310
    .line 311
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 312
    .line 313
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 323
    .line 324
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 325
    .line 326
    new-instance v2, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    .line 327
    .line 328
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    .line 333
    .line 334
    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 335
    .line 336
    return-void

    .line 337
    :cond_6
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method public final closeLocked(Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "WindowManager"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string/jumbo v1, "unregistering drag input channel"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 26
    .line 27
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 39
    .line 40
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    if-eqz v1, :cond_7

    .line 45
    .line 46
    const-string v1, "Broadcasting DRAG_ENDED"

    .line 47
    .line 48
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_6

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 68
    .line 69
    iget-boolean v15, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 70
    .line 71
    if-nez v15, :cond_5

    .line 72
    .line 73
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 74
    .line 75
    iget v8, v8, Lcom/android/server/wm/Session;->mPid:I

    .line 76
    .line 77
    iget v9, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 78
    .line 79
    if-ne v8, v9, :cond_5

    .line 80
    .line 81
    iget v8, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 82
    .line 83
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 84
    .line 85
    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    int-to-float v10, v10

    .line 90
    sub-float/2addr v8, v10

    .line 91
    iget v10, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 92
    .line 93
    const/high16 v11, 0x3f800000    # 1.0f

    .line 94
    .line 95
    cmpl-float v12, v10, v11

    .line 96
    .line 97
    if-eqz v12, :cond_2

    .line 98
    .line 99
    iget v12, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 100
    .line 101
    mul-float/2addr v8, v12

    .line 102
    :cond_2
    iget v12, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 103
    .line 104
    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    int-to-float v9, v9

    .line 107
    sub-float/2addr v12, v9

    .line 108
    cmpl-float v9, v10, v11

    .line 109
    .line 110
    if-eqz v9, :cond_3

    .line 111
    .line 112
    iget v9, v7, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 113
    .line 114
    mul-float/2addr v12, v9

    .line 115
    :cond_3
    iget v9, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 116
    .line 117
    and-int/lit16 v9, v9, 0x800

    .line 118
    .line 119
    if-eqz v9, :cond_4

    .line 120
    .line 121
    iget-object v9, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 122
    .line 123
    move-object/from16 v17, v9

    .line 124
    .line 125
    move v10, v12

    .line 126
    move v9, v8

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    move-object/from16 v17, v4

    .line 129
    .line 130
    move v9, v8

    .line 131
    move v10, v12

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    move-object/from16 v17, v4

    .line 134
    .line 135
    move v9, v5

    .line 136
    move v10, v9

    .line 137
    :goto_1
    iget v11, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 138
    .line 139
    iget v12, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 140
    .line 141
    iget v13, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 142
    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    const/4 v8, 0x4

    .line 148
    const/4 v14, 0x0

    .line 149
    const/16 v19, 0x0

    .line 150
    .line 151
    move/from16 v20, v15

    .line 152
    .line 153
    move-object/from16 v15, v16

    .line 154
    .line 155
    move-object/from16 v16, v18

    .line 156
    .line 157
    move-object/from16 v18, v19

    .line 158
    .line 159
    move/from16 v19, v20

    .line 160
    .line 161
    invoke-static/range {v8 .. v19}, Landroid/view/DragEvent;->obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v10, "Sending DRAG_ENDED to "

    .line 171
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 186
    .line 187
    invoke-interface {v9, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v10, "Unable to drag-end window "

    .line 194
    .line 195
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    :goto_2
    sget v9, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 209
    .line 210
    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 211
    .line 212
    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 213
    .line 214
    if-eq v9, v7, :cond_1

    .line 215
    .line 216
    invoke-virtual {v8}, Landroid/view/DragEvent;->recycle()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    .line 225
    .line 226
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 227
    .line 228
    const-wide/16 v7, 0x20

    .line 229
    .line 230
    const-string v1, "DragDropController#DRAG_ENDED"

    .line 231
    .line 232
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 236
    .line 237
    if-eqz v1, :cond_8

    .line 238
    .line 239
    if-eqz p1, :cond_8

    .line 240
    .line 241
    return-void

    .line 242
    :cond_8
    iget-boolean v7, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    .line 243
    .line 244
    if-eqz v7, :cond_9

    .line 245
    .line 246
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    .line 247
    .line 248
    :cond_9
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 249
    .line 250
    if-eqz v7, :cond_a

    .line 251
    .line 252
    iget-object v8, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 253
    .line 254
    invoke-virtual {v8, v7}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 259
    .line 260
    .line 261
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 262
    .line 263
    :cond_a
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 264
    .line 265
    if-eqz v7, :cond_f

    .line 266
    .line 267
    if-eqz v1, :cond_b

    .line 268
    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 270
    .line 271
    .line 272
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 273
    .line 274
    if-eqz v7, :cond_b

    .line 275
    .line 276
    iput-boolean v6, v0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 277
    .line 278
    :cond_b
    iget-boolean v7, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 279
    .line 280
    if-nez v7, :cond_e

    .line 281
    .line 282
    iget v7, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 283
    .line 284
    and-int/lit16 v7, v7, 0x800

    .line 285
    .line 286
    if-eqz v7, :cond_c

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_c
    if-eqz v1, :cond_d

    .line 290
    .line 291
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 292
    .line 293
    iget-object v8, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 294
    .line 295
    iget-object v9, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 296
    .line 297
    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 298
    .line 299
    new-instance v10, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;

    .line 300
    .line 301
    invoke-direct {v10, v7, v8}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_d
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 309
    .line 310
    iget-object v8, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 311
    .line 312
    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_e
    :goto_3
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 321
    .line 322
    iget-object v8, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 323
    .line 324
    iget-object v7, v7, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 325
    .line 326
    const/4 v9, 0x3

    .line 327
    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    const-wide/16 v9, 0x1388

    .line 335
    .line 336
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 337
    .line 338
    .line 339
    :goto_4
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 340
    .line 341
    :cond_f
    iget-object v7, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 342
    .line 343
    if-eqz v7, :cond_10

    .line 344
    .line 345
    iget-boolean v7, v0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 346
    .line 347
    if-eqz v7, :cond_11

    .line 348
    .line 349
    :cond_10
    if-eqz v1, :cond_12

    .line 350
    .line 351
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    xor-int/2addr v1, v2

    .line 358
    if-eqz v1, :cond_12

    .line 359
    .line 360
    :cond_11
    const-string v1, "Unexpectedly destroying mSurfaceControl while animation is running"

    .line 361
    .line 362
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :cond_12
    iput v6, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 366
    .line 367
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 368
    .line 369
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 370
    .line 371
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 372
    .line 373
    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 374
    .line 375
    iput v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 376
    .line 377
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 378
    .line 379
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 380
    .line 381
    if-eqz v1, :cond_13

    .line 382
    .line 383
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 384
    .line 385
    .line 386
    iput-object v4, v0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 387
    .line 388
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 389
    .line 390
    iget-object v2, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 391
    .line 392
    if-eq v2, v0, :cond_14

    .line 393
    .line 394
    const-string v0, "Unknown drag state is closed"

    .line 395
    .line 396
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto :goto_5

    .line 400
    :cond_14
    iput-object v4, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 401
    .line 402
    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    .line 403
    .line 404
    if-eqz v0, :cond_15

    .line 405
    .line 406
    const-string v0, "[TWODND] onDragStateClosedLocked"

    .line 407
    .line 408
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    .line 412
    .line 413
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    .line 414
    .line 415
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 416
    .line 417
    iput-object v4, v1, Lcom/android/server/wm/DragDropController;->mDragSourceTask:Lcom/android/server/wm/Task;

    .line 418
    .line 419
    iget-boolean v0, v1, Lcom/android/server/wm/DragDropController;->mUpdateTaskVisibilityAfterDragClosed:Z

    .line 420
    .line 421
    if-eqz v0, :cond_15

    .line 422
    .line 423
    iget-object v0, v1, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 424
    .line 425
    const/16 v1, 0x64

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    .line 429
    .line 430
    :cond_15
    :goto_5
    return-void
.end method

.method public final createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    const-string v2, "alpha"

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [F

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput p1, v3, v4

    .line 11
    .line 12
    aput p2, v3, v0

    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    aput-object p1, v1, v4

    .line 19
    .line 20
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mAlphaAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/android/server/wm/DragState$AnimationListener;

    .line 38
    .line 39
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public final createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    const-string/jumbo v2, "scale"

    .line 5
    .line 6
    .line 7
    new-array v3, v0, [F

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    aput p1, v3, v4

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    aput p2, v3, p1

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    aput-object p2, v1, v4

    .line 20
    .line 21
    const-string/jumbo p2, "pivot_offset"

    .line 22
    .line 23
    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput v2, v0, v4

    .line 28
    .line 29
    aput p3, v0, p1

    .line 30
    .line 31
    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    aput-object p2, v1, p1

    .line 36
    .line 37
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method public final createDropEvent(FFLcom/android/server/wm/WindowState;Z)Landroid/view/DragEvent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    if-eqz v1, :cond_2

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 6
    .line 7
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 12
    .line 13
    and-int/lit16 v4, v3, 0x100

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    and-int/lit8 v3, v3, 0x3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    new-instance v11, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 32
    .line 33
    iget v6, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 34
    .line 35
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    iget-object v7, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 40
    .line 41
    and-int/lit16 v8, v3, 0xc3

    .line 42
    .line 43
    iget v9, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 44
    .line 45
    move-object v3, v11

    .line 46
    move v10, v2

    .line 47
    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    .line 48
    .line 49
    .line 50
    move-object v8, v11

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    move-object v8, v3

    .line 54
    :goto_0
    iget v3, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 55
    .line 56
    if-eq v3, v2, :cond_1

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->fixUris(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {p3}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 70
    .line 71
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    move-object v0, p0

    .line 75
    move v2, p1

    .line 76
    move v3, p2

    .line 77
    move v6, v7

    .line 78
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0

    .line 83
    :cond_2
    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v1, 0x3

    .line 89
    move-object v0, p0

    .line 90
    move v2, p1

    .line 91
    move v3, p2

    .line 92
    move/from16 v6, p4

    .line 93
    .line 94
    move/from16 v7, p4

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method public final createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    new-array v3, v0, [F

    .line 14
    .line 15
    aput p1, v3, v2

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    aput p2, v3, p1

    .line 19
    .line 20
    const-string/jumbo p2, "x"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    aput-object p2, v1, v2

    .line 28
    .line 29
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    new-array p4, v0, [F

    .line 38
    .line 39
    aput p2, p4, v2

    .line 40
    .line 41
    aput p3, p4, p1

    .line 42
    .line 43
    const-string/jumbo p2, "y"

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    aput-object p2, v1, p1

    .line 51
    .line 52
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-wide/16 p2, 0x15e

    .line 57
    .line 58
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Lcom/android/server/wm/DragState$AnimationListener;

    .line 67
    .line 68
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    .line 76
    .line 77
    return-object p1
.end method

.method public final createReleaseAnimationLocked()Landroid/animation/ValueAnimator;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    const-string v5, "WindowManager"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string v0, "createObjectReleaseAnimationLocked"

    .line 29
    .line 30
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 41
    .line 42
    .line 43
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    invoke-virtual {v7}, Landroid/view/SurfaceControl;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/high16 v8, 0x3f800000    # 1.0f

    .line 50
    .line 51
    if-ge v7, v2, :cond_0

    .line 52
    .line 53
    const-string v2, "dragSurfaceWidth is wrong!!, width: "

    .line 54
    .line 55
    invoke-static {v7, v2, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move v5, v8

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 63
    .line 64
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    sub-float/2addr v5, v2

    .line 67
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-float v2, v2

    .line 74
    div-float/2addr v5, v2

    .line 75
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-virtual {p0, v8, v2}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v5, Lcom/android/server/wm/DragState$1;

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    invoke-direct {v5, p0, v7}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 101
    .line 102
    iget v5, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 103
    .line 104
    iget v7, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 105
    .line 106
    mul-float/2addr v5, v7

    .line 107
    sub-float/2addr v1, v5

    .line 108
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 109
    .line 110
    iget v8, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 111
    .line 112
    mul-float/2addr v8, v7

    .line 113
    sub-float/2addr v5, v8

    .line 114
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mObjectCaptureRect:Landroid/graphics/RectF;

    .line 115
    .line 116
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .line 117
    .line 118
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 119
    .line 120
    invoke-virtual {p0, v1, v8, v5, v7}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 141
    .line 142
    .line 143
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 144
    .line 145
    if-eqz v1, :cond_1

    .line 146
    .line 147
    iput-boolean v6, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 148
    .line 149
    :cond_1
    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 150
    .line 151
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v1, v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    .line 159
    .line 160
    return-object v2

    .line 161
    :cond_2
    const-string v0, "createReleaseAnimationLocked"

    .line 162
    .line 163
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 167
    .line 168
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 174
    .line 175
    .line 176
    const v2, 0x3e99999a    # 0.3f

    .line 177
    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    const-wide/16 v7, 0x96

    .line 181
    .line 182
    invoke-virtual {p0, v2, v5, v7, v8}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 202
    .line 203
    invoke-virtual {p0, v5}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    new-instance v5, Lcom/android/server/wm/DragState$1;

    .line 212
    .line 213
    const/4 v7, 0x0

    .line 214
    invoke-direct {v5, p0, v7}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 229
    .line 230
    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 231
    .line 232
    mul-float v7, v1, v5

    .line 233
    .line 234
    iget v8, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 235
    .line 236
    mul-float/2addr v1, v8

    .line 237
    sub-float/2addr v7, v1

    .line 238
    iget v9, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 239
    .line 240
    mul-float/2addr v5, v9

    .line 241
    mul-float/2addr v9, v8

    .line 242
    sub-float/2addr v5, v9

    .line 243
    iget v8, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 244
    .line 245
    sub-float/2addr v8, v1

    .line 246
    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 247
    .line 248
    sub-float/2addr v1, v9

    .line 249
    sub-float v7, v8, v7

    .line 250
    .line 251
    sub-float v5, v1, v5

    .line 252
    .line 253
    invoke-virtual {p0, v8, v7, v1, v5}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    new-instance v1, Ljava/util/ArrayList;

    .line 263
    .line 264
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 274
    .line 275
    .line 276
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 277
    .line 278
    if-eqz v1, :cond_3

    .line 279
    .line 280
    iput-boolean v6, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 281
    .line 282
    :cond_3
    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 283
    .line 284
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    invoke-direct {v1, v3, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    .line 292
    .line 293
    return-object v2
.end method

.method public final createScaleAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 3
    .line 4
    const-string/jumbo v2, "scale"

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [F

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput p1, v3, v4

    .line 12
    .line 13
    aput p2, v3, v0

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v1, v4

    .line 20
    .line 21
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-wide/16 v0, 0x15e

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mPositionScaleAnimInterpolator:Landroid/view/animation/PathInterpolator;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public final endDragLocked(ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 9
    .line 10
    move/from16 v5, p2

    .line 11
    .line 12
    iput-boolean v5, v0, Lcom/android/server/wm/DragState;->mRelinquishDragSurfaceToDropTarget:Z

    .line 13
    .line 14
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 22
    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_DISABLE_CANCEL_ANIMATION:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v1, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 36
    .line 37
    const/high16 v5, 0x100000

    .line 38
    .line 39
    and-int/2addr v1, v5

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    :cond_2
    iget v1, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 43
    .line 44
    and-int/lit16 v5, v1, 0x400

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    and-int/lit16 v1, v1, 0x800

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 58
    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    iget v5, v0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 62
    .line 63
    if-eq v5, v3, :cond_7

    .line 64
    .line 65
    :cond_6
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    .line 66
    .line 67
    if-eqz v5, :cond_8

    .line 68
    .line 69
    iget-boolean v5, v0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    .line 70
    .line 71
    if-eqz v5, :cond_8

    .line 72
    .line 73
    :cond_7
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DragState;->closeLocked(Z)V

    .line 74
    .line 75
    .line 76
    :cond_8
    if-eqz v1, :cond_9

    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->cancelAnimatorAllLocked()V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->createReleaseAnimationLocked()Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_9
    iget v1, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 94
    .line 95
    const/4 v5, -0x1

    .line 96
    const-string v8, "alpha"

    .line 97
    .line 98
    const/4 v9, 0x3

    .line 99
    const-string/jumbo v10, "scale"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v11, "y"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v12, "x"

    .line 106
    .line 107
    .line 108
    const/4 v13, 0x4

    .line 109
    if-eq v1, v5, :cond_a

    .line 110
    .line 111
    new-array v1, v13, [Landroid/animation/PropertyValuesHolder;

    .line 112
    .line 113
    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 114
    .line 115
    new-array v13, v2, [F

    .line 116
    .line 117
    aput v5, v13, v4

    .line 118
    .line 119
    aput v5, v13, v3

    .line 120
    .line 121
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    aput-object v5, v1, v4

    .line 126
    .line 127
    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 128
    .line 129
    new-array v12, v2, [F

    .line 130
    .line 131
    aput v5, v12, v4

    .line 132
    .line 133
    aput v5, v12, v3

    .line 134
    .line 135
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    aput-object v5, v1, v3

    .line 140
    .line 141
    iget v5, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 142
    .line 143
    new-array v11, v2, [F

    .line 144
    .line 145
    aput v5, v11, v4

    .line 146
    .line 147
    aput v5, v11, v3

    .line 148
    .line 149
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    aput-object v5, v1, v2

    .line 154
    .line 155
    iget v5, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 156
    .line 157
    new-array v2, v2, [F

    .line 158
    .line 159
    aput v5, v2, v4

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    aput v5, v2, v3

    .line 163
    .line 164
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    aput-object v2, v1, v9

    .line 169
    .line 170
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-wide/16 v6, 0xc3

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 187
    .line 188
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_b
    const/4 v1, 0x0

    .line 192
    :goto_1
    const/high16 v5, 0x40000000    # 2.0f

    .line 193
    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    .line 197
    .line 198
    iget v14, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 199
    .line 200
    iget v15, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 201
    .line 202
    sub-float/2addr v14, v15

    .line 203
    iget v6, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 204
    .line 205
    mul-float/2addr v14, v6

    .line 206
    iget v7, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 207
    .line 208
    add-float/2addr v14, v7

    .line 209
    iget v9, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 210
    .line 211
    sub-float/2addr v9, v15

    .line 212
    mul-float/2addr v9, v6

    .line 213
    add-float/2addr v9, v7

    .line 214
    new-array v6, v2, [F

    .line 215
    .line 216
    aput v14, v6, v4

    .line 217
    .line 218
    aput v9, v6, v3

    .line 219
    .line 220
    invoke-static {v12, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    aput-object v6, v13, v4

    .line 225
    .line 226
    iget v6, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 227
    .line 228
    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 229
    .line 230
    sub-float/2addr v6, v7

    .line 231
    iget v9, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 232
    .line 233
    mul-float/2addr v6, v9

    .line 234
    iget v12, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 235
    .line 236
    add-float/2addr v6, v12

    .line 237
    iget v14, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 238
    .line 239
    sub-float/2addr v14, v7

    .line 240
    mul-float/2addr v14, v9

    .line 241
    add-float/2addr v14, v12

    .line 242
    new-array v7, v2, [F

    .line 243
    .line 244
    aput v6, v7, v4

    .line 245
    .line 246
    aput v14, v7, v3

    .line 247
    .line 248
    invoke-static {v11, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    aput-object v6, v13, v3

    .line 253
    .line 254
    iget v6, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 255
    .line 256
    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 257
    .line 258
    mul-float/2addr v6, v1

    .line 259
    new-array v1, v2, [F

    .line 260
    .line 261
    aput v6, v1, v4

    .line 262
    .line 263
    aput v6, v1, v3

    .line 264
    .line 265
    invoke-static {v10, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    aput-object v1, v13, v2

    .line 270
    .line 271
    iget v1, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 272
    .line 273
    div-float v5, v1, v5

    .line 274
    .line 275
    new-array v2, v2, [F

    .line 276
    .line 277
    aput v1, v2, v4

    .line 278
    .line 279
    aput v5, v2, v3

    .line 280
    .line 281
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const/4 v2, 0x3

    .line 286
    aput-object v1, v13, v2

    .line 287
    .line 288
    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    goto :goto_2

    .line 293
    :cond_c
    new-array v1, v13, [Landroid/animation/PropertyValuesHolder;

    .line 294
    .line 295
    iget v6, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 296
    .line 297
    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 298
    .line 299
    sub-float/2addr v6, v7

    .line 300
    iget v9, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 301
    .line 302
    sub-float/2addr v9, v7

    .line 303
    new-array v7, v2, [F

    .line 304
    .line 305
    aput v6, v7, v4

    .line 306
    .line 307
    aput v9, v7, v3

    .line 308
    .line 309
    invoke-static {v12, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    aput-object v6, v1, v4

    .line 314
    .line 315
    iget v6, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 316
    .line 317
    iget v7, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 318
    .line 319
    sub-float/2addr v6, v7

    .line 320
    iget v9, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 321
    .line 322
    sub-float/2addr v9, v7

    .line 323
    new-array v7, v2, [F

    .line 324
    .line 325
    aput v6, v7, v4

    .line 326
    .line 327
    aput v9, v7, v3

    .line 328
    .line 329
    invoke-static {v11, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    aput-object v6, v1, v3

    .line 334
    .line 335
    iget v6, v0, Lcom/android/server/wm/DragState;->mAnimatedScale:F

    .line 336
    .line 337
    new-array v7, v2, [F

    .line 338
    .line 339
    aput v6, v7, v4

    .line 340
    .line 341
    aput v6, v7, v3

    .line 342
    .line 343
    invoke-static {v10, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    aput-object v6, v1, v2

    .line 348
    .line 349
    iget v6, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 350
    .line 351
    div-float v5, v6, v5

    .line 352
    .line 353
    new-array v2, v2, [F

    .line 354
    .line 355
    aput v6, v2, v4

    .line 356
    .line 357
    aput v5, v2, v3

    .line 358
    .line 359
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    const/4 v3, 0x3

    .line 364
    aput-object v2, v1, v3

    .line 365
    .line 366
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    :goto_2
    iget v2, v0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 371
    .line 372
    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 373
    .line 374
    sub-float/2addr v2, v3

    .line 375
    iget v3, v0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 376
    .line 377
    iget v5, v0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 378
    .line 379
    sub-float/2addr v3, v5

    .line 380
    mul-float/2addr v2, v2

    .line 381
    mul-float/2addr v3, v3

    .line 382
    add-float/2addr v3, v2

    .line 383
    float-to-double v2, v3

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    iget-object v5, v0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 389
    .line 390
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 391
    .line 392
    mul-int/2addr v6, v6

    .line 393
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 394
    .line 395
    mul-int/2addr v5, v5

    .line 396
    add-int/2addr v5, v6

    .line 397
    int-to-double v5, v5

    .line 398
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 399
    .line 400
    .line 401
    move-result-wide v5

    .line 402
    div-double/2addr v2, v5

    .line 403
    const-wide v5, 0x4066800000000000L    # 180.0

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    mul-double/2addr v2, v5

    .line 409
    double-to-long v2, v2

    .line 410
    const-wide/16 v5, 0xc3

    .line 411
    .line 412
    add-long v6, v2, v5

    .line 413
    .line 414
    :goto_3
    new-instance v2, Lcom/android/server/wm/DragState$AnimationListener;

    .line 415
    .line 416
    invoke-direct {v2, v0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 423
    .line 424
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 431
    .line 432
    .line 433
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 434
    .line 435
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 436
    .line 437
    new-instance v3, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;

    .line 438
    .line 439
    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda3;-><init>(Landroid/animation/ValueAnimator;I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    .line 444
    .line 445
    :goto_4
    iput-object v1, v0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 446
    .line 447
    return-void
.end method

.method public final getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;
    .locals 9

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 4
    .line 5
    and-int/lit16 v1, v0, 0x100

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 26
    .line 27
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    iget-object v5, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 32
    .line 33
    and-int/lit8 v6, v1, 0x3

    .line 34
    .line 35
    iget v7, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 36
    .line 37
    iget p0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 38
    .line 39
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/content/ClipData;ILjava/lang/String;III)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final isAnimationSet()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_0
    return v1
.end method

.method public final isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final notifyDownEventLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    const-string v2, "WindowManager"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "notifyDownEventLocked(), isAnimating() is true"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 21
    .line 22
    and-int/lit16 v0, v0, 0x200

    .line 23
    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    const-string v0, "createPressAnimationLocked"

    .line 27
    .line 28
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const-wide/16 v3, 0xc8

    .line 43
    .line 44
    const/high16 v5, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 61
    .line 62
    const v3, 0x3f4ccccd    # 0.8f

    .line 63
    .line 64
    .line 65
    if-ne v2, v1, :cond_1

    .line 66
    .line 67
    iput v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 68
    .line 69
    iput v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 73
    .line 74
    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    .line 76
    mul-float/2addr v2, v4

    .line 77
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 78
    .line 79
    const/16 v5, 0xc7

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    cmpl-float v5, v2, v5

    .line 86
    .line 87
    if-ltz v5, :cond_2

    .line 88
    .line 89
    const/16 v5, 0xc8

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    div-float/2addr v4, v2

    .line 96
    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 97
    .line 98
    mul-float/2addr v4, v3

    .line 99
    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/16 v5, 0x63

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    cmpg-float v5, v2, v5

    .line 109
    .line 110
    if-gtz v5, :cond_3

    .line 111
    .line 112
    const/16 v5, 0x64

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    div-float/2addr v4, v2

    .line 119
    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 120
    .line 121
    mul-float/2addr v4, v3

    .line 122
    iput v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 123
    .line 124
    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 125
    .line 126
    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 127
    .line 128
    mul-float v4, v2, v3

    .line 129
    .line 130
    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 131
    .line 132
    mul-float/2addr v2, v5

    .line 133
    sub-float v2, v4, v2

    .line 134
    .line 135
    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 136
    .line 137
    mul-float/2addr v3, v6

    .line 138
    mul-float/2addr v6, v5

    .line 139
    sub-float v5, v3, v6

    .line 140
    .line 141
    iget v6, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 142
    .line 143
    sub-float/2addr v6, v4

    .line 144
    iput v6, p0, Lcom/android/server/wm/DragState;->mTargetX:F

    .line 145
    .line 146
    iget v4, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 147
    .line 148
    sub-float/2addr v4, v3

    .line 149
    iput v4, p0, Lcom/android/server/wm/DragState;->mTargetY:F

    .line 150
    .line 151
    add-float/2addr v2, v6

    .line 152
    iput v2, p0, Lcom/android/server/wm/DragState;->mSourceX:F

    .line 153
    .line 154
    add-float/2addr v5, v4

    .line 155
    iput v5, p0, Lcom/android/server/wm/DragState;->mSourceY:F

    .line 156
    .line 157
    invoke-virtual {p0, v2, v6, v5, v4}, Lcom/android/server/wm/DragState;->createPositionAnimator(FFFF)Landroid/animation/ValueAnimator;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget v2, p0, Lcom/android/server/wm/DragState;->mScaleAnimTarget:F

    .line 171
    .line 172
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 177
    .line 178
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DragState;->createScaleAnimator(FF)Landroid/animation/ValueAnimator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    new-instance v3, Lcom/android/server/wm/DragState$AnimationListener;

    .line 187
    .line 188
    const/4 v4, 0x3

    .line 189
    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 199
    .line 200
    const/4 v4, 0x2

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    new-instance v2, Ljava/util/ArrayList;

    .line 209
    .line 210
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 220
    .line 221
    .line 222
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 223
    .line 224
    if-eqz v2, :cond_4

    .line 225
    .line 226
    iput-boolean v1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 227
    .line 228
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 231
    .line 232
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    .line 240
    .line 241
    :cond_5
    return-void
.end method

.method public final notifyLocationToEavesdropDragEventWindowLocked(FF)V
    .locals 13

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string/jumbo v1, "sending DRAG_LOCATION to "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v8, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 56
    .line 57
    const/4 v11, 0x1

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v5, 0x2

    .line 60
    const/4 v9, 0x0

    .line 61
    const/4 v10, 0x0

    .line 62
    move-object v4, p0

    .line 63
    move v6, p1

    .line 64
    move v7, p2

    .line 65
    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/DragEvent;->setEavesDrop(Z)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 74
    .line 75
    invoke-interface {p1, p0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 79
    .line 80
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 81
    .line 82
    if-eq v3, p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/DragEvent;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    const-string p0, "can\'t send drag notification to a window eavesdropping dragEvent"

    .line 89
    .line 90
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public final notifyUpdateClipDataLocked()V
    .locals 15

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string/jumbo v1, "notifyUpdateClipDataLocked(), isAnimating() is true"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v1, "createUpdateClipDataAnimationLocked"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    .line 16
    .line 17
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    .line 26
    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const v3, 0x3f99999a    # 1.2f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DragState;->adjustScale(F)F

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    mul-float/2addr v3, v10

    .line 48
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-float v4, v4

    .line 55
    sub-float/2addr v3, v4

    .line 56
    const/high16 v4, 0x40000000    # 2.0f

    .line 57
    .line 58
    div-float v11, v3, v4

    .line 59
    .line 60
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    cmpl-float v3, v3, v4

    .line 64
    .line 65
    if-nez v3, :cond_0

    .line 66
    .line 67
    iput v2, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 68
    .line 69
    :cond_0
    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    .line 70
    .line 71
    const-wide/16 v4, 0x64

    .line 72
    .line 73
    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    const v3, 0x3e99999a    # 0.3f

    .line 78
    .line 79
    .line 80
    const-wide/16 v4, 0x12c

    .line 81
    .line 82
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-wide/16 v7, 0x12c

    .line 87
    .line 88
    move-object v3, p0

    .line 89
    move v4, v9

    .line 90
    move v5, v10

    .line 91
    move v6, v11

    .line 92
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    new-instance v3, Lcom/android/server/wm/DragState$2;

    .line 97
    .line 98
    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/DragState$2;-><init>(Lcom/android/server/wm/DragState;Landroid/animation/AnimatorSet;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v13, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 108
    .line 109
    const/4 v14, 0x2

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const-wide/16 v7, 0x1f4

    .line 118
    .line 119
    move-object v3, p0

    .line 120
    move v4, v10

    .line 121
    move v5, v9

    .line 122
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DragState;->createCenteredScaleAnimator(FFFJ)Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Lcom/android/server/wm/DragState$1;

    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/DragState$1;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 164
    .line 165
    new-instance v1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 3
    .line 4
    iget v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 5
    .line 6
    if-eqz p7, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 9
    .line 10
    :goto_0
    move v5, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :goto_1
    if-eqz p6, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 17
    .line 18
    :goto_2
    move-object v9, v0

    .line 19
    goto :goto_3

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    goto :goto_2

    .line 22
    :goto_3
    const/4 v11, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move v0, p1

    .line 25
    move v1, p2

    .line 26
    move v2, p3

    .line 27
    move-object/from16 v7, p4

    .line 28
    .line 29
    move-object/from16 v8, p5

    .line 30
    .line 31
    move-object/from16 v10, p8

    .line 32
    .line 33
    invoke-static/range {v0 .. v11}, Landroid/view/DragEvent;->obtain(IFFFFILjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Landroid/view/SurfaceControl;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final reportDropWindowLock(Landroid/os/IBinder;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const-wide/16 v0, 0x20

    .line 8
    .line 9
    :try_start_0
    const-string v2, "DragDropController#DROP"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLockInner(Landroid/os/IBinder;FF)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final reportDropWindowLockInner(Landroid/os/IBinder;FF)Z
    .locals 11

    .line 1
    const-string v0, "can\'t send drop notification to win "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p0, p2, p3, v1, v3}, Lcom/android/server/wm/DragState;->createDropEvent(FFLcom/android/server/wm/WindowState;Z)Landroid/view/DragEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 30
    .line 31
    const-string v6, "WindowManager"

    .line 32
    .line 33
    const-wide/16 v7, 0x20

    .line 34
    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    const-string/jumbo p2, "unhandled-drop"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v1, p2, p1}, Lcom/android/server/wm/DragDropController;->notifyUnhandledDrop(Landroid/view/DragEvent;Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    const-string p2, "DragDropController#noWindow"

    .line 48
    .line 49
    invoke-static {v7, v8, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, "Drop outside a valid window "

    .line 58
    .line 59
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v9, "Sending DROP to "

    .line 79
    .line 80
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 94
    .line 95
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/android/server/wm/DragState;->createDropEvent(FFLcom/android/server/wm/WindowState;Z)Landroid/view/DragEvent;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    :try_start_0
    const-string p3, "DragDropController#dispatchDrop"

    .line 104
    .line 105
    invoke-static {v7, v8, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 109
    .line 110
    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 111
    .line 112
    .line 113
    iget-object p3, v5, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 114
    .line 115
    invoke-virtual {p3, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const-wide/16 v9, 0x1388

    .line 123
    .line 124
    invoke-virtual {p3, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 128
    .line 129
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 130
    .line 131
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 132
    .line 133
    if-eq p3, p1, :cond_3

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 139
    .line 140
    .line 141
    iput-object v4, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mUnhandledDropEvent:Landroid/view/DragEvent;

    .line 144
    .line 145
    return v3

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {v6, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/DragState;->endDragLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 167
    .line 168
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 169
    .line 170
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 171
    .line 172
    if-eq p0, p1, :cond_4

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 175
    .line 176
    .line 177
    :cond_4
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 178
    .line 179
    .line 180
    return v2

    .line 181
    :goto_0
    sget p3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 184
    .line 185
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 186
    .line 187
    if-eq p3, p1, :cond_5

    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    .line 190
    .line 191
    .line 192
    :cond_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 193
    .line 194
    .line 195
    throw p0
.end method

.method public final restartDragLocked(Landroid/content/ClipData;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 39
    .line 40
    iget v6, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 41
    .line 42
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    move-object v8, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->setCallingUserId(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v8, v2

    .line 65
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const/4 v4, 0x1

    .line 70
    const/4 v9, 0x1

    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v3, p0

    .line 73
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    iget v5, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 79
    .line 80
    iget v6, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 81
    .line 82
    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 83
    .line 84
    iget-object v8, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v4, 0x1

    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v3, p0

    .line 91
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :goto_3
    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 96
    .line 97
    and-int/lit16 v3, v3, 0x100

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    invoke-virtual {v2, v3}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :try_start_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 106
    .line 107
    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEventUpdated(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 115
    .line 116
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 117
    .line 118
    if-eq v3, v1, :cond_1

    .line 119
    .line 120
    :goto_4
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_5

    .line 126
    :catch_0
    :try_start_1
    const-string v3, "WindowManager"

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v5, "Unable to drag-restart window "

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 153
    .line 154
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 155
    .line 156
    if-eq v3, v1, :cond_1

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :goto_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 164
    .line 165
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 166
    .line 167
    if-eq p1, v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 170
    .line 171
    .line 172
    :cond_5
    throw p0

    .line 173
    :cond_6
    return-void
.end method

.method public final sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    const-string v11, "Unable to drag-start window "

    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DragState;->targetInterceptsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-boolean v2, v0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 11
    .line 12
    if-eqz v2, :cond_16

    .line 13
    .line 14
    if-nez v10, :cond_0

    .line 15
    .line 16
    goto/16 :goto_c

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 19
    .line 20
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 21
    .line 22
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v12, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    move v2, v12

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v4

    .line 33
    :goto_0
    if-nez v2, :cond_2

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    if-eqz p4, :cond_2

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_16

    .line 48
    .line 49
    :cond_3
    iget-boolean v3, v10, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 50
    .line 51
    if-nez v3, :cond_16

    .line 52
    .line 53
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 54
    .line 55
    if-eqz v3, :cond_16

    .line 56
    .line 57
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 58
    .line 59
    if-eqz v3, :cond_16

    .line 60
    .line 61
    iget v3, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 62
    .line 63
    and-int/lit16 v5, v3, 0x1000

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    move v4, v12

    .line 68
    :cond_4
    and-int/lit16 v3, v3, 0x100

    .line 69
    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    if-eqz v4, :cond_6

    .line 74
    .line 75
    :goto_1
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    .line 80
    .line 81
    const/16 v5, 0x18

    .line 82
    .line 83
    if-lt v3, v5, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    if-nez v2, :cond_7

    .line 87
    .line 88
    goto/16 :goto_c

    .line 89
    .line 90
    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 91
    .line 92
    if-nez v1, :cond_8

    .line 93
    .line 94
    iget v2, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 95
    .line 96
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 97
    .line 98
    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    .line 99
    .line 100
    if-eq v2, v3, :cond_8

    .line 101
    .line 102
    goto/16 :goto_c

    .line 103
    .line 104
    :cond_8
    if-eqz v1, :cond_9

    .line 105
    .line 106
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eq v2, v3, :cond_9

    .line 115
    .line 116
    goto/16 :goto_c

    .line 117
    .line 118
    :cond_9
    if-nez v1, :cond_a

    .line 119
    .line 120
    iget-boolean v2, v0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 121
    .line 122
    if-nez v2, :cond_a

    .line 123
    .line 124
    iget v2, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 125
    .line 126
    iget v3, v10, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 127
    .line 128
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ne v2, v3, :cond_16

    .line 133
    .line 134
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v3, "Sending DRAG_STARTED to new window "

    .line 137
    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const-string v13, "WindowManager"

    .line 149
    .line 150
    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    if-eqz v1, :cond_e

    .line 155
    .line 156
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 157
    .line 158
    if-eqz v3, :cond_d

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-nez v3, :cond_b

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_b
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_c

    .line 182
    .line 183
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    goto :goto_3

    .line 192
    :cond_c
    new-instance v4, Landroid/os/PersistableBundle;

    .line 193
    .line 194
    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 195
    .line 196
    .line 197
    :goto_3
    const-string v5, "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

    .line 198
    .line 199
    iget v6, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 200
    .line 201
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 209
    .line 210
    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v5, "Adding EXTRA_HIDE_DRAG_SOURCE_TASK_ID="

    .line 214
    .line 215
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget v5, v0, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 219
    .line 220
    invoke-static {v4, v5, v13}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_d
    :goto_4
    const-string v3, "DragState"

    .line 225
    .line 226
    const-string v4, "clipdata or description is null"

    .line 227
    .line 228
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_e
    move-object v3, v2

    .line 232
    :goto_5
    if-eqz v3, :cond_f

    .line 233
    .line 234
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    :goto_6
    move-object v5, v3

    .line 239
    goto :goto_7

    .line 240
    :cond_f
    iget-object v3, v0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :goto_7
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 244
    .line 245
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 246
    .line 247
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 248
    .line 249
    int-to-float v4, v4

    .line 250
    sub-float v4, p2, v4

    .line 251
    .line 252
    iget v6, v10, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 253
    .line 254
    const/high16 v7, 0x3f800000    # 1.0f

    .line 255
    .line 256
    cmpl-float v8, v6, v7

    .line 257
    .line 258
    if-eqz v8, :cond_10

    .line 259
    .line 260
    iget v8, v10, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 261
    .line 262
    mul-float/2addr v4, v8

    .line 263
    :cond_10
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 264
    .line 265
    int-to-float v3, v3

    .line 266
    sub-float v3, p3, v3

    .line 267
    .line 268
    cmpl-float v6, v6, v7

    .line 269
    .line 270
    if-eqz v6, :cond_11

    .line 271
    .line 272
    iget v6, v10, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 273
    .line 274
    mul-float/2addr v3, v6

    .line 275
    :cond_11
    move v6, v3

    .line 276
    if-eqz v1, :cond_13

    .line 277
    .line 278
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 279
    .line 280
    if-nez v1, :cond_12

    .line 281
    .line 282
    move-object v7, v2

    .line 283
    goto :goto_8

    .line 284
    :cond_12
    invoke-virtual {v1}, Landroid/content/ClipData;->copyForTransferWithActivityInfo()Landroid/content/ClipData;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget v2, v0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->setCallingUserId(I)V

    .line 291
    .line 292
    .line 293
    iget-object v2, v0, Lcom/android/server/wm/DragState;->mCallingPackageName:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->setCallingPackageName(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    move-object v7, v1

    .line 299
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DragState;->getPermissionsHandlerIfPossible(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/DragAndDropPermissionsHandler;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    const/4 v8, 0x1

    .line 304
    const/4 v2, 0x1

    .line 305
    const/4 v14, 0x1

    .line 306
    move-object v1, p0

    .line 307
    move v3, v4

    .line 308
    move v4, v6

    .line 309
    move-object v6, v7

    .line 310
    move v7, v14

    .line 311
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    goto :goto_9

    .line 316
    :cond_13
    const/4 v7, 0x0

    .line 317
    const/4 v8, 0x0

    .line 318
    const/4 v2, 0x1

    .line 319
    const/4 v9, 0x0

    .line 320
    const/4 v14, 0x0

    .line 321
    move-object v1, p0

    .line 322
    move v3, v4

    .line 323
    move v4, v6

    .line 324
    move-object v6, v7

    .line 325
    move v7, v9

    .line 326
    move-object v9, v14

    .line 327
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;ZZLcom/android/server/wm/DragAndDropPermissionsHandler;)Landroid/view/DragEvent;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    :goto_9
    if-eqz p5, :cond_14

    .line 332
    .line 333
    iget v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 334
    .line 335
    and-int/lit16 v2, v2, 0x100

    .line 336
    .line 337
    if-eqz v2, :cond_14

    .line 338
    .line 339
    invoke-virtual {v1, v12}, Landroid/view/DragEvent;->setIsStickyEvent(Z)V

    .line 340
    .line 341
    .line 342
    :cond_14
    :try_start_0
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 343
    .line 344
    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .line 351
    .line 352
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 353
    .line 354
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 355
    .line 356
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 357
    .line 358
    if-eq v0, v2, :cond_16

    .line 359
    .line 360
    :goto_a
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 361
    .line 362
    .line 363
    goto :goto_c

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    goto :goto_b

    .line 366
    :catch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .line 380
    .line 381
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 382
    .line 383
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 384
    .line 385
    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    .line 386
    .line 387
    if-eq v0, v2, :cond_16

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :goto_b
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 391
    .line 392
    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 393
    .line 394
    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    .line 395
    .line 396
    if-eq v2, v3, :cond_15

    .line 397
    .line 398
    invoke-virtual {v1}, Landroid/view/DragEvent;->recycle()V

    .line 399
    .line 400
    .line 401
    :cond_15
    throw v0

    .line 402
    :cond_16
    :goto_c
    return-void
.end method

.method public final updateDragSurfaceLocked(ZFF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_f

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    xor-int/2addr v3, v2

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_DND_OBJECT_CAPTURE:Z

    .line 33
    .line 34
    const-string v4, "WindowManager"

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mIsObjectCapture:Z

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 53
    .line 54
    const-string/jumbo p0, "skip createMoveAnimation"

    .line 55
    .line 56
    .line 57
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 68
    .line 69
    const/16 v5, 0xa

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DragDropController;->dpToPixel(I)F

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    new-instance v5, Landroid/graphics/RectF;

    .line 76
    .line 77
    iget v6, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 78
    .line 79
    sub-float v7, v6, v3

    .line 80
    .line 81
    iget v8, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 82
    .line 83
    sub-float v9, v8, v3

    .line 84
    .line 85
    add-float/2addr v6, v3

    .line 86
    add-float/2addr v8, v3

    .line 87
    invoke-direct {v5, v7, v9, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragMoved:Z

    .line 98
    .line 99
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    .line 100
    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->isAnimationSet()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_7

    .line 121
    .line 122
    iget-boolean v3, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 123
    .line 124
    if-nez v3, :cond_8

    .line 125
    .line 126
    iget v3, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 127
    .line 128
    const/high16 v6, 0x100000

    .line 129
    .line 130
    and-int/2addr v3, v6

    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    const-string/jumbo v1, "skip createMoveAnimationLocked"

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    const-string v3, "createMoveAnimationLocked"

    .line 141
    .line 142
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 146
    .line 147
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 148
    .line 149
    .line 150
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 153
    .line 154
    .line 155
    const v4, 0x3e99999a    # 0.3f

    .line 156
    .line 157
    .line 158
    const-wide/16 v6, 0x96

    .line 159
    .line 160
    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/wm/DragState;->createAlphaAnimator(FFJ)Landroid/animation/ValueAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iget-object v6, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-object v4, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 190
    .line 191
    new-instance v4, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-direct {v4, v6, v3}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DragState;->mApplyAlpha:Z

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mDragSplitAppIconHasDrawable:Z

    .line 204
    .line 205
    if-nez v1, :cond_8

    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 208
    .line 209
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 210
    .line 211
    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 212
    .line 213
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 214
    .line 215
    .line 216
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 217
    .line 218
    iget v1, p0, Lcom/android/server/wm/DragState;->mMimeType:I

    .line 219
    .line 220
    if-nez v1, :cond_9

    .line 221
    .line 222
    iget v5, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 223
    .line 224
    :cond_9
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 225
    .line 226
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 227
    .line 228
    if-nez p1, :cond_a

    .line 229
    .line 230
    return-void

    .line 231
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 240
    .line 241
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 242
    .line 243
    if-eqz p1, :cond_d

    .line 244
    .line 245
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 246
    .line 247
    mul-float/2addr v0, v5

    .line 248
    sub-float v0, p2, v0

    .line 249
    .line 250
    iget v1, p1, Landroid/view/MagnificationSpec;->scale:F

    .line 251
    .line 252
    mul-float/2addr v0, v1

    .line 253
    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 254
    .line 255
    add-float/2addr v0, v2

    .line 256
    float-to-int v0, v0

    .line 257
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 258
    .line 259
    mul-float/2addr v2, v5

    .line 260
    sub-float v2, p3, v2

    .line 261
    .line 262
    mul-float/2addr v2, v1

    .line 263
    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 264
    .line 265
    add-float/2addr v2, p1

    .line 266
    float-to-int p1, v2

    .line 267
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 270
    .line 271
    int-to-float v0, v0

    .line 272
    int-to-float p1, p1

    .line 273
    invoke-virtual {v1, v2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_b
    if-eqz v0, :cond_c

    .line 282
    .line 283
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 284
    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 286
    .line 287
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 288
    .line 289
    mul-float/2addr v1, v5

    .line 290
    sub-float v1, p2, v1

    .line 291
    .line 292
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 293
    .line 294
    mul-float/2addr v2, v5

    .line 295
    sub-float v2, p3, v2

    .line 296
    .line 297
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 308
    .line 309
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 310
    .line 311
    sub-float v1, p2, v1

    .line 312
    .line 313
    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 314
    .line 315
    sub-float v2, p3, v2

    .line 316
    .line 317
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 322
    .line 323
    .line 324
    :cond_d
    :goto_2
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 325
    .line 326
    const/4 v0, 0x2

    .line 327
    aget-boolean p1, p1, v0

    .line 328
    .line 329
    if-eqz p1, :cond_e

    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 332
    .line 333
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    iget v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 338
    .line 339
    sub-float/2addr p2, v0

    .line 340
    float-to-int p2, p2

    .line 341
    int-to-long v0, p2

    .line 342
    iget p0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 343
    .line 344
    sub-float/2addr p3, p0

    .line 345
    float-to-int p0, p3

    .line 346
    int-to-long p2, p0

    .line 347
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 348
    .line 349
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object p2

    .line 357
    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    const/16 v5, 0x14

    .line 362
    .line 363
    const/4 v6, 0x0

    .line 364
    const-wide v3, 0x2cfc62903f381fL

    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_e
    return-void

    .line 373
    :cond_f
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    .line 374
    .line 375
    if-eqz p1, :cond_10

    .line 376
    .line 377
    iget-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    .line 378
    .line 379
    if-eqz p1, :cond_10

    .line 380
    .line 381
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 382
    .line 383
    iput p3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 384
    .line 385
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mAnimatorSet:Ljava/util/HashMap;

    .line 386
    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    if-nez p1, :cond_10

    .line 396
    .line 397
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 398
    .line 399
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 400
    .line 401
    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 402
    .line 403
    iget v4, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 404
    .line 405
    mul-float/2addr v3, v4

    .line 406
    sub-float/2addr p2, v3

    .line 407
    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    iget v1, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 412
    .line 413
    iget v3, p0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    .line 414
    .line 415
    mul-float/2addr v1, v3

    .line 416
    sub-float/2addr p3, v1

    .line 417
    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    invoke-virtual {p1, v0, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 426
    .line 427
    .line 428
    :cond_10
    return-void
.end method

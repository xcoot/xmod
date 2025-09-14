.class public final Lcom/android/server/inputmethod/HandwritingModeController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayId:I

.field public mCurrentRequestId:I

.field public mDelegatePackageName:Ljava/lang/String;

.field public mDelegationConnectionlessFlow:Z

.field public mDelegationIdleTimeoutHandler:Landroid/os/Handler;

.field public mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

.field public mDelegatorFromDefaultHomePackage:Z

.field public mDelegatorPackageName:Ljava/lang/String;

.field public final mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

.field public mHandwritingBuffer:Ljava/util/ArrayList;

.field public mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

.field public mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

.field public mInkWindowInitRunnable:Ljava/lang/Runnable;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mLooper:Landroid/os/Looper;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mRecordingGesture:Z

.field public mRecordingGestureAfterStylusUp:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 10
    .line 11
    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 20
    .line 21
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 30
    .line 31
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final clearPendingHandwritingDelegation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDiscardDelegationTextRunnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final getCurrentRequestId()Ljava/util/OptionalInt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "HandwritingModeController"

    .line 6
    .line 7
    const-string v0, "Cannot get requestId: Handwriting was not initialized."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 18
    .line 19
    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getHandwritingBufferSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/16 p0, 0x7d0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const/16 p0, 0x64

    .line 13
    .line 14
    return p0
.end method

.method public final initializeHandwritingSpy(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 28
    .line 29
    :cond_1
    const-string/jumbo v0, "stylus-handwriting-event-receiver-"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "Failed to create input channel"

    .line 45
    .line 46
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->getHandwritingSurfaceForDisplay(I)Landroid/view/SurfaceControl;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_1
    if-nez v3, :cond_3

    .line 63
    .line 64
    const-string p0, "HandwritingModeController"

    .line 65
    .line 66
    const-string p1, "Failed to create input surface"

    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    new-instance v4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 73
    .line 74
    invoke-direct {v4, v0, p1, v3, v2}, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;-><init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    .line 75
    .line 76
    .line 77
    iput-object v4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 78
    .line 79
    new-instance p1, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    .line 86
    .line 87
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0, v2, v3, v4}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 100
    .line 101
    iget p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 102
    .line 103
    add-int/2addr p1, v1

    .line 104
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 105
    .line 106
    return-void
.end method

.method public final isStylusGestureOngoing()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/MotionEvent;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    sub-long/2addr v3, v0

    .line 42
    const-wide/16 v0, 0xc8

    .line 43
    .line 44
    cmp-long p0, v3, v0

    .line 45
    .line 46
    if-gez p0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    return v2

    .line 51
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 52
    .line 53
    return p0
.end method

.method public final prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 15
    .line 16
    check-cast p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 39
    .line 40
    :cond_0
    iput-boolean p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 41
    .line 42
    if-nez p4, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    new-instance p1, Landroid/os/Handler;

    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mLooper:Landroid/os/Looper;

    .line 74
    .line 75
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/HandwritingModeController;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutRunnable:Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationIdleTimeoutHandler:Landroid/os/Handler;

    .line 94
    .line 95
    const-wide/16 p2, 0xbb8

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final reset(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 62
    .line 63
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 68
    .line 69
    .line 70
    :cond_3
    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 72
    .line 73
    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 74
    .line 75
    return-void
.end method

.method public final startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 5
    .line 6
    const-string v1, "HandwritingModeController"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "Cannot start handwriting session: Handwriting was not initialized."

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Cannot start handwriting session: Invalid request id: "

    .line 22
    .line 23
    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    const-string p0, "Cannot start handwriting session: No stylus gesture is being recorded."

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 40
    .line 41
    const-string v0, "Handwriting session was already transferred to IME."

    .line 42
    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/view/MotionEvent;

    .line 54
    .line 55
    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v6, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 66
    .line 67
    invoke-virtual {v6, p4, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isPointInsideWindow(Landroid/os/IBinder;IFF)Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-nez p4, :cond_3

    .line 72
    .line 73
    const-string p0, "Cannot start handwriting session: Stylus gesture did not start inside the focused window."

    .line 74
    .line 75
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_3
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 80
    .line 81
    .line 82
    move-result-object p4

    .line 83
    iget-object v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p4, v1}, Landroid/hardware/input/InputManagerGlobal;->pilferPointers(Landroid/os/IBinder;)V

    .line 92
    .line 93
    .line 94
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 95
    .line 96
    invoke-virtual {p4}, Landroid/view/InputEventReceiver;->dispose()V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 104
    .line 105
    iget-object p4, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 106
    .line 107
    iget-boolean v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    .line 108
    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    iget-object v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 112
    .line 113
    iput p2, v1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 114
    .line 115
    iput p3, v1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 116
    .line 117
    iget p2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 118
    .line 119
    and-int/lit16 p2, p2, -0x4001

    .line 120
    .line 121
    iput p2, v1, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 122
    .line 123
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 124
    .line 125
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object p3, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 129
    .line 130
    iget-object v1, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    .line 131
    .line 132
    invoke-virtual {p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 137
    .line 138
    .line 139
    const/4 p2, 0x1

    .line 140
    iput-boolean p2, p4, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    .line 141
    .line 142
    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    const-class p4, Landroid/hardware/input/InputManager;

    .line 145
    .line 146
    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    move-object v1, p3

    .line 151
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 152
    .line 153
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {p3, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/input/InputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    .line 183
    .line 184
    .line 185
    new-instance p1, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    .line 186
    .line 187
    iget p2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentRequestId:I

    .line 188
    .line 189
    iget-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    .line 190
    .line 191
    iget-object p3, p3, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    const-string p1, "Handwriting surface should not be already intercepting."

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

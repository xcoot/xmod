.class public final Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static SEC_DEBUG:Z


# instance fields
.field public final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

.field public final mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field public mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationCapabilities:I

.field public mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mSupportWindowMagnification:Z

.field public final mTempPoint:Landroid/graphics/PointF;

.field public final mTransitionModes:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;)V

    .line 35
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 36
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 5
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 6
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 8
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 9
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 10
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 12
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 14
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 16
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 17
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 18
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 19
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x800

    .line 20
    invoke-virtual {p2, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 21
    sget-object p4, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callbacks={"

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v3, "AccessibilityController.setAccessibilityWindowManagerCallbacks"

    invoke-virtual {p2, v3, v1, v2, p4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    :cond_0
    iget-object p4, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-nez p4, :cond_1

    .line 23
    new-instance p4, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    iget-object v1, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p4, p2, v1, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;Landroid/os/Looper;Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;)V

    iput-object p4, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    .line 24
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 25
    new-instance p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 26
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 30
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V

    .line 31
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p5, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;)V

    .line 32
    :try_start_0
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Accessibility window manager callback already set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_2

    .line 5
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 7
    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    return-object v1

    .line 35
    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 37
    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 56
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 59
    move-result p1

    .line 60
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 63
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    .line 65
    return-object p0

    .line 66
    :cond_4
    :goto_2
    return-object v1
.end method

.method public final getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 10
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 12
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 14
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 16
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 18
    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 20
    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v9, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v9, p0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    .line 27
    move-object v2, v1

    .line 28
    move-object v6, p0

    .line 29
    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;)V

    .line 32
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 40
    return-object p0

    .line 41
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 10
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    .line 12
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 14
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 18
    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 20
    move-object v2, v1

    .line 21
    move-object v5, p0

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    .line 25
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final isActivated(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 10
    if-nez p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 19
    move-result v1

    .line 20
    monitor-exit v0

    .line 21
    goto :goto_2

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    const/4 v0, 0x2

    .line 25
    if-ne p2, v0, :cond_3

    .line 27
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter p2

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 32
    if-nez p0, :cond_2

    .line 34
    monitor-exit p2

    .line 35
    return v1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 41
    move-result v1

    .line 42
    monitor-exit p2

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_2
    return v1
.end method

.method public final isFullScreenMagnificationControllerInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    .line 4
    return-void
.end method

.method public final logMagnificationModeWithImeOnIfNeeded(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 10
    move-result v1

    .line 11
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 13
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public logMagnificationUsageState(IJF)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJF)V

    .line 4
    return-void
.end method

.method public final onFullScreenMagnificationActivationState(IZ)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "onFullscreenMagnificationActivationChanged mConnectionWrapper is null. mConnectionState="

    .line 14
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 23
    const-string v3, "MagnificationConnectionManager"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 32
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-exit v2

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 52
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 54
    const-wide/16 v3, 0x80

    .line 56
    invoke-virtual {v1, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1

    .line 62
    const-string v5, "MagnificationConnectionWrapper.onFullscreenMagnificationActivationChanged"

    .line 64
    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 69
    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IMagnificationConnection;->onFullscreenMagnificationActivationChanged(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :catch_0
    :try_start_2
    monitor-exit v2

    .line 73
    goto :goto_1

    .line 74
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0

    .line 76
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x1

    .line 78
    if-eqz p2, :cond_3

    .line 80
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter p2

    .line 83
    :try_start_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 88
    move-result-wide v3

    .line 89
    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 92
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 95
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 107
    move-result-object p2

    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 115
    invoke-virtual {p2, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 118
    goto :goto_2

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    throw p0

    .line 122
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 124
    monitor-enter p2

    .line 125
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 131
    move-result-wide v2

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 134
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 137
    move-result-wide v4

    .line 138
    sub-long/2addr v2, v4

    .line 139
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 141
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 144
    move-result v0

    .line 145
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 146
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 149
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 152
    return-void

    .line 153
    :catchall_2
    move-exception p0

    .line 154
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    throw p0
.end method

.method public final onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 10
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 12
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IIF)V

    .line 19
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final onImeWindowVisibilityChanged(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 19
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    if-eqz p2, :cond_1

    .line 25
    iget-object p2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter p2

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    :try_start_2
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_0

    .line 37
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    monitor-exit p2

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    iget-object p2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 60
    monitor-enter p2

    .line 61
    :try_start_3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 69
    if-nez v0, :cond_2

    .line 71
    monitor-exit p2

    .line 72
    goto :goto_2

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    iget-wide v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 78
    const-wide/16 v3, 0x0

    .line 80
    cmp-long p2, v1, v3

    .line 82
    if-eqz p2, :cond_3

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    move-result-wide v1

    .line 88
    iget-wide v5, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 90
    sub-long/2addr v1, v5

    .line 91
    sget-object p2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 93
    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 96
    iput-wide v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    .line 98
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 101
    return-void

    .line 102
    :goto_3
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    throw p0

    .line 104
    :catchall_2
    move-exception p0

    .line 105
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 106
    throw p0

    .line 107
    :catchall_3
    move-exception p0

    .line 108
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 109
    throw p0
.end method

.method public final onRectangleOnScreenRequested(IIIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    move v6, p5

    .line 21
    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    .line 24
    :cond_0
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final onRequestMagnificationSpec(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

.method public final onWindowMagnificationActivationState(IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter p2

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 46
    :goto_0
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p2, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 56
    monitor-enter p2

    .line 57
    const/4 v1, 0x0

    .line 58
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    move-result-wide v1

    .line 65
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    .line 67
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 70
    move-result-wide v3

    .line 71
    sub-long/2addr v1, v3

    .line 72
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 74
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    :try_start_3
    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_2

    .line 85
    monitor-exit v4

    .line 86
    const/high16 v3, -0x40800000    # -1.0f

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/Float;

    .line 99
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 102
    move-result v3

    .line 103
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    .line 108
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 111
    return-void

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    :try_start_6
    throw p0

    .line 116
    :goto_4
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 117
    throw p0
.end method

.method public final setCurrentMagnificationModeAndSwitchDelegate(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    if-ne p2, v0, :cond_1

    .line 22
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 37
    :goto_0
    return-void
.end method

.method public final setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-boolean p0, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v0, "setDisableMagnificationCallbackLocked displayId = "

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, ", callback = "

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "MagnificationController"

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public final setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final shouldNotifyMagnificationChange(II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 23
    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 31
    move v4, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v2

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Integer;

    .line 42
    if-ne p2, v3, :cond_2

    .line 44
    if-nez v1, :cond_3

    .line 46
    :cond_2
    const/4 p1, 0x2

    .line 47
    if-ne p2, p1, :cond_4

    .line 49
    if-eqz v4, :cond_4

    .line 51
    :cond_3
    if-nez p0, :cond_4

    .line 53
    monitor-exit v0

    .line 54
    return v3

    .line 55
    :cond_4
    if-nez v1, :cond_5

    .line 57
    if-nez v4, :cond_5

    .line 59
    if-nez p0, :cond_5

    .line 61
    monitor-exit v0

    .line 62
    return v3

    .line 63
    :cond_5
    if-eqz p0, :cond_6

    .line 65
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result p0

    .line 69
    if-ne p2, p0, :cond_6

    .line 71
    monitor-exit v0

    .line 72
    return v3

    .line 73
    :cond_6
    monitor-exit v0

    .line 74
    return v2

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final updateMagnificationUIControls(II)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x3

    .line 11
    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 15
    if-ne v5, v4, :cond_0

    .line 17
    move v5, v3

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_3

    .line 22
    :cond_0
    move v5, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 27
    if-eq v0, v4, :cond_1

    .line 29
    const/4 v4, 0x2

    .line 30
    if-ne v0, v4, :cond_2

    .line 32
    :cond_1
    move v2, v3

    .line 33
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-wide/16 v0, 0x80

    .line 36
    if-eqz v5, :cond_5

    .line 38
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 41
    move-result-object v3

    .line 42
    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 44
    monitor-enter v4

    .line 45
    :try_start_1
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 47
    if-eqz v3, :cond_4

    .line 49
    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 51
    invoke-virtual {v5, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v7, "displayId="

    .line 62
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v7, ";mode="

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    const-string v7, "MagnificationConnectionWrapper.showMagnificationButton"

    .line 82
    invoke-virtual {v5, v7, v0, v1, v6}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :cond_3
    :try_start_2
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 87
    invoke-interface {v3, p1, p2}, Landroid/view/accessibility/IMagnificationConnection;->showMagnificationButton(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :catch_0
    :cond_4
    :try_start_3
    monitor-exit v4

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    throw p0

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)V

    .line 102
    :goto_1
    if-nez v2, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 107
    move-result-object p0

    .line 108
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 110
    monitor-enter p2

    .line 111
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 113
    if-eqz p0, :cond_7

    .line 115
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 117
    invoke-virtual {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_6

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v4, "displayId="

    .line 128
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v3

    .line 138
    const-string v4, "MagnificationConnectionWrapper.removeMagnificationSettingsPanel"

    .line 140
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 143
    :cond_6
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 145
    invoke-interface {p0, p1}, Landroid/view/accessibility/IMagnificationConnection;->removeMagnificationSettingsPanel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    :catch_1
    :cond_7
    :try_start_6
    monitor-exit p2

    .line 149
    goto :goto_2

    .line 150
    :catchall_2
    move-exception p0

    .line 151
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 152
    throw p0

    .line 153
    :cond_8
    :goto_2
    return-void

    .line 154
    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 155
    throw p0
.end method

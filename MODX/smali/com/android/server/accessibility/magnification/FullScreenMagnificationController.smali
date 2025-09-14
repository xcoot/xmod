.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static SEC_DEBUG:Z


# instance fields
.field public mAlwaysOnMagnificationEnabled:Z

.field public final mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

.field public final mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

.field public final mMainThreadId:J

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

.field public final mScrollerSupplier:Ljava/util/function/Supplier;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mThumbnailSupplier:Ljava/util/function/Supplier;

.field public final mTimeAnimatorSupplier:Ljava/util/function/Supplier;


# direct methods
.method public static -$$Nest$mlogTrace(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-string v0, "WindowManagerInternal."

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-wide/16 v0, 0x200

    .line 13
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;)V
    .locals 10

    .line 1
    new-instance v7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 2
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    new-instance v8, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;

    move-object v0, p1

    invoke-direct {v8, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p6

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p7

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 11
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 12
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 13
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 14
    iput-object p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScrollerSupplier:Ljava/util/function/Supplier;

    .line 15
    iput-object p8, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTimeAnimatorSupplier:Ljava/util/function/Supplier;

    .line 16
    iput-object p9, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationConnectionStateSupplier:Ljava/util/function/Supplier;

    .line 17
    iget-object p7, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p7}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-virtual {p7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Thread;->getId()J

    move-result-wide p7

    iput-wide p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMainThreadId:J

    .line 19
    new-instance p7, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 20
    iget-object p8, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p7, p8, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    iput-object p7, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 22
    monitor-enter p2

    .line 23
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 26
    const-class p2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 27
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    .line 28
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationThumbnailFeatureFlag:Lcom/android/server/accessibility/magnification/MagnificationThumbnailFeatureFlag;

    .line 30
    new-instance p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    .line 31
    new-instance p4, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V

    .line 32
    new-instance p3, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2, p6, p4}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;)V

    .line 33
    :try_start_1
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-eqz p5, :cond_0

    .line 34
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    goto :goto_0

    .line 35
    :cond_0
    new-instance p2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 36
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public final getCenterX(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterX()F

    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getCenterY(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getCenterY()F

    .line 22
    move-result p0

    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getIdOfLastServiceToMagnify(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, -0x1

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getMagnificationBounds(ILandroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 20
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getMagnificationRegion(ILandroid/graphics/Region;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 20
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getPersistedScale(I)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->getScale(I)F

    .line 6
    move-result p0

    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    sget v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->MAX_SCALE:F

    .line 11
    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getScale(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 22
    iget p0, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 24
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final isActivated(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final isAtEdge(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    const/4 p1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 21
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 23
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    .line 26
    move-result v2

    .line 27
    sub-float/2addr v1, v2

    .line 28
    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    cmpg-float v1, v1, v2

    .line 35
    if-gtz v1, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 40
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 42
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    .line 45
    move-result v3

    .line 46
    sub-float/2addr v1, v3

    .line 47
    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    .line 50
    move-result v1

    .line 51
    cmpg-float v1, v1, v2

    .line 53
    if-gtz v1, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 58
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 60
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    .line 63
    move-result v3

    .line 64
    sub-float/2addr v1, v3

    .line 65
    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    .line 68
    move-result v1

    .line 69
    cmpg-float v1, v1, v2

    .line 71
    if-gtz v1, :cond_3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 76
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 78
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    .line 81
    move-result p0

    .line 82
    sub-float/2addr v1, p0

    .line 83
    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    .line 86
    move-result p0

    .line 87
    cmpg-float p0, p0, v2

    .line 89
    if-gtz p0, :cond_4

    .line 91
    :goto_0
    const/4 p1, 0x1

    .line 92
    :cond_4
    monitor-exit v0

    .line 93
    return p1

    .line 94
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method

.method public final isRegistered(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final magnificationRegionContains(IFF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 21
    float-to-int p1, p2

    .line 22
    float-to-int p2, p3

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 26
    move-result p0

    .line 27
    monitor-exit v0

    .line 28
    return p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final offsetMagnifiedRegion(IFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->offsetMagnifiedRegion(IFF)V

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onMagnificationThumbnailFeatureFlagChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez p0, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 20
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 33
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 43
    if-nez v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 47
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mThumbnailSupplier:Ljava/util/function/Supplier;

    .line 49
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 55
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationThumbnail:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 60
    :cond_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    throw p0

    .line 66
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    throw p0
.end method

.method public final onRectangleOnScreenRequested(IIIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 20
    if-nez p1, :cond_1

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 26
    if-nez v1, :cond_2

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 32
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 34
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 36
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 38
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 40
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 42
    iget-object v4, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    neg-float v3, v3

    .line 48
    float-to-int v3, v3

    .line 49
    neg-float v1, v1

    .line 50
    float-to-int v1, v1

    .line 51
    invoke-virtual {p0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    div-float/2addr v1, v2

    .line 57
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 60
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;->contains(IIII)Z

    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onRectangleOnScreenRequested(IIII)V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final register(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 16
    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;I)V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-boolean v2, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 24
    if-eqz v2, :cond_1

    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->register()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;

    .line 41
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 43
    if-nez p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 47
    new-instance v1, Landroid/content/IntentFilter;

    .line 49
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 51
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez p0, :cond_0

    .line 4
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final reset(IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final resetAllIfNeeded(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(IZ)Z

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final resetIfNeeded(II)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_1

    .line 11
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    if-eqz p1, :cond_1

    .line 12
    iget p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 17
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetIfNeeded(IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-eqz p0, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    sget-object p1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 6
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 8
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setScaleAndCenter(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p6

    move v6, p5

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setScaleAndCenter(IFFFZI)Z
    .locals 7

    if-eqz p5, :cond_0

    .line 6
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    :goto_0
    move-object v6, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p6

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "MagnificationController[, mDisplays="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mScaleProvider="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, "]"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final unregisterLocked(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 14
    if-nez v1, :cond_2

    .line 16
    if-eqz p2, :cond_1

    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    :cond_1
    return-void

    .line 24
    :cond_2
    iget-boolean p0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 26
    if-nez p0, :cond_3

    .line 28
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->unregister(Z)V

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iput-boolean p2, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 34
    const/4 p0, 0x1

    .line 35
    iput-boolean p0, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 37
    sget-object p0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 39
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->reset(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 42
    :goto_0
    return-void
.end method

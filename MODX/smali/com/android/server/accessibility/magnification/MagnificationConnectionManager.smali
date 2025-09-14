.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/PanningScalingHandler$MagnificationDelegate;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static SEC_DEBUG:Z

.field public static final WAIT_CONNECTION_TIMEOUT_MILLIS:I


# instance fields
.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

.field public mConnectionState:I

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

.field public final mContext:Landroid/content/Context;

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastActivatedScale:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationFollowTypingEnabled:Z

.field public mReceiverRegistered:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field protected final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowMagnifiers:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    .line 3
    mul-int/lit16 v0, v0, 0xc8

    .line 5
    sput v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 17
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 34
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 39
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 45
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 47
    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 49
    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 51
    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string v0, "UNKNOWN:"

    .line 14
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "DISCONNECTED"

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "DISCONNECTING"

    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "CONNECTED"

    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "CONNECTING"

    .line 30
    return-object p0
.end method


# virtual methods
.method public final disableAllWindowMagnifiers()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final disableWindowMagnification(IZ)V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    return-void
.end method

.method public final disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result p3

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 7
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 8
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p2, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->onWindowMagnificationActivationState(IZ)V

    .line 9
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_am_magnification_mode"

    const/4 v0, -0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_am_magnification_mode"

    invoke-static {p0, p1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    const-string p1, "MagnificationConnectionManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "exception = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return p3

    .line 13
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 14
    if-nez v3, :cond_0

    .line 16
    new-instance v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 18
    invoke-direct {v3, p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;-><init>(ILcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 21
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    :cond_0
    iget-boolean v10, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 28
    move v4, p2

    .line 29
    move v5, p3

    .line 30
    move v6, p4

    .line 31
    move/from16 v7, p6

    .line 33
    move/from16 v8, p7

    .line 35
    move-object/from16 v9, p5

    .line 37
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->enableWindowMagnificationInternal(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 43
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 48
    move-result v5

    .line 49
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v3, :cond_2

    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 66
    if-nez v10, :cond_2

    .line 68
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 70
    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->onWindowMagnificationActivationState(IZ)V

    .line 73
    :cond_2
    return v3

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw v0
.end method

.method public final getCenterX(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 24
    move-result p0

    .line 25
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    monitor-exit v0

    .line 30
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getCenterY(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    .line 24
    move-result p0

    .line 25
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    monitor-exit v0

    .line 30
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getScale(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mScale:F

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0

    .line 26
    const/high16 p0, 0x3f800000    # 1.0f

    .line 28
    return p0

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

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

.method public final isTrackingTypingFocusEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

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
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusEnabled:Z

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

.method public final isWindowMagnifierEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

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
    iget-boolean p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

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

.method public final moveWindowMagnification(IFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

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
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->move(FF)V

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 3
    if-eqz p0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 7
    const-wide/16 v1, 0x80

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v4, "displayId="

    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v4, ";positionX="

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    const-string v4, ";positionY="

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    const-string v4, "MagnificationConnectionWrapper.moveWindowMagnifierToPosition"

    .line 48
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 53
    if-nez p4, :cond_1

    .line 55
    const/4 p4, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;

    .line 59
    invoke-direct {v1, p4, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;-><init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 62
    move-object p4, v1

    .line 63
    :goto_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/accessibility/IMagnificationConnection;->moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :catch_0
    :cond_2
    return-void
.end method

.method public final onRectangleOnScreenRequested(IIIII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    add-int/2addr p2, p4

    .line 7
    int-to-float p2, p2

    .line 8
    const/high16 p4, 0x40000000    # 2.0f

    .line 10
    div-float/2addr p2, p4

    .line 11
    add-int/2addr p3, p5

    .line 12
    int-to-float p3, p3

    .line 13
    div-float/2addr p3, p4

    .line 14
    iget-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter p4

    .line 17
    :try_start_0
    iget-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 23
    move-result p5

    .line 24
    if-eqz p5, :cond_2

    .line 26
    iget-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object p5

    .line 32
    check-cast p5, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 34
    if-nez p5, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p5, p5, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 39
    float-to-int v0, p2

    .line 40
    float-to-int v1, p3

    .line 41
    invoke-virtual {p5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 44
    move-result v0

    .line 45
    :goto_0
    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    .line 50
    move-result p5

    .line 51
    if-eqz p5, :cond_2

    .line 53
    sget-object p5, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 55
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnifierToPositionInternal(IFFLandroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    monitor-exit p4

    .line 62
    return-void

    .line 63
    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final onUserMagnificationScaleChanged(IIF)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 6
    if-eqz p0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 10
    const-wide/16 v2, 0x80

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v5, "displayId="

    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "MagnificationConnectionWrapper.onMagnificationScaleUpdated"

    .line 35
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 40
    invoke-interface {p0, p1, p2, p3}, Landroid/view/accessibility/IMagnificationConnection;->onUserMagnificationScaleChanged(IIF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0
.end method

.method public final processScroll(IFF)V
    .locals 0

    .line 1
    neg-float p2, p2

    .line 2
    neg-float p3, p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setTrackingTypingFocusEnabled(IZ)V

    .line 10
    return-void
.end method

.method public final removeMagnificationButton(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 6
    if-eqz p0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 10
    const-wide/16 v2, 0x80

    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v5, "displayId="

    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const-string v5, "MagnificationConnectionWrapper.removeMagnificationButton"

    .line 35
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 40
    invoke-interface {p0, p1}, Landroid/view/accessibility/IMagnificationConnection;->removeMagnificationButton(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0
.end method

.method public final requestConnection(Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "requestConnection duplicated request: connect="

    .line 4
    const-string v1, "MagnificationConnectionManager"

    .line 6
    const-string/jumbo v2, "requestConnection :"

    .line 9
    const-string v3, " mConnectionState : "

    .line 11
    invoke-static {v2, v3, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 17
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 22
    const-wide/16 v2, 0x80

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 32
    const-string v4, "MagnificationConnectionManager.requestMagnificationConnection"

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v6, "connect="

    .line 39
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 54
    monitor-enter v1

    .line 55
    const/4 v2, 0x3

    .line 56
    const/4 v3, 0x1

    .line 57
    if-eqz p1, :cond_1

    .line 59
    :try_start_0
    iget v4, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 61
    if-eq v4, v3, :cond_2

    .line 63
    if-eqz v4, :cond_2

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_4

    .line 69
    :cond_1
    :goto_0
    const/4 v4, 0x2

    .line 70
    if-nez p1, :cond_4

    .line 72
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 74
    if-eq v5, v2, :cond_2

    .line 76
    if-ne v5, v4, :cond_4

    .line 78
    :cond_2
    const-string v3, "MagnificationConnectionManager"

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ", mConnectionState="

    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 95
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p1, :cond_3

    .line 111
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 113
    if-nez v0, :cond_3

    .line 115
    const-string v0, "MagnificationConnectionManager"

    .line 117
    const-string v3, "Connection failed, requestConnection again"

    .line 119
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnection(Z)V

    .line 128
    :cond_3
    monitor-exit v1

    .line 129
    return-void

    .line 130
    :cond_4
    const/4 v0, 0x0

    .line 131
    if-eqz p1, :cond_5

    .line 133
    new-instance v5, Landroid/content/IntentFilter;

    .line 135
    const-string v6, "android.intent.action.SCREEN_OFF"

    .line 137
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    iget-boolean v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 142
    if-nez v6, :cond_6

    .line 144
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 146
    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 153
    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 157
    iget-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 159
    if-eqz v5, :cond_6

    .line 161
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mContext:Landroid/content/Context;

    .line 163
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mReceiverRegistered:Z

    .line 170
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 174
    move-result-wide v5

    .line 175
    :try_start_1
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 177
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 183
    if-eqz v1, :cond_8

    .line 185
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 187
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 189
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    if-eqz v1, :cond_7

    .line 193
    :try_start_2
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->requestMagnificationConnection(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    goto :goto_2

    .line 197
    :catch_0
    :cond_7
    move v3, v0

    .line 198
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    goto :goto_3

    .line 202
    :cond_8
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    move v3, v0

    .line 206
    :goto_3
    if-eqz v3, :cond_a

    .line 208
    if-eqz p1, :cond_9

    .line 210
    move v4, v0

    .line 211
    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 214
    return-void

    .line 215
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 218
    return-void

    .line 219
    :catchall_1
    move-exception p0

    .line 220
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 223
    throw p0

    .line 224
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    throw p0
.end method

.method public final setConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "MagnificationConnectionManager"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "setConnection :"

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", mConnectionState="

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 25
    invoke-static {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x1

    .line 46
    const/4 v4, 0x3

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V

    .line 53
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 55
    if-eqz v1, :cond_1

    .line 57
    iput-boolean v3, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;->mExpiredDeathRecipient:Z

    .line 59
    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 61
    iget-object v6, v6, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 63
    invoke-interface {v6}, Landroid/view/accessibility/IMagnificationConnection;->asBinder()Landroid/os/IBinder;

    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v6, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    iput-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 72
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 74
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_4

    .line 82
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 84
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 86
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 88
    invoke-direct {v1, p1, v6}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    .line 91
    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz p1, :cond_4

    .line 97
    :try_start_1
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 99
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;)V

    .line 102
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 104
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 106
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 108
    invoke-interface {v1}, Landroid/view/accessibility/IMagnificationConnection;->asBinder()Landroid/os/IBinder;

    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 115
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 117
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$ConnectionCallback;

    .line 119
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 127
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    goto :goto_3

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    goto :goto_2

    .line 133
    :catch_0
    move-exception p1

    .line 134
    :try_start_3
    const-string v1, "MagnificationConnectionManager"

    .line 136
    const-string/jumbo v2, "setConnection failed"

    .line 139
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iput-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 149
    goto :goto_1

    .line 150
    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 155
    throw p1

    .line 156
    :cond_4
    sget-boolean p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 158
    if-eqz p1, :cond_5

    .line 160
    const-string p1, "MagnificationConnectionManager"

    .line 162
    const-string/jumbo v1, "mConnectionWrapper is null, setConnectionState(DISCONNECTED)"

    .line 165
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnectionState(I)V

    .line 171
    :goto_3
    monitor-exit v0

    .line 172
    return-void

    .line 173
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    throw p0
.end method

.method public final setConnectionState(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "setConnectionState : state="

    .line 8
    const-string v1, ", mConnectionState="

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 16
    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MagnificationConnectionManager"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 34
    return-void
.end method

.method public final setCursorVisible(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

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
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 20
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    .line 22
    if-eqz p1, :cond_2

    .line 24
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 26
    const-wide/16 v2, 0x80

    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 31
    move-result v4

    .line 32
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mDisplayId:I

    .line 34
    if-eqz v4, :cond_1

    .line 36
    const-string/jumbo v4, "displayId="

    .line 39
    const-string v5, ";visible="

    .line 41
    invoke-static {p0, v4, v5, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    const-string v5, "MagnificationConnectionWrapper.secSetCursorVisible"

    .line 47
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    :try_start_1
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 52
    invoke-interface {p1, p0, p2}, Landroid/view/accessibility/IMagnificationConnection;->secSetCursorVisible(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :catch_0
    :cond_2
    :try_start_2
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p0
.end method

.method public final setScale(FI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 12
    if-nez v1, :cond_0

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
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setScale(F)V

    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setTrackingTypingFocusEnabled(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

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
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final waitConnectionWithTimeoutIfNeeded()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->WAIT_CONNECTION_TIMEOUT_MILLIS:I

    .line 7
    int-to-long v2, v2

    .line 8
    add-long/2addr v0, v2

    .line 9
    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->SEC_DEBUG:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v3, "mConnectionState : "

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 23
    const-string v4, "MagnificationConnectionManager"

    .line 25
    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    :catch_0
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 30
    if-nez v2, :cond_1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    move-result-wide v2

    .line 36
    cmp-long v2, v2, v0

    .line 38
    if-gez v2, :cond_1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    move-result-wide v3

    .line 46
    sub-long v3, v0, v3

    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    .line 55
    move-result p0

    .line 56
    return p0
.end method

.class public final Lcom/android/server/accessibility/AccessibilityWindowManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sNextWindowId:I


# instance fields
.field public final mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedDisplayId:I

.field public mAccessibilityFocusedWindowId:I

.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mActiveWindowId:I

.field public final mDisplayWindowsObservers:Landroid/util/SparseArray;

.field public final mGlobalInteractionConnections:Landroid/util/SparseArray;

.field public final mGlobalWindowTokens:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public mHasProxy:Z

.field public final mHostEmbeddedMap:Landroid/util/ArrayMap;

.field public final mInteractionConnections:Landroid/util/SparseArray;

.field public mLastNonProxyTopFocusedDisplayId:I

.field public final mLock:Ljava/lang/Object;

.field public mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public mTopFocusedDisplayId:I

.field public mTopFocusedWindowId:I

.field public mTopFocusedWindowToken:Landroid/os/IBinder;

.field public mTouchInteractionInProgress:Z

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mWindowAttributes:Landroid/util/SparseArray;

.field public final mWindowIdMap:Landroid/util/SparseArray;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowTokens:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mremoveAccessibilityInteractionConnectionLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Landroid/os/IBinder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/IBinder;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ltz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    move-object p2, v0

    .line 66
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Region;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTmpRegion:Landroid/graphics/Region;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 43
    .line 44
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 45
    .line 46
    const-wide/32 v1, 0x7fffffff

    .line 47
    .line 48
    .line 49
    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 52
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 59
    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 73
    .line 74
    new-instance v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 86
    .line 87
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 88
    .line 89
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 90
    .line 91
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 92
    .line 93
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 94
    .line 95
    return-void
.end method

.method public static removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-ne v3, p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, -0x1

    .line 45
    return p0
.end method


# virtual methods
.method public final clearAccessibilityFocusLocked(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 7
    .line 8
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    .line 10
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    move p1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    check-cast v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    new-instance v4, Landroid/graphics/Region;

    .line 30
    .line 31
    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 32
    .line 33
    .line 34
    sub-int/2addr v3, v2

    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_1
    if-ltz v3, :cond_4

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 39
    .line 40
    check-cast v6, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ne v7, v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v6, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 60
    .line 61
    .line 62
    move-object v5, p2

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    :goto_2
    move v1, v2

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x4

    .line 72
    if-eq v7, v8, :cond_3

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 75
    .line 76
    .line 77
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 78
    .line 79
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_4
    return v1
.end method

.method public final disassociateLocked(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/os/IBinder;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "Global Info [ "

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v5, "Top focused display Id = "

    .line 15
    .line 16
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 20
    .line 21
    const-string v7, "     Active Window Id = "

    .line 22
    .line 23
    invoke-static {v4, v6, v1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 28
    .line 29
    const-string v8, "     Top Focused Window Id = "

    .line 30
    .line 31
    invoke-static {v4, v6, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 36
    .line 37
    const-string v9, "     Accessibility Focused Window Id = "

    .line 38
    .line 39
    invoke-static {v4, v6, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, " ]"

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v11, 0x0

    .line 70
    :goto_0
    const-string v12, "]"

    .line 71
    .line 72
    if-ge v11, v4, :cond_d

    .line 73
    .line 74
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    check-cast v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 81
    .line 82
    if-eqz v13, :cond_b

    .line 83
    .line 84
    const-string/jumbo v14, "print-accessibilitynodeinfo"

    .line 85
    .line 86
    .line 87
    invoke-static {v14, v2}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v14, :cond_5

    .line 92
    .line 93
    const-string/jumbo v12, "simple"

    .line 94
    .line 95
    .line 96
    invoke-static {v12, v2}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    const-string/jumbo v14, "visibleOnly"

    .line 101
    .line 102
    .line 103
    invoke-static {v14, v2}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    array-length v15, v2

    .line 108
    const/4 v10, 0x3

    .line 109
    if-ge v15, v10, :cond_0

    .line 110
    .line 111
    :catch_0
    const/4 v10, -0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_0
    :try_start_0
    aget-object v10, v2, v10

    .line 114
    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    array-length v15, v2

    .line 124
    move/from16 v16, v4

    .line 125
    .line 126
    const/4 v4, 0x4

    .line 127
    if-ge v15, v4, :cond_1

    .line 128
    .line 129
    :catch_1
    const/4 v4, -0x1

    .line 130
    :goto_2
    const/4 v15, -0x1

    .line 131
    goto :goto_3

    .line 132
    :cond_1
    :try_start_1
    aget-object v4, v2, v4

    .line 133
    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    goto :goto_2

    .line 143
    :goto_3
    if-ne v4, v15, :cond_2

    .line 144
    .line 145
    const-string v4, "Failed to get windows. Please turn on Accessibility Service"

    .line 146
    .line 147
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_2
    if-ne v10, v15, :cond_3

    .line 153
    .line 154
    iget-object v10, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 155
    .line 156
    check-cast v10, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_c

    .line 167
    .line 168
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    check-cast v13, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 173
    .line 174
    invoke-static {v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-virtual {v13, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v13, v12, v14}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_3
    iget-object v13, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 186
    .line 187
    check-cast v13, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    if-eqz v15, :cond_c

    .line 198
    .line 199
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    check-cast v15, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 204
    .line 205
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-ne v2, v10, :cond_4

    .line 210
    .line 211
    invoke-static {v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v1, v2, v12, v14}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_4
    move-object/from16 v2, p2

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_5
    move/from16 v16, v4

    .line 227
    .line 228
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 229
    .line 230
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 237
    .line 238
    iget v10, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 239
    .line 240
    invoke-static {v2, v10, v1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget v10, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 245
    .line 246
    invoke-static {v2, v10, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    iget v10, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 251
    .line 252
    invoke-static {v2, v10, v1, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 257
    .line 258
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-boolean v2, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 272
    .line 273
    if-eqz v2, :cond_6

    .line 274
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v4, "Proxy accessibility focused window = "

    .line 278
    .line 279
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v4, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 283
    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 295
    .line 296
    .line 297
    :cond_6
    iget-object v2, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 298
    .line 299
    if-eqz v2, :cond_c

    .line 300
    .line 301
    check-cast v2, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/4 v4, 0x0

    .line 308
    :goto_6
    if-ge v4, v2, :cond_a

    .line 309
    .line 310
    if-nez v4, :cond_7

    .line 311
    .line 312
    const-string v10, "Display["

    .line 313
    .line 314
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    .line 316
    .line 317
    iget v10, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 318
    .line 319
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 324
    .line 325
    .line 326
    const-string v10, "] : "

    .line 327
    .line 328
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 332
    .line 333
    .line 334
    :cond_7
    if-lez v4, :cond_8

    .line 335
    .line 336
    const/16 v10, 0x2c

    .line 337
    .line 338
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 342
    .line 343
    .line 344
    :cond_8
    const-string v10, "A11yWindow["

    .line 345
    .line 346
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 347
    .line 348
    .line 349
    iget-object v10, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 350
    .line 351
    check-cast v10, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    check-cast v10, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 358
    .line 359
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 364
    .line 365
    .line 366
    const/16 v14, 0x5d

    .line 367
    .line 368
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    iget-object v14, v13, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 379
    .line 380
    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    check-cast v10, Landroid/view/WindowInfo;

    .line 385
    .line 386
    if-eqz v10, :cond_9

    .line 387
    .line 388
    const-string v14, "WindowInfo["

    .line 389
    .line 390
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v10}, Landroid/view/WindowInfo;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 404
    .line 405
    .line 406
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 410
    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_b
    move/from16 v16, v4

    .line 414
    .line 415
    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 416
    .line 417
    move-object/from16 v2, p2

    .line 418
    .line 419
    move/from16 v4, v16

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 424
    .line 425
    .line 426
    const-string v2, "Window attributes:["

    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 429
    .line 430
    .line 431
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 444
    .line 445
    .line 446
    return-void
.end method

.method public final findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final findFocusedWindowId(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getFocusedWindowToken"

    .line 8
    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowTokenFromWindowStates()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v1

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final findWindowIdLocked(ILandroid/os/IBinder;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ltz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_1
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final getActiveWindowId(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 15
    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 17
    .line 18
    return p0
.end method

.method public final getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 29
    .line 30
    :cond_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public final getDefaultFocus(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, -0x1

    .line 14
    return p0
.end method

.method public final getDisplayIdByUserIdAndWindowId(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string/jumbo p2, "getDisplayIdForWindow"

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "token="

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method public final getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/view/WindowInfo;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 31
    .line 32
    iget p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/IBinder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ltz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Landroid/os/IBinder;

    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public final getWindowTokensForUserLocked(I)Landroid/util/SparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final isTrackingWindowsLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "WindowManagerInternal."

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-wide/16 v0, 0x200

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final notifyOutsideTouch(II)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    move v2, v3

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ge v2, v4, :cond_0

    .line 26
    .line 27
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ge v3, p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 65
    .line 66
    const-wide/16 v1, 0x10

    .line 67
    .line 68
    invoke-virtual {p2, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 75
    .line 76
    const-string v4, "AccessibilityWindowManager.notifyOutsideTouch"

    .line 77
    .line 78
    invoke-virtual {p2, v4, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :try_start_1
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 82
    .line 83
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    return-void

    .line 90
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p0
.end method

.method public final onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const/4 v1, -0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-ltz p1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 22
    .line 23
    :cond_1
    if-eqz p2, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "token="

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ";windowId=AccessibilityWindowInfo.UNDEFINED_WINDOW_ID"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string/jumbo v2, "setAccessibilityIdToSurfaceMetadata"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/os/IBinder;

    .line 69
    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final resetHasProxyIfNeededLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 30
    .line 31
    return-void
.end method

.method public final resolveParentWindowIdLocked(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/IBinder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    move p1, v0

    .line 35
    :cond_2
    return p1
.end method

.method public final resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/IBinder;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final setAccessibilityFocusedWindowLocked(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 12
    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 19
    .line 20
    if-eq v4, v3, :cond_0

    .line 21
    .line 22
    invoke-static {v1, v4, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_0
    if-ge v3, v1, :cond_2

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 57
    .line 58
    iput v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 59
    .line 60
    invoke-static {v4, p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 87
    .line 88
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    return-void
.end method

.method public final setActiveWindowLocked(I)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_6

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    const/16 v3, 0x20

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 25
    .line 26
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    move v4, v2

    .line 45
    :goto_0
    if-ge v4, v1, :cond_5

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 54
    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move v7, v2

    .line 66
    move v8, v7

    .line 67
    :goto_1
    if-ge v7, v6, :cond_3

    .line 68
    .line 69
    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 76
    .line 77
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-ne v10, p1, :cond_1

    .line 82
    .line 83
    const/4 v8, 0x1

    .line 84
    invoke-virtual {v9, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual {v9, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 89
    .line 90
    .line 91
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v8, v2

    .line 95
    :cond_3
    if-eqz v8, :cond_4

    .line 96
    .line 97
    iget v5, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 98
    .line 99
    invoke-static {v5, p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 126
    .line 127
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    return-void
.end method

.method public final setProxyFocusLocked(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v0, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, p1, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 v3, -0x1

    .line 38
    const/16 v4, 0x80

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 41
    .line 42
    iget v6, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 43
    .line 44
    if-eq v0, v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    move-object v0, v5

    .line 54
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iput p1, v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 60
    .line 61
    invoke-static {v6, p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 66
    .line 67
    invoke-virtual {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return v0
.end method

.method public final stopTrackingWindows(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->stopTrackingWindowsLocked()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resetHasProxyIfNeededLocked()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final traceWMEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v0, 0x200

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final updateActiveAndAccessibilityFocusedWindowLocked(IIIIJ)V
    .locals 7

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p3, v0, :cond_c

    .line 4
    .line 5
    const/16 p1, 0x80

    .line 6
    .line 7
    if-eq p3, p1, :cond_a

    .line 8
    .line 9
    const p1, 0x8000

    .line 10
    .line 11
    .line 12
    if-eq p3, p1, :cond_7

    .line 13
    .line 14
    const/high16 p1, 0x10000

    .line 15
    .line 16
    if-eq p3, p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter p1

    .line 23
    :try_start_0
    iget-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 24
    .line 25
    const/16 v0, 0x40

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    if-eqz p3, :cond_4

    .line 29
    .line 30
    if-ne p4, v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 p3, 0x0

    .line 34
    move v2, p3

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ge v2, v3, :cond_4

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    iget-boolean v5, v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 58
    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    move v5, p3

    .line 68
    :goto_1
    if-ge v5, v4, :cond_3

    .line 69
    .line 70
    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 71
    .line 72
    check-cast v6, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-ne v6, p2, :cond_2

    .line 85
    .line 86
    iput v1, v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 87
    .line 88
    monitor-exit p1

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    :goto_2
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 99
    .line 100
    cmp-long p3, v2, p5

    .line 101
    .line 102
    const-wide/32 p5, 0x7fffffff

    .line 103
    .line 104
    .line 105
    if-nez p3, :cond_5

    .line 106
    .line 107
    iput-wide p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 108
    .line 109
    :cond_5
    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 110
    .line 111
    cmp-long p3, v2, p5

    .line 112
    .line 113
    if-nez p3, :cond_6

    .line 114
    .line 115
    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 116
    .line 117
    if-ne p3, p2, :cond_6

    .line 118
    .line 119
    if-eq p4, v0, :cond_6

    .line 120
    .line 121
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 122
    .line 123
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 124
    .line 125
    :cond_6
    monitor-exit p1

    .line 126
    goto :goto_8

    .line 127
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_7
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter p1

    .line 132
    :try_start_1
    iget-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 133
    .line 134
    if-eqz p3, :cond_8

    .line 135
    .line 136
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setProxyFocusLocked(I)Z

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    if-eqz p3, :cond_8

    .line 141
    .line 142
    monitor-exit p1

    .line 143
    return-void

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_4

    .line 146
    :cond_8
    iget p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 147
    .line 148
    if-eq p3, p2, :cond_9

    .line 149
    .line 150
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityFocusedWindowLocked(I)V

    .line 154
    .line 155
    .line 156
    :cond_9
    iput-wide p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 157
    .line 158
    monitor-exit p1

    .line 159
    goto :goto_8

    .line 160
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    throw p0

    .line 162
    :cond_a
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 163
    .line 164
    monitor-enter p3

    .line 165
    :try_start_2
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 166
    .line 167
    if-eqz p1, :cond_b

    .line 168
    .line 169
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 170
    .line 171
    if-eq p1, p2, :cond_b

    .line 172
    .line 173
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :catchall_2
    move-exception p0

    .line 178
    goto :goto_6

    .line 179
    :cond_b
    :goto_5
    monitor-exit p3

    .line 180
    goto :goto_8

    .line 181
    :goto_6
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 182
    throw p0

    .line 183
    :cond_c
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter p3

    .line 186
    :try_start_3
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 187
    .line 188
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 189
    .line 190
    .line 191
    move-result p4

    .line 192
    if-lez p4, :cond_d

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 200
    .line 201
    if-ne p2, p1, :cond_e

    .line 202
    .line 203
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :catchall_3
    move-exception p0

    .line 207
    goto :goto_9

    .line 208
    :cond_e
    :goto_7
    monitor-exit p3

    .line 209
    :goto_8
    return-void

    .line 210
    :goto_9
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 211
    throw p0
.end method

.method public final windowIdBelongsToDisplayType(II)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    and-int/lit8 v0, p2, 0x3

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, v2, :cond_5

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 33
    .line 34
    if-eqz v5, :cond_4

    .line 35
    .line 36
    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 43
    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    iget-boolean p0, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    and-int/lit8 p0, p2, 0x2

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    and-int/lit8 p0, p2, 0x1

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    :goto_1
    monitor-exit v0

    .line 62
    return v1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    monitor-exit v0

    .line 69
    return v3

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

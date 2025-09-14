.class public abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# instance fields
.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public mCaptureFingerprintGestures:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayTypes:I

.field public final mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

.field public mEventTypes:I

.field public mFeedbackType:I

.field public mFetchFlags:I

.field public mGenericMotionEventSources:I

.field public final mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field public mIsDefault:Z

.field public mLastAccessibilityButtonCallbackState:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotificationTimeout:J

.field public mObservedMotionEventSources:I

.field public final mOverlayWindowTokens:Landroid/util/SparseArray;

.field public final mOverlays:Ljava/util/List;

.field public final mPackageNames:Ljava/util/Set;

.field public final mPendingEvents:Landroid/util/SparseArray;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mReceivedAccessibilityButtonCallbackSinceBind:Z

.field public mRequestAccessibilityButton:Z

.field public mRequestFilterKeyEvents:Z

.field public mRequestImeApis:Z

.field public mRequestMultiFingerGestures:Z

.field public final mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

.field public mRequestTakeScreenshotTimestampMs:J

.field public mRequestTouchExplorationMode:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mRetrieveInteractiveWindows:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public mSendMotionEvents:Z

.field public mService:Landroid/os/IBinder;

.field public final mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mServiceHandlesDoubleTap:Z

.field public mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field public final mTrace:Landroid/accessibilityservice/AccessibilityTrace;

.field public mUsesAccessibilityCache:Z

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 34
    .line 35
    new-instance v0, Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 59
    .line 60
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 61
    .line 62
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 63
    .line 64
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 65
    .line 66
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 69
    .line 70
    iput-object p11, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 71
    .line 72
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 73
    .line 74
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 75
    .line 76
    iput-object p5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 77
    .line 78
    new-instance p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 79
    .line 80
    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 88
    .line 89
    iput-object p12, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 90
    .line 91
    const-string/jumbo p2, "display"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 101
    .line 102
    const-string/jumbo p2, "power"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/os/PowerManager;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 112
    .line 113
    const-string/jumbo p1, "platform_compat"

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 125
    .line 126
    new-instance p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 127
    .line 128
    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 136
    .line 137
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method


# virtual methods
.method public final addWindowTokenForDisplay(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 11
    .line 12
    const-wide/16 v4, 0x200

    .line 13
    .line 14
    invoke-interface {v3, v4, v5}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const-string v3, "addWindowToken"

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v5, ";TYPE_ACCESSIBILITY_OVERLAY;"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, ";null"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 54
    .line 55
    const/16 v4, 0x7f0

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-virtual {v3, v2, v4, p1, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public final addWindowTokensForAllDisplays()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokenForDisplay(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    const-string/jumbo v2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    array-length v2, v0

    .line 38
    :goto_1
    if-ge v1, v2, :cond_2

    .line 39
    .line 40
    aget-object v3, v0, v1

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokenForDisplay(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_2
    return-void
.end method

.method public final attachAccessibilityOverlayToDisplay(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    move-object v4, v2

    .line 8
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    .line 10
    iget-object v2, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    move-object v7, p3

    .line 26
    move-object v8, p4

    .line 27
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 35
    .line 36
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final attachAccessibilityOverlayToWindow(IILandroid/view/SurfaceControl;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, p3, v3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 27
    .line 28
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    .line 30
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {v3, v4, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    invoke-interface {p4, p0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_2
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 54
    .line 55
    invoke-interface {p2, p3, p1, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->attachAccessibilityOverlayToWindow(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 59
    .line 60
    check-cast p0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectBluetoothBrailleDisplay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public createImeSessionInternal()V
    .locals 0

    .line 1
    return-void
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "sequence="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ";gestureSteps="

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ";displayId="

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string/jumbo p2, "dispatchGesture"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, ", requestA11yBtn="

    .line 6
    .line 7
    const-string v3, ", notificationTimeout="

    .line 8
    .line 9
    const-string v4, ", eventTypes="

    .line 10
    .line 11
    const-string v5, ", capabilities="

    .line 12
    .line 13
    const-string v6, ", feedbackType"

    .line 14
    .line 15
    const-string v7, ", interactiveUiTimeout="

    .line 16
    .line 17
    const-string v8, ", nonInteractiveUiTimeout="

    .line 18
    .line 19
    const-string v9, ", fetchFlags="

    .line 20
    .line 21
    const-string v10, ", lastAccessibilityButtonCallbackState="

    .line 22
    .line 23
    const-string v11, ", receivedAccessibilityButtonCallbackSinceBind="

    .line 24
    .line 25
    const-string v12, ", requestAccessibilityButton="

    .line 26
    .line 27
    const-string v13, ", captureFingerprintGestures="

    .line 28
    .line 29
    const-string v14, ", retrieveInteractiveWindows="

    .line 30
    .line 31
    const-string v15, ", requestFilterKeyEvents="

    .line 32
    .line 33
    move-object/from16 p1, v2

    .line 34
    .line 35
    const-string v2, ", requestTouchExplorationMode="

    .line 36
    .line 37
    move-object/from16 p3, v3

    .line 38
    .line 39
    const-string v3, ", isDefault="

    .line 40
    .line 41
    move-object/from16 v16, v4

    .line 42
    .line 43
    const-string v4, ", id="

    .line 44
    .line 45
    move-object/from16 v17, v5

    .line 46
    .line 47
    const-string v5, "Service[label="

    .line 48
    .line 49
    move-object/from16 v18, v6

    .line 50
    .line 51
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    move-object/from16 v19, v7

    .line 54
    .line 55
    const-string v7, "AbstractAccessibilityServiceConnection"

    .line 56
    .line 57
    invoke-static {v6, v7, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v6

    .line 67
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    move-object/from16 v20, v8

    .line 79
    .line 80
    iget-object v8, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v5, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 98
    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 119
    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 127
    .line 128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 136
    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-boolean v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 170
    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 204
    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 221
    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 238
    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 255
    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 263
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 272
    .line 273
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    move-object/from16 v3, v20

    .line 277
    .line 278
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 282
    .line 283
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 295
    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    move-object/from16 v3, v19

    .line 300
    .line 301
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 305
    .line 306
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 318
    .line 319
    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    move-object/from16 v3, v18

    .line 323
    .line 324
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 328
    .line 329
    invoke-static {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 341
    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    move-object/from16 v3, v17

    .line 346
    .line 347
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 351
    .line 352
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 364
    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    move-object/from16 v3, v16

    .line 369
    .line 370
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 374
    .line 375
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 387
    .line 388
    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    move-object/from16 v3, p3

    .line 392
    .line 393
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iget-wide v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 397
    .line 398
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 406
    .line 407
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    move-object/from16 v3, p1

    .line 411
    .line 412
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-boolean v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 416
    .line 417
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 425
    .line 426
    .line 427
    const-string v0, "]"

    .line 428
    .line 429
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 430
    .line 431
    .line 432
    monitor-exit v6

    .line 433
    return-void

    .line 434
    :catchall_0
    move-exception v0

    .line 435
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    throw v0
.end method

.method public final ensureWindowsAvailableTimedLocked(I)V
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 34
    .line 35
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_5
    move-object v0, v1

    .line 70
    :goto_2
    if-nez v0, :cond_7

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    sub-long/2addr v4, v2

    .line 77
    const-wide/16 v6, 0x1388

    .line 78
    .line 79
    sub-long/2addr v6, v4

    .line 80
    const-wide/16 v4, 0x0

    .line 81
    .line 82
    cmp-long v0, v6, v4

    .line 83
    .line 84
    if-gtz v0, :cond_6

    .line 85
    .line 86
    return-void

    .line 87
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_7
    return-void
.end method

.method public final findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    move/from16 v11, p6

    .line 8
    .line 9
    move-wide/from16 v12, p7

    .line 10
    .line 11
    move-object/from16 v14, p9

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string/jumbo v1, "findAccessibilityNodeInfoByAccessibilityId"

    .line 20
    .line 21
    .line 22
    const-string v2, "accessibilityWindowId="

    .line 23
    .line 24
    const-string v3, ";accessibilityNodeId="

    .line 25
    .line 26
    move/from16 v4, p1

    .line 27
    .line 28
    invoke-static {v4, v2, v8, v9, v3}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, ";interactionId="

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ";callback="

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-object/from16 v3, p5

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, ";flags="

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ";interrogatingTid="

    .line 59
    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ";arguments="

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move/from16 v4, p1

    .line 83
    .line 84
    move-object/from16 v3, p5

    .line 85
    .line 86
    :goto_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    const/4 v5, 0x1

    .line 94
    :try_start_0
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v15, 0x0

    .line 101
    if-nez v5, :cond_1

    .line 102
    .line 103
    monitor-exit v2

    .line 104
    return-object v15

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 113
    .line 114
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 115
    .line 116
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 117
    .line 118
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 119
    .line 120
    invoke-virtual {v5, v6, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_2

    .line 125
    .line 126
    monitor-exit v2

    .line 127
    return-object v15

    .line 128
    :cond_2
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 129
    .line 130
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 131
    .line 132
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 133
    .line 134
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 135
    .line 136
    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-nez v6, :cond_3

    .line 141
    .line 142
    monitor-exit v2

    .line 143
    return-object v15

    .line 144
    :cond_3
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 145
    .line 146
    invoke-virtual {v5, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_4

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 153
    .line 154
    .line 155
    move-object v7, v15

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    move-object v7, v1

    .line 158
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 160
    .line 161
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 168
    .line 169
    move-object/from16 v16, v2

    .line 170
    .line 171
    check-cast v16, [F

    .line 172
    .line 173
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    move-object v5, v1

    .line 176
    check-cast v5, Landroid/view/MagnificationSpec;

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_5

    .line 185
    .line 186
    return-object v15

    .line 187
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    move-object/from16 v1, p0

    .line 192
    .line 193
    move/from16 p1, v2

    .line 194
    .line 195
    move-object/from16 v2, p5

    .line 196
    .line 197
    move v3, v4

    .line 198
    move/from16 v4, p4

    .line 199
    .line 200
    move-object v15, v5

    .line 201
    move/from16 v5, p1

    .line 202
    .line 203
    move-object/from16 v17, v6

    .line 204
    .line 205
    move-object v14, v7

    .line 206
    move-wide/from16 v6, p7

    .line 207
    .line 208
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 213
    .line 214
    .line 215
    move-result-wide v18

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_6

    .line 221
    .line 222
    const-string/jumbo v1, "findAccessibilityNodeInfoByAccessibilityId"

    .line 223
    .line 224
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, ";"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v3, ";"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v3, ";"

    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v3, ";"

    .line 258
    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 263
    .line 264
    or-int/2addr v3, v11

    .line 265
    const-string v4, ";"

    .line 266
    .line 267
    const-string v5, ";"

    .line 268
    .line 269
    move/from16 v7, p1

    .line 270
    .line 271
    invoke-static {v3, v7, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v3, ";"

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v3, ";"

    .line 286
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v3, ";"

    .line 298
    .line 299
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    move-object/from16 v20, v14

    .line 303
    .line 304
    move-object/from16 v14, p9

    .line 305
    .line 306
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :goto_2
    move-object/from16 v5, v17

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_6
    move/from16 v7, p1

    .line 320
    .line 321
    move-object/from16 v20, v14

    .line 322
    .line 323
    move-object/from16 v14, p9

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :goto_3
    :try_start_1
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 327
    .line 328
    iget v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 329
    .line 330
    or-int/2addr v11, v2

    .line 331
    move-wide/from16 v2, p2

    .line 332
    .line 333
    move-object/from16 v4, v20

    .line 334
    .line 335
    move-object v9, v5

    .line 336
    move/from16 v5, p4

    .line 337
    .line 338
    move v8, v7

    .line 339
    move v7, v11

    .line 340
    move-object v11, v9

    .line 341
    move-wide/from16 v9, p7

    .line 342
    .line 343
    move-object v13, v11

    .line 344
    move-object v11, v15

    .line 345
    move-object/from16 v12, v16

    .line 346
    .line 347
    move-object v15, v13

    .line 348
    move-object/from16 v13, p9

    .line 349
    .line 350
    :try_start_2
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 354
    .line 355
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 356
    .line 357
    iget v2, v15, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 358
    .line 359
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    .line 365
    .line 366
    if-eqz v20, :cond_7

    .line 367
    .line 368
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 369
    .line 370
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_7

    .line 375
    .line 376
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    .line 377
    .line 378
    .line 379
    :cond_7
    return-object v0

    .line 380
    :catchall_1
    move-exception v0

    .line 381
    goto :goto_4

    .line 382
    :catchall_2
    move-exception v0

    .line 383
    move-object v15, v5

    .line 384
    goto :goto_4

    .line 385
    :catch_0
    move-object v15, v5

    .line 386
    goto :goto_5

    .line 387
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    .line 389
    .line 390
    if-eqz v20, :cond_8

    .line 391
    .line 392
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 393
    .line 394
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_8

    .line 399
    .line 400
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    .line 401
    .line 402
    .line 403
    :cond_8
    throw v0

    .line 404
    :catch_1
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    .line 406
    .line 407
    if-eqz v20, :cond_9

    .line 408
    .line 409
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 410
    .line 411
    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_9

    .line 416
    .line 417
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->recycle()V

    .line 418
    .line 419
    .line 420
    :cond_9
    const/4 v0, 0x0

    .line 421
    return-object v0

    .line 422
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    throw v0
.end method

.method public final findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    move-wide/from16 v12, p7

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo v1, "findAccessibilityNodeInfosByText"

    .line 18
    .line 19
    .line 20
    const-string v2, "accessibilityWindowId="

    .line 21
    .line 22
    const-string v3, ";accessibilityNodeId="

    .line 23
    .line 24
    move/from16 v4, p1

    .line 25
    .line 26
    invoke-static {v4, v2, v8, v9, v3}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, ";text="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ";interactionId="

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ";callback="

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-object/from16 v3, p6

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, ";interrogatingTid="

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move/from16 v4, p1

    .line 73
    .line 74
    move-object/from16 v3, p6

    .line 75
    .line 76
    :goto_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v2

    .line 83
    const/4 v5, 0x1

    .line 84
    :try_start_0
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v14, 0x0

    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    return-object v14

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 103
    .line 104
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 105
    .line 106
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 107
    .line 108
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 109
    .line 110
    invoke-virtual {v5, v6, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_2

    .line 115
    .line 116
    monitor-exit v2

    .line 117
    return-object v14

    .line 118
    :cond_2
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 119
    .line 120
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 121
    .line 122
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 123
    .line 124
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 125
    .line 126
    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    if-nez v15, :cond_3

    .line 131
    .line 132
    monitor-exit v2

    .line 133
    return-object v14

    .line 134
    :cond_3
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 135
    .line 136
    invoke-virtual {v5, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 143
    .line 144
    .line 145
    move-object v6, v14

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move-object v6, v1

    .line 148
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 150
    .line 151
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 158
    .line 159
    move-object/from16 v16, v2

    .line 160
    .line 161
    check-cast v16, [F

    .line 162
    .line 163
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v7, v1

    .line 166
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_5

    .line 175
    .line 176
    return-object v14

    .line 177
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    move-object/from16 v1, p0

    .line 182
    .line 183
    move-object/from16 v2, p6

    .line 184
    .line 185
    move v3, v4

    .line 186
    move/from16 v4, p5

    .line 187
    .line 188
    move/from16 p1, v5

    .line 189
    .line 190
    move-object v14, v6

    .line 191
    move-object/from16 v17, v15

    .line 192
    .line 193
    move-object v15, v7

    .line 194
    move-wide/from16 v6, p7

    .line 195
    .line 196
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 201
    .line 202
    .line 203
    move-result-wide v18

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_6

    .line 209
    .line 210
    const-string/jumbo v1, "findAccessibilityNodeInfosByText"

    .line 211
    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v3, ";"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, ";"

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v3, ";"

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, ";"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v3, ";"

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 259
    .line 260
    const-string v4, ";"

    .line 261
    .line 262
    const-string v5, ";"

    .line 263
    .line 264
    move/from16 v6, p1

    .line 265
    .line 266
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v3, ";"

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v3, ";"

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_2
    move-object/from16 v5, v17

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_6
    move/from16 v6, p1

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :goto_3
    :try_start_1
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 306
    .line 307
    iget v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 308
    .line 309
    move-wide/from16 v2, p2

    .line 310
    .line 311
    move v8, v4

    .line 312
    move-object/from16 v4, p4

    .line 313
    .line 314
    move-object v10, v5

    .line 315
    move-object v5, v14

    .line 316
    move v9, v6

    .line 317
    move/from16 v6, p5

    .line 318
    .line 319
    move-object/from16 v17, v14

    .line 320
    .line 321
    move-object v14, v10

    .line 322
    move-wide/from16 v10, p7

    .line 323
    .line 324
    move-object v12, v15

    .line 325
    move-object/from16 v13, v16

    .line 326
    .line 327
    :try_start_2
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 331
    .line 332
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 333
    .line 334
    iget v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 335
    .line 336
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    .line 342
    .line 343
    if-eqz v17, :cond_7

    .line 344
    .line 345
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 346
    .line 347
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_7

    .line 352
    .line 353
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 354
    .line 355
    .line 356
    :cond_7
    return-object v0

    .line 357
    :catchall_1
    move-exception v0

    .line 358
    goto :goto_4

    .line 359
    :catchall_2
    move-exception v0

    .line 360
    move-object/from16 v17, v14

    .line 361
    .line 362
    move-object v14, v5

    .line 363
    goto :goto_4

    .line 364
    :catch_0
    move-object/from16 v17, v14

    .line 365
    .line 366
    move-object v14, v5

    .line 367
    goto :goto_5

    .line 368
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    .line 370
    .line 371
    if-eqz v17, :cond_8

    .line 372
    .line 373
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 374
    .line 375
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_8

    .line 380
    .line 381
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 382
    .line 383
    .line 384
    :cond_8
    throw v0

    .line 385
    :catch_1
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    .line 387
    .line 388
    if-eqz v17, :cond_9

    .line 389
    .line 390
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 391
    .line 392
    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_9

    .line 397
    .line 398
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 399
    .line 400
    .line 401
    :cond_9
    const/4 v0, 0x0

    .line 402
    return-object v0

    .line 403
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    throw v0
.end method

.method public final findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    move-wide/from16 v12, p7

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo v1, "findAccessibilityNodeInfosByViewId"

    .line 18
    .line 19
    .line 20
    const-string v2, "accessibilityWindowId="

    .line 21
    .line 22
    const-string v3, ";accessibilityNodeId="

    .line 23
    .line 24
    move/from16 v4, p1

    .line 25
    .line 26
    invoke-static {v4, v2, v8, v9, v3}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, ";viewIdResName="

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ";interactionId="

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ";callback="

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-object/from16 v3, p6

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, ";interrogatingTid="

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move/from16 v4, p1

    .line 73
    .line 74
    move-object/from16 v3, p6

    .line 75
    .line 76
    :goto_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v2

    .line 83
    const/4 v5, 0x1

    .line 84
    :try_start_0
    iput-boolean v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v14, 0x0

    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    return-object v14

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 103
    .line 104
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 105
    .line 106
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 107
    .line 108
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 109
    .line 110
    invoke-virtual {v5, v6, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_2

    .line 115
    .line 116
    monitor-exit v2

    .line 117
    return-object v14

    .line 118
    :cond_2
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 119
    .line 120
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 121
    .line 122
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 123
    .line 124
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 125
    .line 126
    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    if-nez v15, :cond_3

    .line 131
    .line 132
    monitor-exit v2

    .line 133
    return-object v14

    .line 134
    :cond_3
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 135
    .line 136
    invoke-virtual {v5, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 143
    .line 144
    .line 145
    move-object v6, v14

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    move-object v6, v1

    .line 148
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 150
    .line 151
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 158
    .line 159
    move-object/from16 v16, v2

    .line 160
    .line 161
    check-cast v16, [F

    .line 162
    .line 163
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 164
    .line 165
    move-object v7, v1

    .line 166
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 167
    .line 168
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_5

    .line 175
    .line 176
    return-object v14

    .line 177
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    move-object/from16 v1, p0

    .line 182
    .line 183
    move-object/from16 v2, p6

    .line 184
    .line 185
    move v3, v4

    .line 186
    move/from16 v4, p5

    .line 187
    .line 188
    move/from16 p1, v5

    .line 189
    .line 190
    move-object v14, v6

    .line 191
    move-object/from16 v17, v15

    .line 192
    .line 193
    move-object v15, v7

    .line 194
    move-wide/from16 v6, p7

    .line 195
    .line 196
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 201
    .line 202
    .line 203
    move-result-wide v18

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_6

    .line 209
    .line 210
    const-string/jumbo v1, "findAccessibilityNodeInfosByViewId"

    .line 211
    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v3, ";"

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v3, ";"

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v3, ";"

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, ";"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v3, ";"

    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 259
    .line 260
    const-string v4, ";"

    .line 261
    .line 262
    const-string v5, ";"

    .line 263
    .line 264
    move/from16 v6, p1

    .line 265
    .line 266
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v3, ";"

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v3, ";"

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_2
    move-object/from16 v5, v17

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_6
    move/from16 v6, p1

    .line 303
    .line 304
    goto :goto_2

    .line 305
    :goto_3
    :try_start_1
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 306
    .line 307
    iget v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 308
    .line 309
    move-wide/from16 v2, p2

    .line 310
    .line 311
    move v8, v4

    .line 312
    move-object/from16 v4, p4

    .line 313
    .line 314
    move-object v10, v5

    .line 315
    move-object v5, v14

    .line 316
    move v9, v6

    .line 317
    move/from16 v6, p5

    .line 318
    .line 319
    move-object/from16 v17, v14

    .line 320
    .line 321
    move-object v14, v10

    .line 322
    move-wide/from16 v10, p7

    .line 323
    .line 324
    move-object v12, v15

    .line 325
    move-object/from16 v13, v16

    .line 326
    .line 327
    :try_start_2
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 331
    .line 332
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 333
    .line 334
    iget v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 335
    .line 336
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    .line 342
    .line 343
    if-eqz v17, :cond_7

    .line 344
    .line 345
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 346
    .line 347
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_7

    .line 352
    .line 353
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 354
    .line 355
    .line 356
    :cond_7
    return-object v0

    .line 357
    :catchall_1
    move-exception v0

    .line 358
    goto :goto_4

    .line 359
    :catchall_2
    move-exception v0

    .line 360
    move-object/from16 v17, v14

    .line 361
    .line 362
    move-object v14, v5

    .line 363
    goto :goto_4

    .line 364
    :catch_0
    move-object/from16 v17, v14

    .line 365
    .line 366
    move-object v14, v5

    .line 367
    goto :goto_5

    .line 368
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    .line 370
    .line 371
    if-eqz v17, :cond_8

    .line 372
    .line 373
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 374
    .line 375
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_8

    .line 380
    .line 381
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 382
    .line 383
    .line 384
    :cond_8
    throw v0

    .line 385
    :catch_1
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    .line 387
    .line 388
    if-eqz v17, :cond_9

    .line 389
    .line 390
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 391
    .line 392
    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_9

    .line 397
    .line 398
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 399
    .line 400
    .line 401
    :cond_9
    const/4 v0, 0x0

    .line 402
    return-object v0

    .line 403
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    throw v0
.end method

.method public final findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    move/from16 v11, p5

    .line 10
    .line 11
    move-wide/from16 v12, p7

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string/jumbo v2, "findFocus"

    .line 20
    .line 21
    .line 22
    const-string v3, "accessibilityWindowId="

    .line 23
    .line 24
    const-string v4, ";accessibilityNodeId="

    .line 25
    .line 26
    invoke-static {v1, v3, v8, v9, v4}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, ";focusType="

    .line 31
    .line 32
    const-string v5, ";interactionId="

    .line 33
    .line 34
    invoke-static {v10, v11, v4, v5, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    const-string v4, ";callback="

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-object/from16 v4, p6

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ";interrogatingTid="

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object/from16 v4, p6

    .line 64
    .line 65
    :goto_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v3

    .line 72
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/4 v14, 0x0

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    monitor-exit v3

    .line 80
    return-object v14

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_1
    invoke-virtual {v0, v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 89
    .line 90
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 91
    .line 92
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 93
    .line 94
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 95
    .line 96
    invoke-virtual {v1, v6, v0, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    monitor-exit v3

    .line 103
    return-object v14

    .line 104
    :cond_2
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 105
    .line 106
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 107
    .line 108
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 109
    .line 110
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 111
    .line 112
    invoke-virtual {v1, v6, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    if-nez v15, :cond_3

    .line 117
    .line 118
    monitor-exit v3

    .line 119
    return-object v14

    .line 120
    :cond_3
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 121
    .line 122
    invoke-virtual {v1, v5, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 129
    .line 130
    .line 131
    move-object v6, v14

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    move-object v6, v2

    .line 134
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 136
    .line 137
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 138
    .line 139
    invoke-virtual {v1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 144
    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    check-cast v16, [F

    .line 148
    .line 149
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 150
    .line 151
    move-object v7, v1

    .line 152
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_5

    .line 161
    .line 162
    return-object v14

    .line 163
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    move-object/from16 v1, p0

    .line 168
    .line 169
    move-object/from16 v2, p6

    .line 170
    .line 171
    move v4, v3

    .line 172
    move v3, v5

    .line 173
    move/from16 p1, v4

    .line 174
    .line 175
    move/from16 v4, p5

    .line 176
    .line 177
    move/from16 v5, p1

    .line 178
    .line 179
    move-object v14, v6

    .line 180
    move-object/from16 v17, v15

    .line 181
    .line 182
    move-object v15, v7

    .line 183
    move-wide/from16 v6, p7

    .line 184
    .line 185
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 190
    .line 191
    .line 192
    move-result-wide v18

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_6

    .line 198
    .line 199
    const-string/jumbo v1, "findFocus"

    .line 200
    .line 201
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v3, ";"

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, ";"

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, ";"

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, ";"

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, ";"

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 248
    .line 249
    const-string v4, ";"

    .line 250
    .line 251
    const-string v5, ";"

    .line 252
    .line 253
    move/from16 v6, p1

    .line 254
    .line 255
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, ";"

    .line 262
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v3, ";"

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :goto_2
    move-object/from16 v5, v17

    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_6
    move/from16 v6, p1

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :goto_3
    :try_start_1
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 295
    .line 296
    iget v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 297
    .line 298
    move-wide/from16 v2, p2

    .line 299
    .line 300
    move v8, v4

    .line 301
    move/from16 v4, p4

    .line 302
    .line 303
    move-object v10, v5

    .line 304
    move-object v5, v14

    .line 305
    move v9, v6

    .line 306
    move/from16 v6, p5

    .line 307
    .line 308
    move-object/from16 v17, v14

    .line 309
    .line 310
    move-object v14, v10

    .line 311
    move-wide/from16 v10, p7

    .line 312
    .line 313
    move-object v12, v15

    .line 314
    move-object/from16 v13, v16

    .line 315
    .line 316
    :try_start_2
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 317
    .line 318
    .line 319
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 320
    .line 321
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 322
    .line 323
    iget v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 324
    .line 325
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    .line 331
    .line 332
    if-eqz v17, :cond_7

    .line 333
    .line 334
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 335
    .line 336
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_7

    .line 341
    .line 342
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 343
    .line 344
    .line 345
    :cond_7
    return-object v0

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    goto :goto_4

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    move-object/from16 v17, v14

    .line 350
    .line 351
    move-object v14, v5

    .line 352
    goto :goto_4

    .line 353
    :catch_0
    move-object/from16 v17, v14

    .line 354
    .line 355
    move-object v14, v5

    .line 356
    goto :goto_5

    .line 357
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    .line 359
    .line 360
    if-eqz v17, :cond_8

    .line 361
    .line 362
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 363
    .line 364
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_8

    .line 369
    .line 370
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 371
    .line 372
    .line 373
    :cond_8
    throw v0

    .line 374
    :catch_1
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    .line 376
    .line 377
    if-eqz v17, :cond_9

    .line 378
    .line 379
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 380
    .line 381
    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-eqz v0, :cond_9

    .line 386
    .line 387
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 388
    .line 389
    .line 390
    :cond_9
    const/4 v0, 0x0

    .line 391
    return-object v0

    .line 392
    :goto_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    throw v0
.end method

.method public final focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v8, p2

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    move/from16 v11, p5

    .line 8
    .line 9
    move-wide/from16 v12, p7

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string/jumbo v1, "focusSearch"

    .line 18
    .line 19
    .line 20
    const-string v2, "accessibilityWindowId="

    .line 21
    .line 22
    const-string v3, ";accessibilityNodeId="

    .line 23
    .line 24
    move/from16 v4, p1

    .line 25
    .line 26
    invoke-static {v4, v2, v8, v9, v3}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, ";direction="

    .line 31
    .line 32
    const-string v5, ";interactionId="

    .line 33
    .line 34
    invoke-static {v10, v11, v3, v5, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    const-string v3, ";callback="

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-object/from16 v3, p6

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ";interrogatingTid="

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move/from16 v4, p1

    .line 64
    .line 65
    move-object/from16 v3, p6

    .line 66
    .line 67
    :goto_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v2

    .line 74
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/4 v14, 0x0

    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    monitor-exit v2

    .line 82
    return-object v14

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 91
    .line 92
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 93
    .line 94
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 95
    .line 96
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 97
    .line 98
    invoke-virtual {v5, v6, v0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_2

    .line 103
    .line 104
    monitor-exit v2

    .line 105
    return-object v14

    .line 106
    :cond_2
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 107
    .line 108
    iget-object v6, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 109
    .line 110
    check-cast v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 111
    .line 112
    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 113
    .line 114
    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    if-nez v15, :cond_3

    .line 119
    .line 120
    monitor-exit v2

    .line 121
    return-object v14

    .line 122
    :cond_3
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 123
    .line 124
    invoke-virtual {v5, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 131
    .line 132
    .line 133
    move-object v6, v14

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move-object v6, v1

    .line 136
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 138
    .line 139
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 146
    .line 147
    move-object/from16 v16, v2

    .line 148
    .line 149
    check-cast v16, [F

    .line 150
    .line 151
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 152
    .line 153
    move-object v7, v1

    .line 154
    check-cast v7, Landroid/view/MagnificationSpec;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_5

    .line 163
    .line 164
    return-object v14

    .line 165
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    move-object/from16 v1, p0

    .line 170
    .line 171
    move-object/from16 v2, p6

    .line 172
    .line 173
    move v3, v4

    .line 174
    move/from16 v4, p5

    .line 175
    .line 176
    move/from16 p1, v5

    .line 177
    .line 178
    move-object v14, v6

    .line 179
    move-object/from16 v17, v15

    .line 180
    .line 181
    move-object v15, v7

    .line 182
    move-wide/from16 v6, p7

    .line 183
    .line 184
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 189
    .line 190
    .line 191
    move-result-wide v18

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_6

    .line 197
    .line 198
    const-string/jumbo v1, "focusSearch"

    .line 199
    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, ";"

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v3, ";"

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v3, ";"

    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, ";"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v3, ";"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 247
    .line 248
    const-string v4, ";"

    .line 249
    .line 250
    const-string v5, ";"

    .line 251
    .line 252
    move/from16 v6, p1

    .line 253
    .line 254
    invoke-static {v3, v6, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v3, ";"

    .line 261
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v3, ";"

    .line 269
    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_2
    move-object/from16 v5, v17

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_6
    move/from16 v6, p1

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :goto_3
    :try_start_1
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 294
    .line 295
    iget v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 296
    .line 297
    move-wide/from16 v2, p2

    .line 298
    .line 299
    move v8, v4

    .line 300
    move/from16 v4, p4

    .line 301
    .line 302
    move-object v10, v5

    .line 303
    move-object v5, v14

    .line 304
    move v9, v6

    .line 305
    move/from16 v6, p5

    .line 306
    .line 307
    move-object/from16 v17, v14

    .line 308
    .line 309
    move-object v14, v10

    .line 310
    move-wide/from16 v10, p7

    .line 311
    .line 312
    move-object v12, v15

    .line 313
    move-object/from16 v13, v16

    .line 314
    .line 315
    :try_start_2
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 319
    .line 320
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 321
    .line 322
    iget v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    .line 323
    .line 324
    invoke-virtual {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(ILjava/lang/String;)[Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    .line 330
    .line 331
    if-eqz v17, :cond_7

    .line 332
    .line 333
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 334
    .line 335
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_7

    .line 340
    .line 341
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 342
    .line 343
    .line 344
    :cond_7
    return-object v0

    .line 345
    :catchall_1
    move-exception v0

    .line 346
    goto :goto_4

    .line 347
    :catchall_2
    move-exception v0

    .line 348
    move-object/from16 v17, v14

    .line 349
    .line 350
    move-object v14, v5

    .line 351
    goto :goto_4

    .line 352
    :catch_0
    move-object/from16 v17, v14

    .line 353
    .line 354
    move-object v14, v5

    .line 355
    goto :goto_5

    .line 356
    :goto_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    .line 358
    .line 359
    if-eqz v17, :cond_8

    .line 360
    .line 361
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 362
    .line 363
    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_8

    .line 368
    .line 369
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 370
    .line 371
    .line 372
    :cond_8
    throw v0

    .line 373
    :catch_1
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .line 375
    .line 376
    if-eqz v17, :cond_9

    .line 377
    .line 378
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 379
    .line 380
    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_9

    .line 385
    .line 386
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Region;->recycle()V

    .line 387
    .line 388
    .line 389
    :cond_9
    const/4 v0, 0x0

    .line 390
    return-object v0

    .line 391
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    throw v0
.end method

.method public final getCapabilities()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getCurrentMagnificationRegion"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 46
    .line 47
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object v1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public getInstalledAndEnabledServices()Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getMagnificationCenterX(I)F
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getMagnificationCenterX"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 43
    .line 44
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p0, 0x0

    .line 85
    :goto_0
    :try_start_2
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    .line 92
    .line 93
    .line 94
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    .line 99
    .line 100
    :cond_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    return v4

    .line 105
    :catchall_1
    move-exception v4

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    throw p0
.end method

.method public getMagnificationCenterY(I)F
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getMagnificationCenterY"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 43
    .line 44
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p0, 0x0

    .line 85
    :goto_0
    :try_start_2
    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 92
    .line 93
    .line 94
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    .line 99
    .line 100
    :cond_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    return v4

    .line 105
    :catchall_1
    move-exception v4

    .line 106
    if-eqz p0, :cond_4

    .line 107
    .line 108
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 112
    :catchall_2
    move-exception p0

    .line 113
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 118
    throw p0
.end method

.method public getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getMagnificationConfig"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 48
    .line 49
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p0
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getMagnificationRegion"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 46
    .line 47
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object v1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public getMagnificationScale(I)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getMagnificationScale"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    const/high16 p0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 49
    .line 50
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 61
    .line 62
    .line 63
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return p0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    throw p0
.end method

.method public final getOverlayWindowToken(I)Landroid/os/IBinder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getOverlayWindowToken"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getServiceInfo"

    .line 8
    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getSystemActions"

    .line 8
    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->getSystemActions()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0
.end method

.method public final getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getWindow"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "windowId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, -0x1

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 34
    .line 35
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 36
    .line 37
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowId(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    monitor-exit v1

    .line 57
    return-object v2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    and-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    monitor-exit v1

    .line 86
    return-object v2

    .line 87
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    monitor-exit v1

    .line 112
    return-object p1

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    monitor-exit v1

    .line 119
    return-object v2

    .line 120
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_5
    monitor-exit v1

    .line 125
    return-object v2

    .line 126
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    throw p0
.end method

.method public final getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getWindowIdForLeashToken"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "token="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v3, -0x1

    .line 44
    if-ne p1, v3, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return p1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p0
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "getWindows"

    .line 8
    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    and-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    if-eqz v1, :cond_8

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 44
    .line 45
    if-eqz v1, :cond_8

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object v2

    .line 57
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    new-instance v3, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    .line 62
    .line 63
    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 67
    .line 68
    iget v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v6, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v8, 0x0

    .line 85
    move v9, v8

    .line 86
    :goto_0
    if-ge v9, v7, :cond_5

    .line 87
    .line 88
    iget-object v10, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    check-cast v10, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 95
    .line 96
    if-eqz v10, :cond_4

    .line 97
    .line 98
    iget-boolean v11, v10, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 99
    .line 100
    iget v10, v10, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 101
    .line 102
    if-nez v11, :cond_3

    .line 103
    .line 104
    and-int/lit8 v12, v5, 0x1

    .line 105
    .line 106
    if-eqz v12, :cond_3

    .line 107
    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    if-eqz v11, :cond_4

    .line 117
    .line 118
    and-int/lit8 v11, v5, 0x2

    .line 119
    .line 120
    if-eqz v11, :cond_4

    .line 121
    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-lez v4, :cond_7

    .line 137
    .line 138
    :goto_2
    if-ge v8, v4, :cond_7

    .line 139
    .line 140
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catchall_1
    move-exception p0

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    .line 170
    .line 171
    monitor-exit v0

    .line 172
    return-object v3

    .line 173
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_8
    monitor-exit v0

    .line 178
    return-object v2

    .line 179
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    throw p0
.end method

.method public final getWindowsByDisplayLocked(I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_1
    if-ge v2, v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 38
    .line 39
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-object v0
.end method

.method public final getWindowsMainDisplay(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract hasRightsToCurrentUserLocked()Z
.end method

.method public final intConnTracingEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-wide/16 v0, 0x10

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable"

    .line 8
    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "android.hardware.fingerprint"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 42
    .line 43
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    :goto_0
    move p0, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 61
    .line 62
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    xor-int/2addr p0, v4

    .line 67
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :catch_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :goto_1
    if-eqz p0, :cond_3

    .line 81
    .line 82
    move v1, v4

    .line 83
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return v1

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    return v1

    .line 93
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isServiceDetectsGesturesEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p11

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 10
    .line 11
    move-wide/from16 v9, p4

    .line 12
    .line 13
    invoke-interface {v4, v9, v10}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const-string/jumbo v4, "call_stack"

    .line 20
    .line 21
    .line 22
    const-class v5, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string/jumbo v5, "ignore_call_stack"

    .line 31
    .line 32
    .line 33
    const-class v6, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object/from16 v17, v1

    .line 40
    .line 41
    check-cast v17, Ljava/util/HashSet;

    .line 42
    .line 43
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object/from16 v16, v0

    .line 56
    .line 57
    check-cast v16, [Ljava/lang/StackTraceElement;

    .line 58
    .line 59
    move-wide/from16 v6, p1

    .line 60
    .line 61
    move-object/from16 v8, p3

    .line 62
    .line 63
    move-wide/from16 v9, p4

    .line 64
    .line 65
    move-object/from16 v11, p6

    .line 66
    .line 67
    move/from16 v12, p7

    .line 68
    .line 69
    move-wide/from16 v13, p8

    .line 70
    .line 71
    move/from16 v15, p10

    .line 72
    .line 73
    invoke-interface/range {v5 .. v17}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(JLjava/lang/String;JLjava/lang/String;IJI[Ljava/lang/StackTraceElement;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-string v0, "AbstractAccessibilityServiceConnection."

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-wide/16 v0, 0x10

    .line 10
    .line 11
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-string v0, "AbstractAccessibilityServiceConnection.IAccessibilityServiceClient."

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-wide/16 v0, 0x2

    .line 10
    .line 11
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-string v0, "AbstractAccessibilityServiceConnection.IAccessibilityServiceConnection."

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-wide/16 v0, 0x1

    .line 10
    .line 11
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final logTraceWM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-string v0, "WindowManagerInternal."

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-wide/16 v0, 0x200

    .line 10
    .line 11
    invoke-interface {p0, p1, v0, v1, p2}, Landroid/accessibilityservice/AccessibilityTrace;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const v3, 0x41b83d

    .line 17
    .line 18
    .line 19
    and-int/2addr v3, v1

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-nez v2, :cond_1

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 34
    .line 35
    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-wide v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    cmp-long v3, v3, v5

    .line 52
    .line 53
    if-lez v3, :cond_4

    .line 54
    .line 55
    const/16 v3, 0x800

    .line 56
    .line 57
    if-eq v1, v3, :cond_4

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v4, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 90
    .line 91
    invoke-virtual {v3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_1
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    .line 98
    .line 99
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 100
    .line 101
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 6
    .line 7
    const-wide/16 v3, 0x200

    .line 8
    .line 9
    invoke-interface {v2, v3, v4}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "addWindowToken"

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, ";true;"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/os/IBinder;

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public onDoubleTap(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 12
    .line 13
    const/4 v4, 0x5

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public onDoubleTapAndHold(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const-string/jumbo v0, "onKeyEvent"

    .line 38
    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ", "

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 64
    .line 65
    invoke-interface {p0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :catch_0
    :cond_4
    :goto_0
    return v1
.end method

.method public final onRemoved()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    const-string/jumbo v2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    array-length v2, v0

    .line 38
    :goto_1
    if-ge v1, v2, :cond_2

    .line 39
    .line 40
    aget-object v3, v0, v1

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_2
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 66
    .line 67
    check-cast v1, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/view/SurfaceControl;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlays:Ljava/util/List;

    .line 103
    .line 104
    check-cast p0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    move-object/from16 v4, p5

    .line 8
    .line 9
    move/from16 v5, p6

    .line 10
    .line 11
    move-object/from16 v6, p7

    .line 12
    .line 13
    move-wide/from16 v9, p8

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    const-string/jumbo v7, "performAccessibilityAction"

    .line 22
    .line 23
    .line 24
    const-string v8, "accessibilityWindowId="

    .line 25
    .line 26
    const-string v11, ";accessibilityNodeId="

    .line 27
    .line 28
    move/from16 v12, p1

    .line 29
    .line 30
    invoke-static {v12, v8, v1, v2, v11}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v11, ";action="

    .line 35
    .line 36
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v11, ";arguments="

    .line 43
    .line 44
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v11, ";interactionId="

    .line 51
    .line 52
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v11, ";callback="

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v11, ";interrogatingTid="

    .line 67
    .line 68
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v0, v7, v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move/from16 v12, p1

    .line 83
    .line 84
    :goto_0
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v7

    .line 87
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    const/4 v11, 0x0

    .line 92
    if-nez v8, :cond_1

    .line 93
    .line 94
    monitor-exit v7

    .line 95
    return v11

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto/16 :goto_d

    .line 98
    .line 99
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    iget-object v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 104
    .line 105
    iget-object v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 106
    .line 107
    check-cast v13, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 108
    .line 109
    iget v13, v13, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 110
    .line 111
    invoke-virtual {v12, v13, v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-nez v12, :cond_2

    .line 116
    .line 117
    monitor-exit v7

    .line 118
    return v11

    .line 119
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 121
    .line 122
    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_3

    .line 127
    .line 128
    return v11

    .line 129
    :cond_3
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 130
    .line 131
    check-cast v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 132
    .line 133
    iget v7, v7, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 134
    .line 135
    iget v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 136
    .line 137
    iget-object v13, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 138
    .line 139
    monitor-enter v13

    .line 140
    :try_start_1
    iget-object v14, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 141
    .line 142
    invoke-virtual {v14, v7, v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    if-nez v14, :cond_4

    .line 147
    .line 148
    monitor-exit v13

    .line 149
    goto/16 :goto_b

    .line 150
    .line 151
    :catchall_1
    move-exception v0

    .line 152
    goto/16 :goto_c

    .line 153
    .line 154
    :cond_4
    const/16 v15, 0x40

    .line 155
    .line 156
    const/16 v16, 0x1

    .line 157
    .line 158
    if-eq v3, v15, :cond_6

    .line 159
    .line 160
    const/16 v15, 0x80

    .line 161
    .line 162
    if-ne v3, v15, :cond_5

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    move v15, v11

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    :goto_1
    move/from16 v15, v16

    .line 168
    .line 169
    :goto_2
    if-nez v15, :cond_7

    .line 170
    .line 171
    iget-object v11, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 172
    .line 173
    invoke-virtual {v11, v7, v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    :goto_3
    move-object/from16 p1, v14

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    const/4 v11, 0x0

    .line 181
    goto :goto_3

    .line 182
    :goto_4
    iget-object v14, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 183
    .line 184
    invoke-virtual {v14, v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    if-eqz v14, :cond_8

    .line 189
    .line 190
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-eqz v14, :cond_8

    .line 195
    .line 196
    iget-object v14, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 197
    .line 198
    iget-object v14, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 199
    .line 200
    if-eqz v14, :cond_8

    .line 201
    .line 202
    if-nez v15, :cond_8

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_8
    move-object/from16 v14, p1

    .line 206
    .line 207
    :goto_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 213
    .line 214
    .line 215
    move-result-wide v17

    .line 216
    :try_start_2
    iget-object v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 217
    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 222
    move/from16 p1, v12

    .line 223
    .line 224
    const/4 v12, 0x3

    .line 225
    move-object/from16 v19, v14

    .line 226
    .line 227
    const/4 v14, 0x0

    .line 228
    :try_start_3
    invoke-virtual {v15, v9, v10, v12, v14}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 229
    .line 230
    .line 231
    const/16 v9, 0x10

    .line 232
    .line 233
    if-eq v3, v9, :cond_9

    .line 234
    .line 235
    const/16 v9, 0x20

    .line 236
    .line 237
    if-ne v3, v9, :cond_a

    .line 238
    .line 239
    :cond_9
    iget-object v9, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 240
    .line 241
    invoke-virtual {v9, v7, v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;->notifyOutsideTouch(II)V

    .line 242
    .line 243
    .line 244
    :cond_a
    if-eqz v11, :cond_b

    .line 245
    .line 246
    iget-object v7, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 247
    .line 248
    invoke-virtual {v7, v11}, Lcom/android/server/wm/WindowManagerInternal;->requestWindowFocus(Landroid/os/IBinder;)V

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :catchall_2
    move-exception v0

    .line 253
    goto/16 :goto_9

    .line 254
    .line 255
    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->intConnTracingEnabled()Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_c

    .line 260
    .line 261
    const-string/jumbo v7, "performAccessibilityAction"

    .line 262
    .line 263
    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v9, ";"

    .line 273
    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v9, ";"

    .line 281
    .line 282
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v9, ";"

    .line 289
    .line 290
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v9, ";"

    .line 297
    .line 298
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v9, ";"

    .line 305
    .line 306
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget v9, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 310
    .line 311
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v9, ";"

    .line 315
    .line 316
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v9, ";"

    .line 323
    .line 324
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-wide/from16 v9, p8

    .line 328
    .line 329
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    invoke-virtual {v0, v7, v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceIntConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :goto_7
    move-object/from16 v0, v19

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_c
    move-wide/from16 v9, p8

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :goto_8
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 346
    .line 347
    move-wide/from16 v1, p2

    .line 348
    .line 349
    move/from16 v3, p4

    .line 350
    .line 351
    move-object/from16 v4, p5

    .line 352
    .line 353
    move/from16 v5, p6

    .line 354
    .line 355
    move-object/from16 v6, p7

    .line 356
    .line 357
    move/from16 v7, p1

    .line 358
    .line 359
    move v8, v13

    .line 360
    move-wide/from16 v9, p8

    .line 361
    .line 362
    invoke-interface/range {v0 .. v10}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 363
    .line 364
    .line 365
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    .line 367
    .line 368
    move/from16 v11, v16

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :catch_0
    const/4 v14, 0x0

    .line 372
    goto :goto_a

    .line 373
    :goto_9
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :catch_1
    :goto_a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    .line 379
    .line 380
    move v11, v14

    .line 381
    :goto_b
    return v11

    .line 382
    :goto_c
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 383
    throw v0

    .line 384
    :goto_d
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 385
    throw v0
.end method

.method public performGlobalAction(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "performGlobalAction"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "action="

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0
.end method

.method public final replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance p0, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move v5, p3

    .line 33
    move v6, p4

    .line 34
    move-wide v7, p5

    .line 35
    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 42
    return-object p1

    .line 43
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public requestDelegating(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 12
    .line 13
    const/4 v4, 0x7

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public requestDragging(II)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {v3, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public requestTouchExploration(I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v3, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public resetCurrentMagnification(IZ)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "resetCurrentMagnification"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "displayId="

    .line 11
    .line 12
    .line 13
    const-string v2, ";animate="

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return v2

    .line 50
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 56
    .line 57
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x1

    .line 69
    if-ne v3, v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    if-ne v3, v5, :cond_5

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    sget-object p2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    move p2, v2

    .line 98
    :goto_1
    if-nez p2, :cond_8

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 105
    .line 106
    if-ne p2, v6, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    if-ne p2, v5, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 124
    .line 125
    .line 126
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    goto :goto_2

    .line 128
    :cond_7
    move p0, v2

    .line 129
    :goto_2
    if-nez p0, :cond_9

    .line 130
    .line 131
    :cond_8
    move v2, v6

    .line 132
    :cond_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return v2

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    throw p0
.end method

.method public resetLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->resetDynamicallyConfigurableProperties()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 18
    .line 19
    check-cast v2, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/List;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v4, v3

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v4, v5, :cond_0

    .line 36
    .line 37
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    iget-object v0, v0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 52
    .line 53
    check-cast v0, Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/4 v0, 0x0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const-string/jumbo v1, "init"

    .line 71
    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v4, "null, "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ", null"

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 102
    .line 103
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 104
    .line 105
    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    :try_start_2
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_1
    const-string v1, "AbstractAccessibilityServiceConnection"

    .line 117
    .line 118
    const-string v2, "Failed unregistering death link"

    .line 119
    .line 120
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :goto_1
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 124
    .line 125
    :cond_4
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 126
    .line 127
    iput-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 128
    .line 129
    return-void

    .line 130
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    throw p0
.end method

.method public resetMagnification(IZ)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "resetMagnification"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "displayId="

    .line 11
    .line 12
    .line 13
    const-string v2, ";animate="

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return v2

    .line 49
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    const/4 v3, 0x1

    .line 71
    if-nez p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 78
    .line 79
    if-ne p2, v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    const/4 v4, 0x2

    .line 91
    if-ne p2, v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 98
    .line 99
    .line 100
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move p0, v2

    .line 103
    :goto_0
    if-nez p0, :cond_6

    .line 104
    .line 105
    :cond_5
    move v2, v3

    .line 106
    :cond_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :catchall_1
    move-exception p0

    .line 111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p0
.end method

.method public resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 13
    .line 14
    invoke-virtual {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return p1
.end method

.method public final resolveAccessibilityWindowIdLocked(I)I
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 9
    .line 10
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 21
    .line 22
    invoke-virtual {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, -0x1

    .line 29
    return p0

    .line 30
    :cond_0
    return p1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "sequence="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ";gestureSteps="

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string/jumbo p2, "sendGesture"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda4;-><init>(ILandroid/os/RemoteCallback;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final sendScreenshotSuccess(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->deleteCaptureDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda5;-><init>(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;Landroid/os/RemoteCallback;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Landroid/graphics/ParcelableColorSpace;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "screenshot_status"

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "screenshot_hardwareBuffer"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v1, "screenshot_colorSpace"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v0, "screenshot_timestamp"

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public setAnimationScale(F)V
    .locals 6

    .line 1
    const-string v0, "animator_duration_scale"

    .line 2
    .line 3
    const-string/jumbo v1, "transition_animation_scale"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "window_animation_scale"

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5, v2, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5, v1, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v5, v0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 38
    .line 39
    .line 40
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    move v1, v0

    .line 46
    :goto_0
    const/4 v2, 0x3

    .line 47
    if-ge v1, v2, :cond_1

    .line 48
    .line 49
    aget-object v2, p1, v1

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v5, "0.0"

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string/jumbo p1, "remove_animations"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final setAttributionTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAttributionTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCacheEnabled(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setCacheEnabled"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "enabled="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 38
    .line 39
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 4
    .line 5
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 8
    .line 9
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 30
    .line 31
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    and-int/2addr v0, v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    move v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v0, v2

    .line 41
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getMotionEventSources()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    .line 48
    .line 49
    invoke-static {}, Landroid/view/accessibility/Flags;->motionEventObserving()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string v3, "android.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getObservedMotionEventSources()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mObservedMotionEventSources:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v0, "AbstractAccessibilityServiceConnection"

    .line 73
    .line 74
    const-string v3, "Observing motion events requires android.Manifest.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING."

    .line 75
    .line 76
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iput v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mObservedMotionEventSources:I

    .line 80
    .line 81
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 88
    .line 89
    and-int/lit8 v0, v0, 0x2

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 94
    .line 95
    or-int/lit16 v0, v0, 0x80

    .line 96
    .line 97
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 101
    .line 102
    and-int/lit16 v0, v0, -0x81

    .line 103
    .line 104
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 105
    .line 106
    :cond_5
    :goto_2
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 107
    .line 108
    and-int/lit8 v0, v0, 0x10

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 113
    .line 114
    or-int/lit16 v0, v0, 0x100

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 120
    .line 121
    and-int/lit16 v0, v0, -0x101

    .line 122
    .line 123
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 124
    .line 125
    :goto_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x200

    .line 136
    .line 137
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 141
    .line 142
    and-int/lit16 v0, v0, -0x201

    .line 143
    .line 144
    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 145
    .line 146
    :goto_4
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 147
    .line 148
    and-int/lit8 v0, p1, 0x4

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    move v0, v1

    .line 153
    goto :goto_5

    .line 154
    :cond_8
    move v0, v2

    .line 155
    :goto_5
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 156
    .line 157
    and-int/lit16 v0, p1, 0x800

    .line 158
    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    move v0, v1

    .line 162
    goto :goto_6

    .line 163
    :cond_9
    move v0, v2

    .line 164
    :goto_6
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    .line 165
    .line 166
    and-int/lit16 v0, p1, 0x1000

    .line 167
    .line 168
    if-eqz v0, :cond_a

    .line 169
    .line 170
    move v0, v1

    .line 171
    goto :goto_7

    .line 172
    :cond_a
    move v0, v2

    .line 173
    :goto_7
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    .line 174
    .line 175
    and-int/lit16 v0, p1, 0x2000

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    move v0, v1

    .line 180
    goto :goto_8

    .line 181
    :cond_b
    move v0, v2

    .line 182
    :goto_8
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    .line 183
    .line 184
    and-int/lit16 v0, p1, 0x4000

    .line 185
    .line 186
    if-eqz v0, :cond_c

    .line 187
    .line 188
    move v0, v1

    .line 189
    goto :goto_9

    .line 190
    :cond_c
    move v0, v2

    .line 191
    :goto_9
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    .line 192
    .line 193
    and-int/lit8 v0, p1, 0x20

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    move v0, v1

    .line 198
    goto :goto_a

    .line 199
    :cond_d
    move v0, v2

    .line 200
    :goto_a
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 201
    .line 202
    and-int/lit8 v0, p1, 0x40

    .line 203
    .line 204
    if-eqz v0, :cond_e

    .line 205
    .line 206
    move v0, v1

    .line 207
    goto :goto_b

    .line 208
    :cond_e
    move v0, v2

    .line 209
    :goto_b
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 210
    .line 211
    and-int/lit16 v0, p1, 0x200

    .line 212
    .line 213
    if-eqz v0, :cond_f

    .line 214
    .line 215
    move v0, v1

    .line 216
    goto :goto_c

    .line 217
    :cond_f
    move v0, v2

    .line 218
    :goto_c
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 219
    .line 220
    and-int/lit16 v0, p1, 0x100

    .line 221
    .line 222
    if-eqz v0, :cond_10

    .line 223
    .line 224
    move v0, v1

    .line 225
    goto :goto_d

    .line 226
    :cond_10
    move v0, v2

    .line 227
    :goto_d
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 228
    .line 229
    const v0, 0x8000

    .line 230
    .line 231
    .line 232
    and-int/2addr p1, v0

    .line 233
    if-eqz p1, :cond_11

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_11
    move v1, v2

    .line 237
    :goto_e
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 238
    .line 239
    return-void
.end method

.method public setFocusAppearance(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "strokeWidth="

    .line 8
    .line 9
    .line 10
    const-string v1, ";color="

    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo p2, "setFocusAppearance"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "displayId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ";region="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "setGestureDetectionPassthroughRegion"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 41
    .line 42
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v3, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public setInstalledAndEnabledServices(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setMagnificationCallbackEnabled"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "displayId="

    .line 11
    .line 12
    .line 13
    const-string v2, ";enabled="

    .line 14
    .line 15
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 36
    .line 37
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setMagnificationSpec"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "displayId="

    .line 11
    .line 12
    .line 13
    const-string v2, ", config="

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Landroid/accessibilityservice/MagnificationConfig;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return v2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 65
    .line 66
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 69
    .line 70
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 71
    .line 72
    invoke-virtual {v3, p1, p2, p3, p0}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z

    .line 73
    .line 74
    .line 75
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return p0

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "handled="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ";sequence="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "setOnKeyEventResult"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 41
    .line 42
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public setServiceDetectsGesturesEnabled(IZ)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {v3, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "setServiceInfo"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "info="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 48
    .line 49
    invoke-virtual {v4, v5, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 62
    .line 63
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x1

    .line 67
    invoke-virtual {p1, v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 68
    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 77
    .line 78
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    if-eqz v3, :cond_3

    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 87
    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 91
    .line 92
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string p1, "Cannot update service info: size is larger than safe parcelable limits."

    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "enabled="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "setSoftKeyboardCallbackEnabled"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public setTestBrailleDisplayData(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTestBrailleDisplayData_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "displayId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ";region="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "setTouchExplorationPassthroughRegion"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 41
    .line 42
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v3, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6
    .line 7
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    if-lt p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final svcClientTracingEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-wide/16 v0, 0x2

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final svcConnTracingEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 2
    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "takeScreenshot"

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "displayId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ";callback="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v4, v2, v4

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    sub-long v2, v0, v2

    .line 49
    .line 50
    const-wide/16 v4, 0x14d

    .line 51
    .line 52
    cmp-long v2, v2, v4

    .line 53
    .line 54
    if-gtz v2, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x3

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    and-int/lit16 v1, v1, 0x80

    .line 91
    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    const/4 p1, 0x2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-string/jumbo v1, "display"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const/4 v1, 0x4

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const/4 v3, 0x5

    .line 131
    if-ne v2, v3, :cond_4

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    and-int/2addr v0, v1

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-static {}, Lcom/android/window/flags/Flags;->deleteCaptureDisplay()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v4, 0x0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    :try_start_1
    new-instance v0, Landroid/window/ScreenCapture$ScreenCaptureListener;

    .line 153
    .line 154
    new-instance v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;

    .line 155
    .line 156
    invoke-direct {v5, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/RemoteCallback;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v5}, Landroid/window/ScreenCapture$ScreenCaptureListener;-><init>(Ljava/util/function/ObjIntConsumer;)V

    .line 160
    .line 161
    .line 162
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 163
    .line 164
    invoke-virtual {v5, p1, v4, v0}, Lcom/android/server/wm/WindowManagerInternal;->captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    goto :goto_1

    .line 173
    :catch_0
    :try_start_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 182
    .line 183
    new-instance v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;

    .line 184
    .line 185
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 197
    .line 198
    .line 199
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void

    .line 203
    :catchall_2
    move-exception p0

    .line 204
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_6
    :goto_3
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_7
    :try_start_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 213
    .line 214
    const-string p1, "Services don\'t have the capability of taking the screenshot."

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    throw p0
.end method

.method public final takeScreenshotOfWindow(IILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sub-long v2, v0, v2

    .line 24
    .line 25
    const-wide/16 v4, 0x14d

    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-gtz v2, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x3

    .line 32
    invoke-interface {p4, p0, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotOfWindowTimestampMs:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    invoke-interface {p4, v2, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    and-int/lit16 v1, v1, 0x80

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x0

    .line 77
    :goto_0
    const/4 v1, 0x2

    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    invoke-interface {p4, v1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p4, v1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 105
    .line 106
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 107
    .line 108
    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-virtual {v2, v3, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-nez p0, :cond_5

    .line 119
    .line 120
    const/4 p0, 0x5

    .line 121
    invoke-interface {p4, p0, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 131
    .line 132
    invoke-interface {p0, p2, p3, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->takeScreenshotOfWindow(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    throw p0
.end method

.method public final wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0x80

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    move v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v0, v1

    .line 26
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v3, v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    return v1

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isAccessibilityDataSensitive()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0x200

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    return v1

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 60
    .line 61
    and-int/2addr v3, v0

    .line 62
    if-eq v3, v0, :cond_5

    .line 63
    .line 64
    return v1

    .line 65
    :cond_5
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_2

    .line 82
    :cond_6
    const/4 p1, 0x0

    .line 83
    :goto_2
    check-cast p0, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_8

    .line 96
    .line 97
    :cond_7
    move v1, v2

    .line 98
    :cond_8
    return v1
.end method

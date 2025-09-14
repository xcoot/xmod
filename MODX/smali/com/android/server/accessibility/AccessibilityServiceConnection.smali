.class public Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

.field public final mIntent:Landroid/content/Intent;

.field public final mMainHandler:Landroid/os/Handler;

.field public mTestBrailleDisplays:Ljava/util/List;

.field public final mUserId:I

.field public final mUserStateWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v14, p1

    .line 4
    move-object v1, p0

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    move-object/from16 v6, p6

    .line 15
    move-object/from16 v7, p7

    .line 17
    move-object/from16 v8, p8

    .line 19
    move-object/from16 v9, p9

    .line 21
    move-object/from16 v10, p10

    .line 23
    move-object/from16 v11, p11

    .line 25
    move-object/from16 v12, p12

    .line 27
    move-object/from16 v13, p13

    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mTestBrailleDisplays:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 37
    invoke-direct {v1, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    if-nez v14, :cond_0

    .line 44
    const/16 v1, -0x2710

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v1, v14, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 49
    :goto_0
    iput v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserId:I

    .line 51
    new-instance v1, Landroid/content/Intent;

    .line 53
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 64
    move-object/from16 v2, p6

    .line 66
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 68
    const-string v2, "android.intent.extra.client_label"

    .line 70
    const v3, 0x104010c

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    move-object/from16 v2, p14

    .line 78
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    move-result-wide v2

    .line 84
    :try_start_0
    const-string v4, "android.intent.extra.client_intent"

    .line 86
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 88
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 90
    new-instance v6, Landroid/content/Intent;

    .line 92
    const-string v7, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 94
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const/4 v5, 0x0

    .line 103
    const/high16 v7, 0x4000000

    .line 105
    invoke-static {v0, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 6
    if-eqz v1, :cond_2

    .line 8
    iget-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 14
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

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
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 27
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 35
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 40
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 42
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 44
    check-cast v1, Ljava/util/HashSet;

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 52
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 54
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 56
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 58
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetAllIfNeeded(I)V

    .line 63
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 65
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final connectBluetoothBrailleDisplay(Ljava/lang/String;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->connectBluetoothBrailleDisplay_enforcePermission()V

    .line 4
    invoke-static {}, Landroid/view/accessibility/Flags;->brailleDisplayHid()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 24
    const-class v1, Landroid/bluetooth/BluetoothManager;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 32
    const/4 v1, 0x0

    .line 33
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;

    .line 50
    invoke-direct {v2, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda3;

    .line 59
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    move-object v1, v0

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 88
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 96
    if-nez v2, :cond_2

    .line 98
    new-instance v2, Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 100
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 102
    invoke-direct {v2, v3, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;-><init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mTestBrailleDisplays:Ljava/util/List;

    .line 107
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->setTestData(Ljava/util/List;)V

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    const/4 p0, 0x5

    .line 116
    invoke-virtual {v2, p1, v1, p0, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->connectLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/accessibilityservice/IBrailleDisplayController;)V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    const-string p1, "This service already has a connected Braille display"

    .line 125
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 131
    const-string p1, "Caller does not have accessibility access"

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p0

    .line 137
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    throw p0

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    const-string p2, " is not a valid Bluetooth address"

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p0

    .line 151
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 153
    const-string p1, "Flag BRAILLE_DISPLAY_HID not enabled"

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p0
.end method

.method public final connectUsbBrailleDisplay(Landroid/hardware/usb/UsbDevice;Landroid/accessibilityservice/IBrailleDisplayController;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/accessibility/Flags;->brailleDisplayHid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 15
    const-string/jumbo v1, "usb"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    move-result v1

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 31
    move-result v2

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v3

    .line 36
    if-eqz v0, :cond_4

    .line 38
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 40
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v0, p1, v5, v2, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v1, :cond_0

    .line 60
    const/4 p0, 0x2

    .line 61
    :try_start_1
    invoke-interface {p2, p0}, Landroid/accessibilityservice/IBrailleDisplayController;->onConnectionFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception p0

    .line 68
    :try_start_2
    const-string p1, "AccessibilityServiceConnection"

    .line 70
    const-string p2, "Error calling onConnectionFailed"

    .line 72
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return-void

    .line 79
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v1

    .line 85
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 93
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 101
    if-nez v2, :cond_2

    .line 103
    new-instance v2, Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 105
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 107
    invoke-direct {v2, v3, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;-><init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 110
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mTestBrailleDisplays:Ljava/util/List;

    .line 112
    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->setTestData(Ljava/util/List;)V

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    const/4 p1, 0x3

    .line 125
    invoke-virtual {v2, v0, p0, p1, p2}, Lcom/android/server/accessibility/BrailleDisplayConnection;->connectLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/accessibilityservice/IBrailleDisplayController;)V

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 130
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 132
    const-string p1, "This service already has a connected Braille display"

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p0

    .line 138
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 140
    const-string p1, "Caller does not have accessibility access"

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 146
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    throw p0

    .line 148
    :cond_4
    :try_start_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 150
    const-string p1, "Caller does not have permission to access this UsbDevice"

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    throw p0

    .line 160
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    const-string p1, "Flag BRAILLE_DISPLAY_HID not enabled"

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p0
.end method

.method public final createImeSessionInternal()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string/jumbo v1, "createImeSession"

    .line 16
    const-string v2, ""

    .line 18
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;

    .line 26
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserId:I

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection$AccessibilityInputMethodSessionCallback;-><init>(I)V

    .line 31
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "Error requesting IME session from "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string v1, "AccessibilityServiceConnection"

    .line 53
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    :goto_2
    return-void
.end method

.method public disableSelf()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "disableSelf"

    .line 10
    const-string v1, ""

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 26
    if-nez v1, :cond_1

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 34
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 36
    check-cast v2, Ljava/util/HashSet;

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 50
    const-string/jumbo v5, "enabled_accessibility_services"

    .line 53
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 55
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 57
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 59
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 62
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 64
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    goto :goto_0

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    throw p0

    .line 79
    :cond_2
    :goto_0
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 6
    if-eqz v1, :cond_5

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 16
    move-result v1

    .line 17
    and-int/lit8 v1, v1, 0x20

    .line 19
    if-eqz v1, :cond_5

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 27
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    move-result-wide v4

    .line 36
    const-wide/16 v6, 0x3e8

    .line 38
    add-long/2addr v4, v6

    .line 39
    :catch_0
    :goto_0
    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 41
    if-nez v6, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    cmp-long v6, v6, v4

    .line 49
    if-gez v6, :cond_0

    .line 51
    :try_start_2
    iget-object v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    move-result-wide v7

    .line 57
    sub-long v7, v4, v7

    .line 59
    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    :try_start_3
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 65
    if-nez v3, :cond_1

    .line 67
    const-string v3, "AccessibilityManagerService"

    .line 69
    const-string v4, "MotionEventInjector installation timed out"

    .line 71
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/accessibility/MotionEventInjector;

    .line 82
    :goto_1
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 84
    const-wide/16 v5, 0x200

    .line 86
    invoke-interface {v4, v5, v6}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabledForTypes(J)Z

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 92
    const-string/jumbo v4, "isTouchOrFaketouchDevice"

    .line 95
    const-string v5, ""

    .line 97
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_6

    .line 103
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 105
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 107
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isTouchOrFaketouchDevice()Z

    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 113
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 116
    move-result-object p2

    .line 117
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 119
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 122
    move-result-object v4

    .line 123
    iput-object p2, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 125
    iput-object p0, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 127
    iput p1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 129
    iput p3, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 131
    iget-object p0, v3, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 133
    const/4 p1, 0x2

    .line 134
    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    goto :goto_5

    .line 142
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_4

    .line 148
    const-string/jumbo p2, "onPerformGestureResult"

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v3, ", false"

    .line 161
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    goto :goto_3

    .line 172
    :catch_1
    move-exception p1

    .line 173
    goto :goto_4

    .line 174
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 176
    const/4 p3, 0x0

    .line 177
    invoke-interface {p2, p1, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    goto :goto_5

    .line 181
    :goto_4
    :try_start_5
    const-string p2, "AccessibilityServiceConnection"

    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v3, "Error sending motion event injection failure to "

    .line 190
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 195
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p0

    .line 202
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 205
    :goto_5
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    goto :goto_7

    .line 209
    :catchall_1
    move-exception p0

    .line 210
    goto :goto_8

    .line 211
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    throw p0

    .line 215
    :cond_5
    :goto_7
    monitor-exit v0

    .line 216
    return-void

    .line 217
    :goto_8
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 218
    throw p0
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 3
    return-object p0
.end method

.method public getSoftKeyboardShowMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "getSoftKeyboardShowMode"

    .line 10
    const-string v1, ""

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v0

    .line 27
    if-eqz p0, :cond_1

    .line 29
    :try_start_0
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    throw p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    return p0
.end method

.method public hasRightsToCurrentUserLocked()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 8
    const/16 v2, 0x3e8

    .line 10
    if-eq v0, v2, :cond_4

    .line 12
    const/16 v2, 0x7d0

    .line 14
    if-ne v0, v2, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 19
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 29
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 31
    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 33
    if-ne v0, v2, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 38
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 40
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 61
    :goto_0
    return v1

    .line 62
    :cond_3
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_4
    :goto_1
    return v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "isAccessibilityButtonAvailable"

    .line 10
    const-string v1, ""

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 25
    monitor-exit v0

    .line 26
    return v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 41
    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked()Z

    .line 46
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    if-eqz p0, :cond_2

    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    monitor-exit v0

    .line 57
    return v2

    .line 58
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public final isAccessibilityButtonAvailableLocked()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 9
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 11
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 13
    if-nez p0, :cond_1

    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public isCapturingFingerprintGestures()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 13
    move-result v0

    .line 14
    and-int/lit8 v0, v0, 0x40

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public onFingerprintGesture(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_2

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const-string/jumbo v0, "onFingerprintGesture"

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 34
    invoke-interface {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :catch_0
    :cond_2
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_2

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcClientTracingEnabled()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const-string/jumbo v0, "onFingerprintCapturingGesturesChanged"

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 34
    invoke-interface {p0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :catch_0
    :cond_2
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 7
    monitor-exit p1

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 9
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->addWindowTokensForAllDisplays()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq v1, p2, :cond_2

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :try_start_2
    const-string p1, "AccessibilityServiceConnection"

    .line 38
    const-string p2, "Failed registering death link"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 54
    if-nez p1, :cond_3

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :cond_3
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_4

    .line 66
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 73
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 75
    check-cast p2, Ljava/util/HashMap;

    .line 77
    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 82
    check-cast p2, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 84
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 89
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 91
    invoke-virtual {p1, v2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V

    .line 94
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 96
    new-instance p2, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda1;

    .line 98
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 110
    if-eqz p1, :cond_5

    .line 112
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 114
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 119
    :cond_5
    monitor-exit v0

    .line 120
    return-void

    .line 121
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 4
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 18
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const/4 v1, -0x1

    .line 23
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 25
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(IILjava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final resetLocked()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resetLocked()V

    .line 4
    invoke-static {}, Landroid/view/accessibility/Flags;->brailleDisplayHid()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mBrailleDisplayConnection:Lcom/android/server/accessibility/BrailleDisplayConnection;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    .line 17
    :cond_0
    return-void
.end method

.method public setFocusAppearance(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 27
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :cond_2
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 37
    if-ne v2, p1, :cond_3

    .line 39
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 41
    if-ne v2, p2, :cond_3

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    iput p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 51
    iput p2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 55
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 57
    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onClientChangeLocked(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0

    .line 71
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "switchToInputMethod"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "imeId="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    if-nez v1, :cond_1

    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 46
    move-result v0

    .line 47
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    move-result-wide v3

    .line 55
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 60
    invoke-virtual {v6, p1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)I

    .line 63
    move-result p0

    .line 64
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    if-eqz p0, :cond_2

    .line 67
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return p0

    .line 71
    :cond_2
    :try_start_3
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInputMethodEnabled(ILjava/lang/String;Z)Z

    .line 74
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    if-eqz p0, :cond_3

    .line 77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    const/4 p0, 0x0

    .line 81
    return p0

    .line 82
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    return v2

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 90
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    throw p0

    .line 95
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    throw p0
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "setSoftKeyboardShowMode"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "showMode="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_1

    .line 38
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 50
    if-nez v1, :cond_2

    .line 52
    monitor-exit v0

    .line 53
    return v2

    .line 54
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 57
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 60
    invoke-virtual {v1, p1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 63
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    monitor-exit v0

    .line 68
    return p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final setTestBrailleDisplayData(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTestBrailleDisplayData_enforcePermission()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mTestBrailleDisplays:Ljava/util/List;

    .line 6
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->svcConnTracingEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v0, "switchToInputMethod"

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "imeId="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcConn(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

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
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 46
    move-result p0

    .line 47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 50
    move-result-wide v0

    .line 51
    :try_start_1
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->switchToInputMethod(ILjava/lang/String;)Z

    .line 58
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    return p0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0

    .line 68
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    throw p0
.end method

.method public final unbindLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 25
    if-nez v0, :cond_1

    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 31
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 33
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 35
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 37
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->resetAllIfNeeded(I)V

    .line 42
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 44
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 46
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    const/4 v3, -0x1

    .line 51
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 53
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(IILjava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 59
    return-void
.end method

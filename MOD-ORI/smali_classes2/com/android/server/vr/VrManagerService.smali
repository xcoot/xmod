.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static final sBinderChecker:Lcom/android/server/vr/VrManagerService$3;


# instance fields
.field public mBootsToVr:Z

.field public mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field public mContext:Landroid/content/Context;

.field public mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field public mCurrentVrModeComponent:Landroid/content/ComponentName;

.field public mCurrentVrModeUser:I

.field public mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field public mDefaultVrService:Landroid/content/ComponentName;

.field public final mEventCallback:Lcom/android/server/vr/VrManagerService$1;

.field public final mHandler:Lcom/android/server/vr/VrManagerService$2;

.field public final mLock:Ljava/lang/Object;

.field public mLogLimitHit:Z

.field public final mLoggingDeque:Ljava/util/ArrayDeque;

.field public final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field public final mOverlayToken:Landroid/os/IBinder;

.field public mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field public mPersistentVrModeEnabled:Z

.field public final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

.field public mRunning2dInVr:Z

.field public mStandby:Z

.field public mSystemSleepFlags:I

.field public mUseStandbyToExitVrMode:Z

.field public mUserUnlocked:Z

.field public mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field public mVrAppProcessId:I

.field public final mVrManager:Lcom/android/server/vr/VrManagerService$4;

.field public mVrModeAllowed:Z

.field public mVrModeEnabled:Z

.field public final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;


# direct methods
.method public static -$$Nest$menforceCallerPermissionAnyOf(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Caller does not hold at least one of the permissions: "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static -$$Nest$mrevokeCoarseLocationPermissionIfNeeded(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/UserHandle;

    .line 8
    .line 9
    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13
    .line 14
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance v0, Landroid/os/UserHandle;

    .line 30
    .line 31
    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v2, v0}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    const-string p0, "Could not revoke coarse location permission, package "

    .line 39
    .line 40
    const-string p2, " was removed."

    .line 41
    .line 42
    const-string v0, "VrManagerService"

    .line 43
    .line 44
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public static -$$Nest$mrevokeNotificationListenerAccess(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/NotificationManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/NotificationManager;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/ComponentName;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p0, v1, p2, v2}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance p1, Landroid/os/Binder;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 17
    .line 18
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 24
    .line 25
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    const/16 v0, 0x40

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    new-instance p1, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 47
    .line 48
    const/4 p1, 0x5

    .line 49
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 50
    .line 51
    new-instance p1, Lcom/android/server/vr/VrManagerService$1;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    .line 57
    .line 58
    new-instance p1, Lcom/android/server/vr/VrManagerService$2;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 64
    .line 65
    new-instance p1, Lcom/android/server/vr/VrManagerService$4;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    .line 71
    .line 72
    return-void
.end method

.method private static native initializeNative()V
.end method

.method private static native setVrModeNative(Z)V
.end method


# virtual methods
.method public final callFocusedActivityChangedLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 8
    .line 9
    new-instance v3, Lcom/android/server/vr/VrManagerService$6;

    .line 10
    .line 11
    invoke-direct {v3, v2, v0, v1}, Lcom/android/server/vr/VrManagerService$6;-><init>(ILandroid/content/ComponentName;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v4

    .line 17
    :try_start_0
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/vr/VrManagerService$6;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    :try_start_1
    check-cast v5, Landroid/service/vr/IVrListener;

    .line 30
    .line 31
    invoke-interface {v5, v0, v1, v2}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    const-string v0, "ManagedApplicationService"

    .line 37
    .line 38
    const-string v1, "Received exception from user service: "

    .line 39
    .line 40
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_1
    return-void

    .line 44
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw p0
.end method

.method public final consumeAndApplyPendingStateLocked(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    .line 8
    .line 9
    iget-object v7, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    .line 14
    .line 15
    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v5, -0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v0, p0

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final createAndConnectService(ILandroid/content/ComponentName;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v8, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v7, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/vr/VrManagerService$3;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    .line 15
    .line 16
    const v5, 0x1041025

    .line 17
    .line 18
    .line 19
    const-string v6, "android.settings.VR_LISTENER_SETTINGS"

    .line 20
    .line 21
    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 22
    .line 23
    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move-object v3, p2

    .line 27
    move v4, p1

    .line 28
    invoke-direct/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILandroid/os/Handler;Lcom/android/server/vr/VrManagerService$1;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 34
    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Connecting "

    .line 39
    .line 40
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " for user "

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "VrManagerService"

    .line 59
    .line 60
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x40

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

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
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo p1, "notification"

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v4, "enabled_vr_listeners"

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v6, Lcom/android/server/vr/SettingsObserver;

    .line 57
    .line 58
    invoke-direct {v6, v3, v1, v4}, Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/android/server/vr/EnabledComponentsObserver;

    .line 62
    .line 63
    invoke-direct {v1, v3, v5, v2}, Lcom/android/server/vr/EnabledComponentsObserver;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/android/server/vr/EnabledComponentsObserver$1;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver$1;-><init>(Lcom/android/server/vr/EnabledComponentsObserver;)V

    .line 69
    .line 70
    .line 71
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v6, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    .line 78
    .line 79
    check-cast v0, Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 87
    .line 88
    .line 89
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/content/ComponentName;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const-string p1, "VrManagerService"

    .line 113
    .line 114
    const-string v0, "No default vr listener service found."

    .line 115
    .line 116
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v0, "display"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 130
    .line 131
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay;

    .line 132
    .line 133
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 140
    .line 141
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    .line 150
    .line 151
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/vr/VrManagerService$4;)V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 160
    .line 161
    iget-object v1, v0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 162
    .line 163
    if-eqz v1, :cond_1

    .line 164
    .line 165
    :try_start_1
    iget-object v2, v0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Lcom/android/server/vr/Vr2dDisplay$1;

    .line 166
    .line 167
    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v1

    .line 172
    const-string v2, "Vr2dDisplay"

    .line 173
    .line 174
    const-string v3, "Could not register VR State listener."

    .line 175
    .line 176
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    :cond_1
    :goto_1
    iput-boolean p1, v0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 180
    .line 181
    if-eqz p1, :cond_2

    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 184
    .line 185
    .line 186
    :cond_2
    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 187
    .line 188
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Lcom/android/server/vr/VrManagerService$5;

    .line 197
    .line 198
    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catchall_0
    move-exception p0

    .line 206
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    throw p0

    .line 208
    :cond_3
    :goto_2
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 1

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string/jumbo v0, "ro.boot.vr"

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string/jumbo v0, "persist.vr.use_standby_to_exit_vr_mode"

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v1, v2

    .line 37
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 38
    .line 39
    const-class v0, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "vrmanager"

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Lcom/android/server/vr/VrManagerService$4;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/service/vr/IVrManager$Stub;->asBinder()Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/server/vr/VrManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vr/VrManagerService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setPersistentModeAndNotifyListenersLocked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const-string v0, "enabled"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "disabled"

    .line 12
    .line 13
    :goto_0
    const-string v1, "Persistent VR mode "

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "VrManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 30
    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x2

    .line 36
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setPersistentVrModeEnabled(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 v5, -0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final setSystemState(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    or-int/2addr p1, v1

    .line 9
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    not-int p1, p1

    .line 15
    and-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 17
    .line 18
    :goto_0
    iget p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 19
    .line 20
    if-eq v1, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 23
    .line 24
    .line 25
    :cond_1
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v8, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v8

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v1

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    :goto_0
    move v3, v2

    .line 21
    :goto_1
    if-nez p1, :cond_2

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    move v4, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v4, v1

    .line 30
    :goto_2
    if-eqz v4, :cond_3

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 33
    .line 34
    move-object v5, v1

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v5, p2

    .line 37
    .line 38
    :goto_3
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    .line 39
    .line 40
    move-object v9, v1

    .line 41
    move v10, v3

    .line 42
    move v11, v4

    .line 43
    move-object v12, v5

    .line 44
    move/from16 v13, p3

    .line 45
    .line 46
    move/from16 v14, p4

    .line 47
    .line 48
    move-object/from16 v15, p5

    .line 49
    .line 50
    invoke-direct/range {v9 .. v15}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 54
    .line 55
    if-nez v6, :cond_4

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 58
    .line 59
    monitor-exit v8

    .line 60
    return-void

    .line 61
    :cond_4
    if-nez v3, :cond_6

    .line 62
    .line 63
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 64
    .line 65
    if-eqz v6, :cond_6

    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 68
    .line 69
    if-nez v3, :cond_5

    .line 70
    .line 71
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 72
    .line 73
    const-wide/16 v4, 0x12c

    .line 74
    .line 75
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 79
    .line 80
    monitor-exit v8

    .line 81
    return-void

    .line 82
    :cond_6
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 89
    .line 90
    move-object/from16 v1, p0

    .line 91
    .line 92
    move v2, v3

    .line 93
    move v3, v4

    .line 94
    move-object v4, v5

    .line 95
    move/from16 v5, p3

    .line 96
    .line 97
    move/from16 v6, p4

    .line 98
    .line 99
    move-object/from16 v7, p5

    .line 100
    .line 101
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 102
    .line 103
    .line 104
    monitor-exit v8

    .line 105
    return-void

    .line 106
    :goto_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw v0
.end method

.method public final updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 2
    .line 3
    const-string v1, "VrManagerService"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 8
    .line 9
    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v2, v0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 16
    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Disconnecting compositor service: "

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 46
    .line 47
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Connecting compositor service: "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    :goto_1
    move v8, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v0, 0x3

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 87
    .line 88
    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/vr/VrManagerService$1;

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    move-object v3, p2

    .line 92
    move v4, p1

    .line 93
    invoke-direct/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/vr/VrManagerService$3;ILandroid/os/Handler;Lcom/android/server/vr/VrManagerService$1;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method public final updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    const-string v5, "VR mode component changed to "

    .line 12
    .line 13
    const-string v6, "Leaving VR mode, disconnecting "

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    :try_start_0
    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 20
    .line 21
    invoke-virtual {v9, v3, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(ILandroid/content/ComponentName;)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const/4 v11, 0x0

    .line 26
    if-nez v9, :cond_0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 v9, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v9, v11

    .line 33
    :goto_0
    iget-boolean v12, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    if-nez v12, :cond_1

    .line 36
    .line 37
    if-nez v9, :cond_1

    .line 38
    .line 39
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_1
    iget-object v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 44
    .line 45
    if-eqz v12, :cond_2

    .line 46
    .line 47
    iget-object v12, v12, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_a

    .line 56
    .line 57
    :cond_2
    const/4 v12, 0x0

    .line 58
    :goto_1
    iget v14, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 59
    .line 60
    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    const-string v10, "VrManagerService"

    .line 63
    .line 64
    if-eq v15, v9, :cond_4

    .line 65
    .line 66
    :try_start_2
    iput-boolean v9, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 67
    .line 68
    if-eqz v9, :cond_3

    .line 69
    .line 70
    const-string v15, "enabled"

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const-string v15, "disabled"

    .line 74
    .line 75
    :goto_2
    const-string v13, "VR mode "

    .line 76
    .line 77
    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-boolean v13, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 85
    .line 86
    invoke-static {v13}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v13, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Lcom/android/server/vr/VrManagerService$2;

    .line 90
    .line 91
    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 92
    .line 93
    invoke-virtual {v13, v11, v15, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    invoke-virtual {v13, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    const/16 v13, -0x2710

    .line 101
    .line 102
    const-string v15, " for user "

    .line 103
    .line 104
    if-nez v9, :cond_6

    .line 105
    .line 106
    :try_start_3
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 116
    .line 117
    iget-object v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 118
    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 126
    .line 127
    iget v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 128
    .line 129
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v13, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 149
    .line 150
    move v2, v11

    .line 151
    :goto_3
    const/4 v5, 0x0

    .line 152
    goto :goto_6

    .line 153
    :cond_5
    :goto_4
    const/4 v2, 0x1

    .line 154
    goto :goto_3

    .line 155
    :cond_6
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 156
    .line 157
    if-eqz v6, :cond_8

    .line 158
    .line 159
    iget-object v9, v6, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 160
    .line 161
    invoke-static {v9, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_7

    .line 166
    .line 167
    iget v9, v6, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 168
    .line 169
    if-ne v9, v3, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 173
    .line 174
    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v5, ", disconnecting "

    .line 184
    .line 185
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 189
    .line 190
    iget-object v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 191
    .line 192
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 199
    .line 200
    iget v5, v5, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 201
    .line 202
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v10, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    invoke-virtual {v0, v13, v5}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(ILandroid/content/ComponentName;)V

    .line 217
    .line 218
    .line 219
    :goto_5
    move v2, v11

    .line 220
    const/4 v11, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_8
    const/4 v5, 0x0

    .line 223
    invoke-virtual {v0, v3, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(ILandroid/content/ComponentName;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :goto_6
    if-nez v4, :cond_9

    .line 228
    .line 229
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 230
    .line 231
    if-eqz v6, :cond_a

    .line 232
    .line 233
    :cond_9
    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 234
    .line 235
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_b

    .line 240
    .line 241
    :cond_a
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 242
    .line 243
    if-eq v6, v1, :cond_c

    .line 244
    .line 245
    :cond_b
    const/4 v11, 0x1

    .line 246
    :cond_c
    iput-object v4, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 247
    .line 248
    iput-boolean v1, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 249
    .line 250
    move/from16 v1, p5

    .line 251
    .line 252
    iput v1, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 253
    .line 254
    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 255
    .line 256
    if-eq v1, v3, :cond_d

    .line 257
    .line 258
    iput v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 259
    .line 260
    const/4 v10, 0x1

    .line 261
    goto :goto_7

    .line 262
    :cond_d
    move v10, v11

    .line 263
    :goto_7
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 264
    .line 265
    if-eqz v1, :cond_e

    .line 266
    .line 267
    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto :goto_8

    .line 274
    :cond_e
    move-object v1, v5

    .line 275
    :goto_8
    iget v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 276
    .line 277
    invoke-virtual {v0, v3, v14, v1, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(IILjava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 281
    .line 282
    if-eqz v1, :cond_f

    .line 283
    .line 284
    if-eqz v10, :cond_f

    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    .line 287
    .line 288
    .line 289
    :cond_f
    if-nez v2, :cond_11

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 292
    .line 293
    if-nez v1, :cond_10

    .line 294
    .line 295
    move-object/from16 v17, v5

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_10
    iget-object v13, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 299
    .line 300
    move-object/from16 v17, v13

    .line 301
    .line 302
    :goto_9
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    .line 303
    .line 304
    iget-boolean v15, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 305
    .line 306
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 307
    .line 308
    iget v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 309
    .line 310
    iget v4, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 311
    .line 312
    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 313
    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    move-object v14, v1

    .line 317
    move/from16 v16, v2

    .line 318
    .line 319
    move/from16 v18, v3

    .line 320
    .line 321
    move/from16 v19, v4

    .line 322
    .line 323
    move-object/from16 v20, v5

    .line 324
    .line 325
    invoke-direct/range {v14 .. v21}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    .line 330
    .line 331
    :cond_11
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :goto_a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    .line 337
    .line 338
    throw v0
.end method

.method public final updateDependentAppOpsLocked(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p3, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const-class v2, Landroid/app/AppOpsManager;

    .line 17
    .line 18
    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    check-cast p4, Landroid/app/AppOpsManager;

    .line 23
    .line 24
    if-eq p2, p1, :cond_1

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 27
    .line 28
    const/16 v3, 0x18

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v2, p4

    .line 33
    move v7, p2

    .line 34
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    .line 39
    new-instance p2, Landroid/os/PackageTagsList$Builder;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {p2, v2}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_0
    move-object v6, p2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p2, 0x0

    .line 56
    goto :goto_0

    .line 57
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 58
    .line 59
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 60
    .line 61
    const/16 v3, 0x18

    .line 62
    .line 63
    move-object v2, p4

    .line 64
    move v7, p1

    .line 65
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final updateVrModeAllowedLocked()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v4, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v1

    .line 25
    :goto_1
    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 26
    .line 27
    const/4 v6, 0x7

    .line 28
    if-eq v5, v6, :cond_2

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    if-nez v4, :cond_3

    .line 37
    .line 38
    move v3, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move v3, v1

    .line 41
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 42
    .line 43
    if-eq v4, v3, :cond_7

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 46
    .line 47
    if-eqz v3, :cond_5

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 59
    .line 60
    if-nez v0, :cond_7

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, -0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    move-object v1, p0

    .line 69
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 74
    .line 75
    .line 76
    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 77
    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    .line 85
    .line 86
    iget-boolean v9, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 87
    .line 88
    iget-object v10, v0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 89
    .line 90
    iget v12, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 91
    .line 92
    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 93
    .line 94
    iget v11, v0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 95
    .line 96
    move-object v7, v1

    .line 97
    invoke-direct/range {v7 .. v13}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    const/4 v1, 0x0

    .line 102
    :goto_3
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v7, -0x1

    .line 109
    const/4 v8, 0x0

    .line 110
    move-object v2, p0

    .line 111
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_4
    return-void
.end method

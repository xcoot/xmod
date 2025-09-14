.class public final Lcom/android/server/wm/ActivityTaskManagerServiceExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

.field public mAppLockIsInMultiWindowMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field public mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

.field public mFlexPanelController:Lcom/android/server/wm/FlexPanelController;

.field public final mForceOptOutEdgeToEdge:Ljava/util/List;

.field public final mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mKeepAliveActivities:Ljava/util/WeakHashMap;

.field public final mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

.field public final mStartedUserIds:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 16
    .line 17
    new-instance v2, Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    .line 36
    .line 37
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 38
    .line 39
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v1, v0

    .line 44
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 45
    .line 46
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    .line 51
    .line 52
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 53
    .line 54
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v1, v0

    .line 59
    :goto_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mNaviAppLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 60
    .line 61
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;

    .line 66
    .line 67
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$RefreshRateBlockList;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 73
    .line 74
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 79
    .line 80
    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FORCE_OPT_OUT_EDGE_TO_EDGE_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    .line 96
    new-instance p1, Lcom/android/server/wm/CoreStateController;

    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/android/server/wm/CoreStateController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 102
    .line 103
    return-void
.end method

.method public static isSystemUid(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method


# virtual methods
.method public final checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V
    .locals 9

    .line 1
    const-string v0, "ActivityTaskManagerServiceExt"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    :try_start_0
    new-array v2, v2, [Z

    .line 7
    .line 8
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, p3}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput-boolean v3, v2, v4

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 21
    .line 22
    invoke-virtual {v3, p3}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    aput-boolean v3, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    aget-boolean v3, v2, v4

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    aget-boolean v2, v2, v5

    .line 37
    .line 38
    const-string v4, "AppLock checkAppLockState locked:"

    .line 39
    .line 40
    const-string v7, " verifying:"

    .line 41
    .line 42
    const-string v8, " pkgName = "

    .line 43
    .line 44
    invoke-static {v4, v3, v7, v2, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, " isInMultiWindowMode:"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mAppLockIsInMultiWindowMode:Z

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, " showWhenLocked:"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0, p3, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;

    .line 84
    .line 85
    move-object v2, v0

    .line 86
    move-object v3, p0

    .line 87
    move-object v4, p3

    .line 88
    move v5, v6

    .line 89
    move v6, p2

    .line 90
    move-object v7, p1

    .line 91
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZLandroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    if-eqz p4, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda3;->run()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const-string p1, "Exception while checking App Lock locked / verifying state : "

    .line 108
    .line 109
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final getAppLockLaunchingState(Landroid/os/IBinder;)[Z
    .locals 7

    .line 1
    const-string v0, "AppLockLaunchingFromActivity: No activity record matching token="

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Z

    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_2

    .line 16
    .line 17
    iget-boolean p1, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    aput-boolean v0, v1, v5

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iput-boolean v0, v4, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    .line 29
    .line 30
    aput-boolean v5, v1, v5

    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 35
    .line 36
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v6}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v6, 0x2

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    aput-boolean v5, v1, v6

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    aput-boolean v0, v1, v6

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    aput-boolean p1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    return-object v1

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :goto_2
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    throw p1
.end method

.method public final getSmRccAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/SmRccPolicy;->getSmRccAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final getStartedUserIdsLocked()Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final installSystemProvidersLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v3, "CoreStateController"

    .line 17
    .line 18
    const-string v4, "initializeLocked()"

    .line 19
    .line 20
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    new-instance v3, Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v4, v0, Lcom/android/server/wm/CoreStateController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v5, v4, v0, v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;-><init>(Landroid/content/Context;Lcom/android/server/wm/CoreStateController;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v0, Lcom/android/server/wm/CoreStateController;->mObserverController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 44
    .line 45
    iget-object v3, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v2, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 51
    .line 52
    iget-object v3, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v6, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    .line 71
    .line 72
    iget-object v7, v2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v6, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, v5, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    .line 95
    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v5, v2, v1, v3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    .line 108
    .line 109
    iget-object p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    iput-boolean p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 118
    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string/jumbo v0, "updateDeviceSupportsMultiWindow: support="

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 128
    .line 129
    const-string v4, "MultiWindowEnableController"

    .line 130
    .line 131
    invoke-static {v4, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 132
    .line 133
    .line 134
    iget-boolean p0, v3, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 135
    .line 136
    if-eqz p0, :cond_3

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_2

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    move v6, v1

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    :goto_1
    move v6, v2

    .line 155
    :goto_2
    const-string v5, "Initialize"

    .line 156
    .line 157
    const/4 v7, 0x0

    .line 158
    const/4 v8, 0x0

    .line 159
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(ILjava/lang/String;ZZZ)V

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void
.end method

.method public final isSmRccOpen(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->isSmRccOpen(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final keepAliveActivityLocked(Lcom/android/server/wm/Task;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v3, 0x2

    .line 18
    if-ge p2, v3, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "Max count exceeded! Cannot set keepAlive for taskId="

    .line 36
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 41
    .line 42
    const-string p2, "ActivityTaskManagerServiceExt"

    .line 43
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mKeepAliveActivities:Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHasActivitiesKeptAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSystemReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/util/SafetySystemService$LazyHolder;->sSingleton:Lcom/samsung/android/server/util/SafetySystemService$Manager;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iput-object v0, v1, Lcom/samsung/android/server/util/SafetySystemService$Manager;->mSystemContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v1

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatController;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedController;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityEmbeddedController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v1

    .line 53
    throw p0
.end method

.method public final removeTaskByCmpName()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const-string p0, "ActivityTaskManagerServiceExt"

    .line 12
    .line 13
    const-string v1, "Pid "

    .line 14
    .line 15
    const-string v2, " cannot clear task!"

    .line 16
    .line 17
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v1, "ActivityTaskManagerServiceExt"

    .line 22
    .line 23
    const-string/jumbo v2, "removeTaskByCmpName:com.android.settings/.password.ChooseLockGeneric$InternalActivity user:0 callerPid:"

    .line 24
    .line 25
    .line 26
    const-string v3, " reason:Managed profile unavailable"

    .line 27
    .line 28
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 34
    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 36
    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    :goto_0
    if-ltz v1, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :try_start_2
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;

    .line 71
    .line 72
    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final removeTaskWithFlagsLocked(II)Z
    .locals 13

    .line 1
    and-int/lit8 v0, p2, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    and-int/lit8 v0, p2, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    and-int/lit8 v0, p2, 0x10

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    move v9, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v9, v1

    .line 21
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    and-int/lit16 v0, p2, 0x80

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move v10, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v10, v1

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 33
    .line 34
    const-string/jumbo v7, "remove-task-with-flags"

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/4 v8, 0x1

    .line 46
    move v4, p1

    .line 47
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    and-int/lit8 p2, p2, 0x4

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    and-int/lit8 p2, p2, 0x4

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 69
    .line 70
    .line 71
    :cond_4
    throw p1

    .line 72
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sub-int/2addr v0, v2

    .line 83
    :goto_3
    if-ltz v0, :cond_b

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    and-int/lit8 v3, p2, 0x20

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/server/wm/Task;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_a

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    iget v4, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 113
    .line 114
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 115
    .line 116
    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 117
    .line 118
    if-eq v4, v5, :cond_8

    .line 119
    .line 120
    new-instance v4, Ljava/util/HashSet;

    .line 121
    .line 122
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 123
    .line 124
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, [Ljava/lang/Integer;

    .line 146
    .line 147
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 152
    .line 153
    .line 154
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 155
    .line 156
    iget v5, v5, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 157
    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 166
    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_8

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 179
    .line 180
    iget v6, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 181
    .line 182
    and-int/lit8 v3, p2, 0x10

    .line 183
    .line 184
    if-nez v3, :cond_9

    .line 185
    .line 186
    move v11, v2

    .line 187
    goto :goto_4

    .line 188
    :cond_9
    move v11, v1

    .line 189
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    const-string/jumbo v9, "remove-task-by-id"

    .line 198
    .line 199
    .line 200
    const/4 v12, 0x0

    .line 201
    const/4 v10, 0x1

    .line 202
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    .line 203
    .line 204
    .line 205
    :cond_a
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    return v2
.end method

.method public final resetSmRccOpen(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SmRccPolicy;->resetSmRccOpen(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setAppLockedVerifying(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->isSystemUid(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "Exception - isCallerSetSelf:"

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    .line 28
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :try_start_1
    const-string p0, "ActivityTaskManagerServiceExt"

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :catchall_0
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 57
    .line 58
    const-string p1, " is not system uid or the packageNmae is not itself\'s"

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 71
    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AppLockPolicy;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final startAppLockActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 13
    .line 14
    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 15
    .line 16
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    iget-object v9, v4, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v10, v4, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 21
    .line 22
    iget v7, v4, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 23
    .line 24
    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3, v8}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedPackage(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v15

    .line 35
    :goto_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 38
    .line 39
    if-eqz v11, :cond_2

    .line 40
    .line 41
    invoke-virtual {v11, v8}, Lcom/android/internal/app/AppLockPolicy;->isAppLockedVerifying(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v8, v15

    .line 47
    :goto_1
    const/4 v14, 0x1

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 51
    .line 52
    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v11, v12}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_3

    .line 59
    .line 60
    move v11, v15

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v11, v14

    .line 63
    :goto_2
    if-eqz v3, :cond_c

    .line 64
    .line 65
    if-nez v8, :cond_c

    .line 66
    .line 67
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v3, v14, :cond_c

    .line 76
    .line 77
    :cond_4
    if-eqz v11, :cond_c

    .line 78
    .line 79
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_c

    .line 86
    .line 87
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-direct {v3, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 90
    .line 91
    .line 92
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    invoke-direct {v8, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 102
    .line 103
    iget-object v12, v12, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 104
    .line 105
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    invoke-virtual {v12}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v12, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 119
    .line 120
    iget-object v12, v12, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 121
    .line 122
    new-instance v13, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda1;

    .line 123
    .line 124
    invoke-direct {v13, v1, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_c

    .line 135
    .line 136
    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 137
    .line 138
    invoke-virtual {v12, v5}, Lcom/android/internal/app/AppLockPolicy;->isManagedProfileUserId(I)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_c

    .line 143
    .line 144
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_6

    .line 149
    .line 150
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    if-nez v12, :cond_c

    .line 155
    .line 156
    :cond_6
    if-eqz v11, :cond_7

    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    const-string v13, "ActivityTaskManagerServiceExt"

    .line 164
    .line 165
    if-nez v8, :cond_8

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    :cond_8
    move-object v4, v13

    .line 174
    move v5, v15

    .line 175
    goto/16 :goto_5

    .line 176
    .line 177
    :cond_9
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    new-instance v3, Landroid/content/Intent;

    .line 183
    .line 184
    iget-object v8, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    .line 185
    .line 186
    if-eqz v8, :cond_a

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/android/internal/app/AppLockPolicy;->getAppLockedCheckAction()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    goto :goto_3

    .line 193
    :cond_a
    const/4 v8, 0x0

    .line 194
    :goto_3
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const/high16 v8, 0x20000

    .line 198
    .line 199
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 203
    .line 204
    const-string v11, "android.intent.extra.PACKAGE_NAME"

    .line 205
    .line 206
    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    const-string v8, "LAUNCH_FROM_RESUME"

    .line 210
    .line 211
    invoke-virtual {v3, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    const-string v8, "LOCKED_PACKAGE_NAME"

    .line 215
    .line 216
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    const-string v6, "LOCKED_PACKAGE_USERID"

    .line 222
    .line 223
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    const-string v6, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 227
    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    const-string v6, "com.samsung.android.applock"

    .line 236
    .line 237
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 241
    .line 242
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_b

    .line 257
    .line 258
    move v5, v15

    .line 259
    :cond_b
    const/4 v6, 0x0

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 261
    .line 262
    .line 263
    move-result v17

    .line 264
    move-object v12, v3

    .line 265
    move-object v8, v13

    .line 266
    move-object v13, v2

    .line 267
    move v2, v14

    .line 268
    move v14, v5

    .line 269
    move v5, v15

    .line 270
    move v15, v6

    .line 271
    move/from16 v16, v7

    .line 272
    .line 273
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 278
    .line 279
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 291
    .line 292
    invoke-virtual {v6, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v2, v5}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 296
    .line 297
    .line 298
    :try_start_0
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 299
    .line 300
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 317
    .line 318
    .line 319
    move-result v16

    .line 320
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 321
    .line 322
    .line 323
    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    const/16 v17, 0x0

    .line 325
    .line 326
    const/16 v19, 0x0

    .line 327
    .line 328
    const/16 v20, 0x1

    .line 329
    .line 330
    const/4 v13, 0x0

    .line 331
    const/4 v14, 0x0

    .line 332
    const/4 v15, 0x0

    .line 333
    move-object v4, v8

    .line 334
    move-object v8, v2

    .line 335
    move-object v11, v3

    .line 336
    :try_start_1
    invoke-virtual/range {v7 .. v20}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :catch_0
    move-exception v0

    .line 341
    goto :goto_4

    .line 342
    :catch_1
    move-exception v0

    .line 343
    move-object v4, v8

    .line 344
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v3, "Exception while launching AppLock Confirm Activity for"

    .line 347
    .line 348
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v1, ", Exception is : "

    .line 355
    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :goto_5
    const-string v2, "Start AppLock Service"

    .line 371
    .line 372
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v0, v2, v1, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->checkAppLockState(Landroid/content/Intent;ZLjava/lang/String;Z)V

    .line 384
    .line 385
    .line 386
    :cond_c
    :goto_6
    return-void
.end method

.method public final updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-eqz p2, :cond_2

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mForceOptOutEdgeToEdge:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

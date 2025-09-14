.class public final Lcom/android/server/app/GameServiceProviderInstanceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

.field public final mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

.field public final mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

.field public final mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

.field public final mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

.field public final mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

.field public volatile mIsRunning:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

.field public final mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$3;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceController:Lcom/android/server/app/GameServiceProviderInstanceImpl$6;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionController:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/Object;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mUserHandle:Landroid/os/UserHandle;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 84
    .line 85
    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 86
    .line 87
    iput-object p4, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 88
    .line 89
    iput-object p5, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 90
    .line 91
    iput-object p6, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 92
    .line 93
    iput-object p7, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    .line 95
    iput-object p8, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 96
    .line 97
    iput-object p9, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 98
    .line 99
    iput-object p10, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 100
    .line 101
    iput-object p11, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 102
    .line 103
    iput-object p12, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 104
    .line 105
    return-void
.end method

.method public static destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p1, "Failed to destroy session: "

    .line 10
    .line 11
    const-string v0, "GameServiceProviderInstance"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 12
    .line 13
    const-string v1, "GameServiceProviderInstance"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "No associated game session record. Destroying id: "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 41
    .line 42
    if-ne v3, v2, :cond_1

    .line 43
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionResult;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    new-instance p2, Lcom/android/server/app/GameSessionRecord;

    .line 71
    .line 72
    sget-object v3, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ATTACHED:Lcom/android/server/app/GameSessionRecord$State;

    .line 73
    .line 74
    iget-object v4, v0, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 75
    .line 76
    iget v2, v0, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 77
    .line 78
    move-object v1, p2

    .line 79
    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, "Failed to add task overlay. Destroying id: "

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionDuringAttach(ILandroid/service/games/CreateGameSessionResult;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final createGameSessionLocked(I)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Lcom/android/server/app/GameSessionRecord;

    .line 18
    .line 19
    const-string v0, ") creation. Ignoring."

    .line 20
    .line 21
    const-string v1, "GameServiceProviderInstance"

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    const-string p0, "No existing game session record found for task (id: "

    .line 26
    .line 27
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    .line 32
    .line 33
    iget-object v3, v4, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 34
    .line 35
    if-ne v3, v2, :cond_4

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    move-object v5, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 49
    .line 50
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v5, Landroid/service/games/GameSessionViewHostConfiguration;

    .line 57
    .line 58
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-direct {v5, v2, v6, v3}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    .line 69
    .line 70
    .line 71
    :goto_0
    if-nez v5, :cond_3

    .line 72
    .line 73
    const-string p0, "Failed to create view host configuration for task (id"

    .line 74
    .line 75
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Lcom/android/server/app/GameSessionRecord;

    .line 86
    .line 87
    sget-object v8, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    .line 88
    .line 89
    iget-object v9, v4, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    iget v7, v4, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    move-object v6, v2

    .line 96
    invoke-direct/range {v6 .. v11}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 105
    .line 106
    .line 107
    const-wide/16 v1, 0x2710

    .line 108
    .line 109
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;

    .line 116
    .line 117
    invoke-direct {v1, p0, v4, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 127
    .line 128
    new-instance v7, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;

    .line 129
    .line 130
    move-object v1, v7

    .line 131
    move-object v2, p0

    .line 132
    move v3, p1

    .line 133
    invoke-direct/range {v1 .. v6}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILcom/android/server/app/GameSessionRecord;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v7}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    const-string p0, "Existing game session for task (id: "

    .line 141
    .line 142
    const-string v0, ") is not awaiting game session request. Ignoring."

    .line 143
    .line 144
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2
    .line 3
    const-string v1, "GameServiceProviderInstance"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 8
    .line 9
    iget v3, p1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 10
    .line 11
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerInternal;->removeTrustedTaskOverlay(ILandroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Failed to remove task overlay. This is expected if the task is already destroyed: "

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :try_start_1
    invoke-interface {v0}, Landroid/service/games/IGameSession;->onDestroyed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Failed to destroy session: "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 67
    .line 68
    invoke-interface {p0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    iget v1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "Existing game session found for task (id: "

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 30
    .line 31
    const-string v0, ") creation. Ignoring."

    .line 32
    .line 33
    const-string v1, "GameServiceProviderInstance"

    .line 34
    .line 35
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget v0, p1, Lcom/android/server/app/GameTaskInfo;->mTaskId:I

    .line 40
    .line 41
    iget-object v5, p1, Lcom/android/server/app/GameTaskInfo;->mComponentName:Landroid/content/ComponentName;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/app/GameSessionRecord;

    .line 44
    .line 45
    sget-object v4, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object v2, v1

    .line 50
    move v3, v0

    .line 51
    invoke-direct/range {v2 .. v7}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 64
    .line 65
    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/app/GameTaskInfo;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onForegroundActivitiesChangedLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/app/GameSessionRecord;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    add-int/lit8 p1, p1, 0x1

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    if-lez p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 121
    .line 122
    sget-object v2, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ENDED_PROCESS_DEATH:Lcom/android/server/app/GameSessionRecord$State;

    .line 123
    .line 124
    iget-object v3, v1, Lcom/android/server/app/GameSessionRecord;->mState:Lcom/android/server/app/GameSessionRecord$State;

    .line 125
    .line 126
    if-ne v3, v2, :cond_3

    .line 127
    .line 128
    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    .line 142
    iget v9, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 143
    .line 144
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    iget-object v6, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 149
    .line 150
    new-instance v1, Lcom/android/server/app/GameSessionRecord;

    .line 151
    .line 152
    sget-object v5, Lcom/android/server/app/GameSessionRecord$State;->NO_GAME_SESSION_REQUESTED:Lcom/android/server/app/GameSessionRecord$State;

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    move-object v3, v1

    .line 157
    move v4, v9

    .line 158
    invoke-direct/range {v3 .. v8}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v9}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->createGameSessionLocked(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_4
    return-void
.end method

.method public final onProcessDiedLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPidToPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "GameServiceProviderInstance"

    .line 27
    .line 28
    const-string/jumbo p1, "onProcessDiedLocked(): Missing process count for package"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mPackageNameToProcessCountMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    if-gtz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 73
    .line 74
    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iget-object v2, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 91
    .line 92
    iget v3, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v10, Lcom/android/server/app/GameSessionRecord;

    .line 112
    .line 113
    sget-object v6, Lcom/android/server/app/GameSessionRecord$State;->GAME_SESSION_ENDED_PROCESS_DEATH:Lcom/android/server/app/GameSessionRecord$State;

    .line 114
    .line 115
    iget-object v7, v1, Lcom/android/server/app/GameSessionRecord;->mRootComponentName:Landroid/content/ComponentName;

    .line 116
    .line 117
    iget v5, v1, Lcom/android/server/app/GameSessionRecord;->mTaskId:I

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    const/4 v9, 0x0

    .line 121
    move-object v4, v10

    .line 122
    invoke-direct/range {v4 .. v9}, Lcom/android/server/app/GameSessionRecord;-><init>(ILcom/android/server/app/GameSessionRecord$State;Landroid/content/ComponentName;Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    return-void
.end method

.method public final onTaskFocusChangedLocked(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/app/GameSessionRecord;

    .line 12
    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameTaskInfoProvider:Lcom/android/server/app/GameTaskInfoProvider;

    .line 18
    .line 19
    iget-object v0, p2, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p2, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/app/GameTaskInfo;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p2, p1}, Lcom/android/server/app/GameTaskInfoProvider;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/android/server/app/GameTaskInfoProvider;->generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    if-nez v1, :cond_3

    .line 59
    .line 60
    const-string p0, "GameServiceProviderInstance"

    .line 61
    .line 62
    const-string p2, "No task info for focused task: "

    .line 63
    .line 64
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-boolean p1, v1, Lcom/android/server/app/GameTaskInfo;->mIsGameTask:Z

    .line 69
    .line 70
    if-nez p1, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->gameTaskStartedLocked(Lcom/android/server/app/GameTaskInfo;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_5
    :goto_3
    return-void

    .line 80
    :cond_6
    iget-object p0, v0, Lcom/android/server/app/GameSessionRecord;->mIGameSession:Landroid/service/games/IGameSession;

    .line 81
    .line 82
    if-nez p0, :cond_7

    .line 83
    .line 84
    return-void

    .line 85
    :cond_7
    :try_start_2
    invoke-interface {p0, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :catch_0
    const-string p0, "GameServiceProviderInstance"

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p2, "Failed to notify session of task focus change: "

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_4
    return-void
.end method

.method public final startLocked()V
    .locals 3

    .line 1
    const-string v0, "GameServiceProviderInstance"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$1;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceLifecycleCallbacks:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 33
    .line 34
    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    const-string v2, "Failed to register task stack listener"

    .line 40
    .line 41
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v1

    .line 53
    const-string v2, "Failed to register process observer"

    .line 54
    .line 55
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final stopLocked()V
    .locals 3

    .line 1
    const-string v0, "GameServiceProviderInstance"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mIsRunning:Z

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mProcessObserver:Lcom/android/server/app/GameServiceProviderInstanceImpl$5;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const-string v2, "Failed to unregister process observer"

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskStackListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    .line 28
    .line 29
    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception v1

    .line 34
    const-string v2, "Failed to unregister task stack listener"

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mTaskSystemBarsVisibilityListener:Lcom/android/server/app/GameServiceProviderInstanceImpl$3;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/app/GameSessionRecord;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 78
    .line 79
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessionServiceConnector:Lcom/android/internal/infra/ServiceConnector;

    .line 108
    .line 109
    invoke-interface {p0, v1}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 9

    .line 1
    const-string v0, "No game session found for id: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move-object v8, v2

    .line 17
    check-cast v8, Lcom/android/server/app/GameSessionRecord;

    .line 18
    .line 19
    if-nez v8, :cond_0

    .line 20
    .line 21
    const-string p0, "GameServiceProviderInstance"

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/service/games/GameScreenshotResult;->createInternalErrorResult()Landroid/service/games/GameScreenshotResult;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-void

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
    iget-object v0, v8, Lcom/android/server/app/GameSessionRecord;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    move-object v5, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    move-object v3, v1

    .line 67
    move-object v4, p0

    .line 68
    move v6, p1

    .line 69
    move-object v7, p2

    .line 70
    invoke-direct/range {v3 .. v8}, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Landroid/view/SurfaceControl;ILcom/android/internal/infra/AndroidFuture;Lcom/android/server/app/GameSessionRecord;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

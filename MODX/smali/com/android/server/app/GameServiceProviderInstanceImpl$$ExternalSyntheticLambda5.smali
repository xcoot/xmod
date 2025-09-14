.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/app/GameSessionRecord;

    .line 8
    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/app/GameSessionRecord;

    .line 5
    iget p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    check-cast p1, Landroid/service/games/CreateGameSessionResult;

    .line 9
    check-cast p2, Ljava/lang/Throwable;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    if-nez p2, :cond_1

    .line 16
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->attachGameSessionLocked(ILandroid/service/games/CreateGameSessionResult;)V

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p1}, Landroid/service/games/CreateGameSessionResult;->getGameSession()Landroid/service/games/IGameSession;

    .line 29
    move-result-object p1

    .line 30
    :try_start_1
    iget-object p2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 32
    invoke-interface {p2}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_3

    .line 38
    iget p2, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 40
    if-ne p2, p0, :cond_3

    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-interface {p1, p2}, Landroid/service/games/IGameSession;->onTaskFocusChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    const-string p1, "Failed to set task focused for ID: "

    .line 49
    const-string p2, "GameServiceProviderInstance"

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_0
    const-string p1, "GameServiceProviderInstance"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    const-string v3, "Failed to create GameSession: "

    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {p1, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    iget-object p1, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 79
    monitor-enter p1

    .line 80
    :try_start_3
    iget-object p2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/android/server/app/GameSessionRecord;

    .line 92
    if-nez p0, :cond_2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 98
    :goto_1
    monitor-exit p1

    .line 99
    :cond_3
    :goto_2
    return-void

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    throw p0
.end method

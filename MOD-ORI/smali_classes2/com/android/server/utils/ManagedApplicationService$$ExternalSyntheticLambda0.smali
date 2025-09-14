.class public final synthetic Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 2
    .line 3
    const-string v0, "Attempting to reconnect "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Lcom/android/server/utils/ManagedApplicationService$1;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v2, "ManagedApplicationService"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "..."

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    :goto_0
    return-void

    .line 65
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

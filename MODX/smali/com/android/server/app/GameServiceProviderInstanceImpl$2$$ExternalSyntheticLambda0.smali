.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$2;

    .line 3
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 5
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 10
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/app/GameSessionRecord;

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->destroyGameSessionFromRecordLocked(Lcom/android/server/app/GameSessionRecord;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mGameSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

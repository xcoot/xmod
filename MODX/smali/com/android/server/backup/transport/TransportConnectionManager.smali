.class public final Lcom/android/server/backup/transport/TransportConnectionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFunction:Ljava/util/function/Function;

.field public final mTransportClientsCallerMap:Ljava/util/Map;

.field public mTransportClientsCreated:I

.field public final mTransportClientsLock:Ljava/lang/Object;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/lang/Object;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 19
    new-instance v1, Ljava/util/WeakHashMap;

    .line 21
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    .line 26
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    .line 28
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 32
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Ljava/util/function/Function;

    .line 34
    return-void
.end method


# virtual methods
.method public final disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Disposing of "

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 11
    const/4 v3, 0x2

    .line 12
    if-ge v2, v3, :cond_0

    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    const-string v3, "Can\'t mark as disposed if still bound"

    .line 19
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 22
    iget-object v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 24
    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2

    .line 31
    :try_start_1
    const-string v1, "TransportConnectionManager"

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v3, p2, v0}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    .line 56
    check-cast p0, Ljava/util/WeakHashMap;

    .line 58
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v2

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    throw p0
.end method

.method public final getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Ljava/util/function/Function;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v5, v0

    .line 8
    check-cast v5, Landroid/content/Intent;

    .line 10
    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {v5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    :cond_0
    const-string p2, "Retrieving "

    .line 17
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    new-instance v10, Lcom/android/server/backup/transport/TransportConnection;

    .line 22
    iget v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    .line 24
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    .line 26
    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 28
    iget v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    move-result-object v7

    .line 34
    new-instance v9, Landroid/os/Handler;

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v9, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    move-object v1, v10

    .line 44
    move-object v6, p1

    .line 45
    move-object v8, p3

    .line 46
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/transport/TransportConnection;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    .line 51
    check-cast p1, Ljava/util/WeakHashMap;

    .line 53
    invoke-virtual {p1, v10, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 60
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 62
    const-string p0, "TransportConnectionManager"

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-static {p2, p3, p1}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    const/4 p2, 0x3

    .line 82
    invoke-static {p2, p0, p1}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    monitor-exit v0

    .line 86
    return-object v10

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

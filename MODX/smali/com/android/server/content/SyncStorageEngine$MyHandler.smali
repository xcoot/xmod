.class public final Lcom/android/server/content/SyncStorageEngine$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 8
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 16
    monitor-exit v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    if-ne p1, v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 26
    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 28
    monitor-enter p1

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 34
    monitor-exit p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    throw p0

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

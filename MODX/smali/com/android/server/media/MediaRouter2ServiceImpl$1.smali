.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 8
    iget-object p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-ge v0, p2, :cond_0

    .line 17
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 19
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 27
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 29
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 35
    invoke-static {v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

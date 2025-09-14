.class public final Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 2
    .line 3
    invoke-direct {p0, p3, p4}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final acquired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final released()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/os/TokenWatcher;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

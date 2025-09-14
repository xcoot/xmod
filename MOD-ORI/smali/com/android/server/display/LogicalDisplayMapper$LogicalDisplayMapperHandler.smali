.class public final Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/LogicalDisplayMapper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 15
    .line 16
    .line 17
    monitor-exit p1

    .line 18
    :goto_0
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

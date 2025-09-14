.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->cloneCoverStateLocked()Lcom/samsung/android/cover/CoverState;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverStateToWindowManagerLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverServiceManager:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

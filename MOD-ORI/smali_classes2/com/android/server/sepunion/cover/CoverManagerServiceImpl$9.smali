.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;
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
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {v2, v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

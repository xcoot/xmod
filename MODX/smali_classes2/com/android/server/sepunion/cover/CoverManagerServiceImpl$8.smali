.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;
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
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverHideAnimator:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mAnimationStartCallback:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v3, "playCoverHideAnimation()"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iput-object v0, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    iget-object v0, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    .line 18
    .line 19
    const/16 v1, 0x65

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverStateLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {v2, v1, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.class public final Lcom/android/server/audio/MediaFocusControl$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic val$enteringRingOrCall:Z


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 3
    iput-boolean p2, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$enteringRingOrCall:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$3;->val$enteringRingOrCall:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-wide/16 v0, 0x64

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 15
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 20
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 26
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    .line 28
    invoke-interface {p0, v1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 36
    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

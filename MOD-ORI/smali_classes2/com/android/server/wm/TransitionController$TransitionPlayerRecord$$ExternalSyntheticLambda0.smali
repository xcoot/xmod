.class public final synthetic Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->this$0:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

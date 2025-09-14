.class public final Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNeedReport:Z

.field public final mProc:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController$RemotePlayer;Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TransitionController$RemotePlayer;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->this$0:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$RemotePlayer$DelegateProcess;->mProc:Lcom/android/server/wm/WindowProcessController;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

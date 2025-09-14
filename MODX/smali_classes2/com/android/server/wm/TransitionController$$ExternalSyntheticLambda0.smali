.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransitionController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransitionController;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {p0, v1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TransitionController;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

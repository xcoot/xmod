.class public final Lcom/android/server/wm/ActivityTaskManagerService$6;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic val$enterPipRunnable:Ljava/lang/Runnable;

.field public final synthetic val$transition:Lcom/android/server/wm/Transition;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->val$transition:Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->val$enterPipRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->val$transition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->val$enterPipRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$6;->val$enterPipRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;

    .line 26
    .line 27
    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$6;Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda24;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$2:Lcom/android/server/wm/Transition;

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$4:Landroid/window/RemoteTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Landroid/window/RemoteTransition;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 10

    .line 1
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$1:Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$4:Landroid/window/RemoteTransition;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 6
    .line 7
    iget-object v9, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/Transition;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, v8, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 12
    .line 13
    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isValidTransaction(Landroid/window/WindowContainerTransaction;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, -0x1

    .line 24
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 25
    .line 26
    move-object v0, v8

    .line 27
    move-object v1, v6

    .line 28
    move-object v3, v9

    .line 29
    move v5, p1

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    iget-object p0, v9, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, v8, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, v9, p1, v7, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v9, v6}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

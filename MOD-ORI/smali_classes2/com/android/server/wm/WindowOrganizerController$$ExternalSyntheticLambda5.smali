.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;

.field public final synthetic f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$4:Lcom/android/server/wm/Transition$ReadyCondition;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$2:Landroid/window/WindowContainerTransaction;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 9

    .line 1
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$2:Landroid/window/WindowContainerTransaction;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v8, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    invoke-virtual {v8}, Lcom/android/server/wm/Transition;->start()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v8, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 14
    .line 15
    iput-object v6, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 19
    .line 20
    move-object v0, v7

    .line 21
    move-object v1, v6

    .line 22
    move-object v3, v8

    .line 23
    move v5, p1

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$4:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 30
    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;->f$5:Z

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/WindowOrganizerController;->setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

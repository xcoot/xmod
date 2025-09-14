.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/Transition;

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->scheduleStopForRestartProcess()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->abort()V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

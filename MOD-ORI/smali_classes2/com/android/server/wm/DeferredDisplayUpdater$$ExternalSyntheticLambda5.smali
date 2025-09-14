.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

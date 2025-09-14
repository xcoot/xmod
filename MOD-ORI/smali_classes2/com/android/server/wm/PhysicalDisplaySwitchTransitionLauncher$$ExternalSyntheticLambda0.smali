.class public final synthetic Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 27
    .line 28
    :goto_0
    return-void
.end method

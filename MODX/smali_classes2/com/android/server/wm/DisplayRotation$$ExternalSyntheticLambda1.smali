.class public final synthetic Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotation;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotation;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onContinueRemoteDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotation;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "WindowManager"

    .line 29
    .line 30
    const-string v2, "Trying to continue rotation outside a transition"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :goto_2
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

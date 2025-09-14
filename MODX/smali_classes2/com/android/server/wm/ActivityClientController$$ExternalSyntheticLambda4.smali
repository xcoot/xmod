.class public final synthetic Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityClientController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IRemoteCallback;

.field public final synthetic f$3:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$4:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityClientController;ILandroid/os/IRemoteCallback;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityClientController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$2:Landroid/os/IRemoteCallback;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/Transition;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$2:Landroid/os/IRemoteCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityClientController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityClientController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$1:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/server/wm/ActivityClientController;->validateMultiwindowFullscreenRequestLocked(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v3, "result"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v3}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :try_start_0
    invoke-interface {p1, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string p1, "ActivityTaskManager"

    .line 36
    .line 37
    const-string v3, "client throws an exception back to the server, ignore it"

    .line 38
    .line 39
    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityClientController$$ExternalSyntheticLambda4;->f$4:Lcom/android/server/wm/Transition;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->abort()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityClientController;->executeMultiWindowFullscreenRequest(ILcom/android/server/wm/Task;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

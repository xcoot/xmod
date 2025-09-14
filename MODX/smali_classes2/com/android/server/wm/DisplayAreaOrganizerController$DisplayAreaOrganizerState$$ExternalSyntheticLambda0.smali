.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/DisplayArea;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-boolean p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p1, v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->this$0:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object p1, p1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    .line 74
    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    iget-object p1, p1, Lcom/android/server/wm/DisplayAreaOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method

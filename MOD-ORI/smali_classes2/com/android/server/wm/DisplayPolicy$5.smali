.class public final Lcom/android/server/wm/DisplayPolicy$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$5;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/wm/DisplayPolicy;->mTransientWindowState:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_2

    .line 12
    .line 13
    iget v0, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 14
    .line 15
    if-ne v0, p1, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsVisibleBySwipe:Z

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 25
    .line 26
    xor-int/2addr p1, p2

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p2, "TaskOrganizerController"

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p0, p3, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    if-nez p0, :cond_1

    .line 48
    .line 49
    const-string/jumbo p0, "onNewDexImmersiveModeChanged: cannot find organizer"

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 57
    .line 58
    invoke-interface {p0, p3, p1}, Landroid/window/ITaskOrganizer;->onNewDexImmersiveModeChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    const-string p1, "Exception sending onNewDexImmersiveModeChanged callback. "

    .line 63
    .line 64
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_2
    return-void
.end method

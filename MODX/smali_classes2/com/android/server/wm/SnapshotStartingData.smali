.class public final Lcom/android/server/wm/SnapshotStartingData;
.super Lcom/android/server/wm/StartingData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSnapshot:Landroid/window/TaskSnapshot;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/window/TaskSnapshot;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    const-string v2, "WindowManager"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "TaskSnapshotSurface.create: Failed to find task for activity="

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "TaskSnapshotSurface.create: no main window in "

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 69
    .line 70
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getRotation()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x0

    .line 77
    if-eq v2, v4, :cond_2

    .line 78
    .line 79
    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 80
    .line 81
    invoke-virtual {v2, p1, p1, v5}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 89
    .line 90
    invoke-virtual {v2, v1, p1, v5, p0}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_3

    .line 95
    .line 96
    new-instance v3, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_0
    return-object v3
.end method

.method public final hasImeSurface()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final needRevealAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

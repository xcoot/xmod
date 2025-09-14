.class public final Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTheme:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 20
    .line 21
    invoke-virtual {v2, v1, p1, p0, v3}, Lcom/android/server/wm/TaskOrganizerController;->addStartingWindow(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;ILandroid/window/TaskSnapshot;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance v3, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;-><init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v3
.end method

.method public final needRevealAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

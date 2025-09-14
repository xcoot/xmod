.class public final synthetic Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 24
    .line 25
    if-eq v1, p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 29
    .line 30
    or-int/lit8 p0, p0, 0x4

    .line 31
    .line 32
    iput p0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 35
    .line 36
    .line 37
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 42
    .line 43
    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

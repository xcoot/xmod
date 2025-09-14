.class public final synthetic Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CapturedLetterbox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CapturedLetterbox;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CapturedLetterbox;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CapturedLetterbox;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 48
    .line 49
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 61
    .line 62
    const-wide/16 v2, 0x1388

    .line 63
    .line 64
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->createCapturedLetterboxSurface()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

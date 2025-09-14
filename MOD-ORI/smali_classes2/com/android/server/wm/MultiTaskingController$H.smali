.class public final Lcom/android/server/wm/MultiTaskingController$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 21
    .line 22
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 29
    .line 30
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 37
    .line 38
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 45
    .line 46
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 51
    .line 52
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 53
    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroid/graphics/Rect;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 63
    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 65
    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$H;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 73
    .line 74
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/FreeformController;->setFreeformWindowingModeByCornerGestureLocked(ILandroid/graphics/Rect;I)V

    .line 75
    .line 76
    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_CORNER_GESTURE_SA_LOGGING:Z

    .line 82
    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    const-string p0, "2004"

    .line 86
    .line 87
    const-string p1, "From Gesture"

    .line 88
    .line 89
    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_0
    return-void

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

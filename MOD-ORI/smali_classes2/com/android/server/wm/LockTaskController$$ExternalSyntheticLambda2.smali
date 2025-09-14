.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 9
    .line 10
    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 14
    .line 15
    iget-boolean v3, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 16
    .line 17
    iput-boolean v2, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 18
    .line 19
    iget-object v4, v0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 20
    .line 21
    iget v5, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 22
    .line 23
    iget-object v6, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 24
    .line 25
    const/16 v7, 0x1c

    .line 26
    .line 27
    invoke-virtual {v6, v7, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v6, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 40
    .line 41
    invoke-virtual {v0, v4, p0}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 42
    .line 43
    .line 44
    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 45
    .line 46
    invoke-virtual {v0, v4, p0}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    if-ne v1, v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v6, 0x0

    .line 69
    invoke-interface {v5, v2, v6, p0}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    if-ne v1, v4, :cond_2

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    invoke-interface {p0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    iget v1, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 90
    .line 91
    .line 92
    iget p0, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

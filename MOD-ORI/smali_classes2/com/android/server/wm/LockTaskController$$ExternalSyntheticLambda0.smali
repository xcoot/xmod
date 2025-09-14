.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LockTaskController;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/wm/Task;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LockTaskController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LockTaskController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 21
    .line 22
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 27
    .line 28
    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 29
    .line 30
    iput-boolean v3, v0, Lcom/android/server/wm/LockTaskController;->mInteractionControlEnabled:Z

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-ne p0, v4, :cond_0

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v3, v5}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    invoke-virtual {v3, p0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 53
    .line 54
    .line 55
    iput p0, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 56
    .line 57
    iget-object v3, v0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 58
    .line 59
    iget v4, v0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 60
    .line 61
    iget-object v6, v3, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 62
    .line 63
    const/16 v7, 0x1c

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-virtual {v6, v7, v4, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v6, v3, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-virtual {v3, v6, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v3, v5, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->notifyLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

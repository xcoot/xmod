.class public final Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayStates:Landroid/util/SparseArray;

.field public final mResetWaitTransition:Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

.field public mWaitingForWakeTransition:Z

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mResetWaitTransition:Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 25
    .line 26
    new-instance p2, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v0, "keyguard"

    .line 32
    .line 33
    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final canDismissKeyguard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardTrustedLw()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public final canShowWhileOccluded(ZZ)Z
    .locals 0

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit8 v0, v0, 0x20

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    iget-boolean p0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    iget-boolean p0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    iget-object p0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 72
    .line 73
    if-eq p0, p1, :cond_3

    .line 74
    .line 75
    :cond_2
    move v1, v2

    .line 76
    :cond_3
    return v1

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_5
    return v2
.end method

.method public final dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ActivityTaskManager"

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Activity requesting to dismiss Keyguard: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "dismissKeyguard::"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const-string p1, "Failed to call callback"

    .line 80
    .line 81
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "  KeyguardController:"

    .line 7
    .line 8
    const-string v3, "    mKeyguardShowing="

    .line 9
    .line 10
    invoke-static {p1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-boolean v3, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 15
    .line 16
    const-string v4, "    mAodShowing="

    .line 17
    .line 18
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v3, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 23
    .line 24
    const-string v4, "    mKeyguardGoingAway="

    .line 25
    .line 26
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-boolean v3, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 31
    .line 32
    invoke-static {v2, v3, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ge v0, v2, :cond_0

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "   KeyguardShowing="

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, " AodShowing="

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, " KeyguardGoingAway="

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " DismissalRequested="

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "  Occluded="

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v4, " DismissingKeyguardActivity="

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, " TurnScreenOnActivity="

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v4, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, " at display="

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v2, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, "    mDismissalRequested="

    .line 149
    .line 150
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v0, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v0
.end method

.method public final handleFreeformTaskOccluded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "handleFreeformTaskOccluded: failed to request TRANSIT_KEYGUARD_OCCLUDE, transition="

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, ", make fullscreen, "

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "ActivityTaskManager"

    .line 59
    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x1

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public final isKeyguardGoingAway(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isKeyguardLocked(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isKeyguardOccluded(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final isKeyguardOrAodShowing(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isKeyguardShowing(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final setWakeTransitionReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final updateDeferTransitionForAod(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    if-ne p1, v1, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mResetWaitTransition:Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v1, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->deferTransitionReady()V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 61
    .line 62
    const-string v1, "AOD hidden"

    .line 63
    .line 64
    invoke-direct {p1, v1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 83
    .line 84
    const-wide/16 v1, 0x1388

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    if-nez p1, :cond_5

    .line 91
    .line 92
    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mWaitingForWakeTransition:Z

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 99
    .line 100
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->continueTransitionReady()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWaitAodHide:Lcom/android/server/wm/Transition$ReadyCondition;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_1
    return-void
.end method

.method public final updateKeyguardSleepToken()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateKeyguardSleepToken(I)V
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 6
    iget-boolean v2, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    if-eqz v2, :cond_0

    .line 7
    iget-boolean p0, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    xor-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p0

    .line 9
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->release(I)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->acquire(IZ)V

    :goto_1
    return-void
.end method

.class public final Lcom/android/server/wm/FreeformController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBlockToAddForceHideFreeformTasks:Z

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mDeferMinimizeCallback:Z

.field public final mDeferredCallbacks:Ljava/util/ArrayList;

.field public final mForceHiddenFreeformContainers:Ljava/util/ArrayList;

.field public final mForceHiddenFreeformTasks:Ljava/util/ArrayList;

.field public mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

.field public mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

.field public mFreeformCaptionType:I

.field public final mFreeformContainerPoint:Landroid/graphics/PointF;

.field public final mFreeformCornerRadius:Landroid/util/SparseArray;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/FreeformController$H;

.field public mIsForceHideWithoutAnimation:Z

.field public final mMaxFreeformOverWrittenCnt:I

.field public final mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

.field public final mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

.field public mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

.field public mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTmpWindow:Lcom/android/server/wm/WindowState;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mDeferredCallbacks:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/PointF;

    .line 29
    .line 30
    const/high16 v2, -0x40800000    # -1.0f

    .line 31
    .line 32
    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/wm/FreeformController;->mFreeformContainerPoint:Landroid/graphics/PointF;

    .line 36
    .line 37
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 71
    .line 72
    new-instance v0, Lcom/android/server/wm/MinimizeContainerServiceBinder;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 78
    .line 79
    new-instance v2, Landroid/content/ComponentName;

    .line 80
    .line 81
    const-string v3, "com.android.systemui"

    .line 82
    .line 83
    const-string v4, "com.android.wm.shell.freeform.MinimizeContainerService"

    .line 84
    .line 85
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    .line 92
    .line 93
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    new-instance v0, Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 98
    .line 99
    invoke-direct {v0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, v0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mService:Landroid/content/Intent;

    .line 103
    .line 104
    new-instance v1, Landroid/content/ComponentName;

    .line 105
    .line 106
    const-string v2, "com.android.wm.shell.freeform.SmartPopupViewService"

    .line 107
    .line 108
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x5

    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method


# virtual methods
.method public final continueMinimizeStateChangedCallbacks()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/FreeformController;->mDeferMinimizeCallback:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/wm/FreeformController;->mDeferMinimizeCallback:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mDeferredCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/os/Message;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mDeferredCallbacks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "[FreeformController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "  mForceHiddenFreeformWindows="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "  mForceHideFreeformRequester="

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "  mForceHideMinimizeRequester="

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "  mForceHiddenFreeformTasks="

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    const-string v0, "  mBlockToAddForceHideFreeformTasks=true"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 118
    .line 119
    .line 120
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-direct {v4, v3, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/server/wm/Task;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 61
    .line 62
    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 82
    .line 83
    .line 84
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/FreeformController$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FreeformController$H;-><init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 15
    .line 16
    return-void
.end method

.method public final notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 10
    .line 11
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 12
    .line 13
    iget v1, p3, Lcom/android/server/wm/Task;->mUserId:I

    .line 14
    .line 15
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 16
    .line 17
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 18
    .line 19
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 20
    .line 21
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 24
    .line 25
    iget-boolean p2, p3, Lcom/android/server/wm/Task;->mIsMinimized:Z

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const/16 p2, 0xc9

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 p2, 0xca

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-boolean p2, p0, Lcom/android/server/wm/FreeformController;->mDeferMinimizeCallback:Z

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mDeferredCallbacks:Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public final releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x4

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x2

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FreeformController;->requestForceHideTransition(ILcom/android/server/wm/Task;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 p1, 0x1

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    filled-new-array {v0}, [Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo p1, "releaseForceHidePolicyIfNeededLocked: "

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "FreeformController"

    .line 93
    .line 94
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method

.method public final releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "releaseForceHideTaskLocked: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "FreeformController"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FreeformController;I)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final requestForceHideTransition(ILcom/android/server/wm/Task;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v4, v4, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v4, v2

    .line 42
    :goto_1
    const/4 v5, 0x1

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v7, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget-object v8, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 53
    .line 54
    if-nez v8, :cond_5

    .line 55
    .line 56
    const/4 v8, 0x2

    .line 57
    if-eq p1, v8, :cond_3

    .line 58
    .line 59
    const/4 v8, 0x4

    .line 60
    if-ne p1, v8, :cond_5

    .line 61
    .line 62
    :cond_3
    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-ne v4, v8, :cond_4

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eq v4, v6, :cond_5

    .line 91
    .line 92
    :cond_4
    move v1, v5

    .line 93
    :cond_5
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v6, "requestForceHideTransition: tid #"

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget v6, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 102
    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, ", type="

    .line 107
    .line 108
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->forceHidingTransitToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v6, ", forceSync="

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v6, ", newTransit="

    .line 127
    .line 128
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    const-string v6, "FreeformController"

    .line 139
    .line 140
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    invoke-virtual {v3, p2, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 149
    .line 150
    if-nez v1, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    iget-object v1, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 154
    .line 155
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 160
    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    iput p1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    .line 164
    .line 165
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 166
    .line 167
    invoke-virtual {p0, v0, p2, v2, v2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p2, v5}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 171
    .line 172
    .line 173
    :cond_8
    return-void
.end method

.method public final scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setBlockToAddForceHideFreeformTasks(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "setBlockToAddForceHideFreeformTasks: blockToAddForceHide="

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/wm/FreeformController;->mBlockToAddForceHideFreeformTasks:Z

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, ", Caller="

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "FreeformController"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final setFreeformWindowingModeByCornerGestureLocked(ILandroid/graphics/Rect;I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setFreeformWindowingModeByCornerGestureLocked: taskId="

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p1, v3, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v4, "FreeformController"

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " not found"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 59
    .line 60
    .line 61
    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: task is locked"

    .line 62
    .line 63
    .line 64
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: cannot find display"

    .line 78
    .line 79
    .line 80
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v5, 0x5

    .line 92
    const/4 v6, 0x1

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v1, v6, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: root activity not found"

    .line 102
    .line 103
    .line 104
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget p3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 118
    .line 119
    if-eqz p3, :cond_4

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const p3, 0x7fffffff

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eq v0, v5, :cond_c

    .line 149
    .line 150
    new-instance v0, Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 153
    .line 154
    .line 155
    iput-object v0, v1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 156
    .line 157
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    if-eqz v7, :cond_7

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_7

    .line 172
    .line 173
    move v7, v6

    .line 174
    goto :goto_1

    .line 175
    :cond_7
    move v7, v3

    .line 176
    :goto_1
    iput-boolean v7, v1, Lcom/android/server/wm/Task;->mSetDisplayChangeTransitionByCornerGesture:Z

    .line 177
    .line 178
    :cond_8
    invoke-virtual {v1, v5}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 179
    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    iput-boolean v3, v1, Lcom/android/server/wm/Task;->mSetDisplayChangeTransitionByCornerGesture:Z

    .line 184
    .line 185
    :cond_9
    invoke-virtual {v1, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    .line 191
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 192
    .line 193
    if-nez v3, :cond_a

    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_a

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 206
    .line 207
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    .line 209
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 212
    .line 213
    iget v5, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 214
    .line 215
    const/4 v7, 0x3

    .line 216
    invoke-virtual {v3, v5, v7, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_a
    if-eqz p2, :cond_b

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eq p3, v0, :cond_e

    .line 240
    .line 241
    if-eqz p2, :cond_d

    .line 242
    .line 243
    invoke-virtual {p1, p3, p2, v0}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_d
    const-string/jumbo p1, "setFreeformWindowingModeByCornerGestureLocked: bounds is null"

    .line 248
    .line 249
    .line 250
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    :cond_e
    :goto_2
    const/4 p1, 0x2

    .line 254
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 258
    .line 259
    invoke-virtual {p1, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    .line 266
    .line 267
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 272
    .line 273
    .line 274
    throw p1
.end method

.method public final updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_1d

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_10

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget v3, v2, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    .line 22
    .line 23
    iget v2, v2, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_1d

    .line 27
    .line 28
    iget v5, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 29
    .line 30
    if-eq v3, v5, :cond_1d

    .line 31
    .line 32
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x1

    .line 56
    if-gt v7, v6, :cond_1

    .line 57
    .line 58
    move v6, v9

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v6, v8

    .line 61
    :goto_0
    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    move v1, v9

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v1, v8

    .line 68
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v10, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 80
    .line 81
    iget-object v12, v11, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 82
    .line 83
    aget-object v12, v12, v8

    .line 84
    .line 85
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_3

    .line 90
    .line 91
    invoke-virtual {v11, v9}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v11, v11, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 95
    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    aget-object v11, v11, v8

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    aget-object v11, v11, v9

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 105
    .line 106
    iget-object v12, v11, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 107
    .line 108
    aget-object v12, v12, v8

    .line 109
    .line 110
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_6

    .line 115
    .line 116
    invoke-virtual {v11, v8}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v11, v11, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 120
    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    aget-object v11, v11, v8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    aget-object v11, v11, v9

    .line 127
    .line 128
    :goto_2
    if-eqz v1, :cond_a

    .line 129
    .line 130
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 131
    .line 132
    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 133
    .line 134
    aget-object v12, v12, v8

    .line 135
    .line 136
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_8

    .line 141
    .line 142
    invoke-virtual {v1, v8}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object v1, v1, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 146
    .line 147
    if-eqz v6, :cond_9

    .line 148
    .line 149
    aget-object v1, v1, v8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_9
    aget-object v1, v1, v9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 156
    .line 157
    iget-object v12, v1, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 158
    .line 159
    aget-object v12, v12, v8

    .line 160
    .line 161
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_b

    .line 166
    .line 167
    invoke-virtual {v1, v9}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    .line 168
    .line 169
    .line 170
    :cond_b
    iget-object v1, v1, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 171
    .line 172
    if-eqz v6, :cond_c

    .line 173
    .line 174
    aget-object v1, v1, v8

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_c
    aget-object v1, v1, v9

    .line 178
    .line 179
    :goto_3
    if-eq v2, v4, :cond_d

    .line 180
    .line 181
    if-eq v5, v4, :cond_d

    .line 182
    .line 183
    if-eq v2, v5, :cond_d

    .line 184
    .line 185
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 186
    .line 187
    invoke-virtual {v3, v2, v7, v5}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_e

    .line 198
    .line 199
    goto/16 :goto_f

    .line 200
    .line 201
    :cond_e
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-ge v2, v3, :cond_f

    .line 213
    .line 214
    move v2, v9

    .line 215
    goto :goto_4

    .line 216
    :cond_f
    move v2, v8

    .line 217
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-ge v3, v4, :cond_10

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_10
    move v9, v8

    .line 229
    :goto_5
    const/16 v3, 0x8

    .line 230
    .line 231
    if-nez v2, :cond_12

    .line 232
    .line 233
    if-eqz v9, :cond_11

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_11
    iget p0, v7, Landroid/graphics/Rect;->left:I

    .line 237
    .line 238
    int-to-float p0, p0

    .line 239
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    sub-int/2addr v0, v2

    .line 248
    int-to-float v0, v0

    .line 249
    div-float/2addr p0, v0

    .line 250
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 251
    .line 252
    int-to-float v0, v0

    .line 253
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    sub-int/2addr v2, v4

    .line 262
    int-to-float v2, v2

    .line 263
    div-float/2addr v0, v2

    .line 264
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    sub-int/2addr v2, v4

    .line 273
    int-to-float v2, v2

    .line 274
    mul-float/2addr v2, p0

    .line 275
    float-to-int p0, v2

    .line 276
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    sub-int/2addr v2, v4

    .line 285
    int-to-float v2, v2

    .line 286
    mul-float/2addr v2, v0

    .line 287
    float-to-int v0, v2

    .line 288
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-virtual {v10, v8, v8, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_b

    .line 303
    .line 304
    :cond_12
    :goto_6
    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 307
    .line 308
    invoke-virtual {v0, v8, p0}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 309
    .line 310
    .line 311
    if-eqz v2, :cond_13

    .line 312
    .line 313
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 314
    .line 315
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 316
    .line 317
    add-int/2addr v0, v2

    .line 318
    add-int/2addr v0, v3

    .line 319
    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 320
    .line 321
    iget v0, v1, Landroid/graphics/Rect;->right:I

    .line 322
    .line 323
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 324
    .line 325
    sub-int/2addr v0, v2

    .line 326
    sub-int/2addr v0, v3

    .line 327
    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_13
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 331
    .line 332
    int-to-float v0, v0

    .line 333
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    sub-int/2addr v2, v4

    .line 342
    int-to-float v2, v2

    .line 343
    div-float/2addr v0, v2

    .line 344
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    sub-int/2addr v2, v4

    .line 353
    int-to-float v2, v2

    .line 354
    mul-float/2addr v2, v0

    .line 355
    float-to-int v0, v2

    .line 356
    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 357
    .line 358
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    add-int/2addr v2, v0

    .line 363
    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 364
    .line 365
    :goto_7
    if-eqz v9, :cond_14

    .line 366
    .line 367
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 368
    .line 369
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 370
    .line 371
    add-int/2addr v0, v2

    .line 372
    add-int/2addr v0, v3

    .line 373
    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 374
    .line 375
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 376
    .line 377
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 378
    .line 379
    sub-int/2addr v0, p0

    .line 380
    sub-int/2addr v0, v3

    .line 381
    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_14
    iget p0, v7, Landroid/graphics/Rect;->top:I

    .line 385
    .line 386
    int-to-float p0, p0

    .line 387
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    sub-int/2addr v0, v2

    .line 396
    int-to-float v0, v0

    .line 397
    div-float/2addr p0, v0

    .line 398
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    sub-int/2addr v0, v2

    .line 407
    int-to-float v0, v0

    .line 408
    mul-float/2addr v0, p0

    .line 409
    float-to-int p0, v0

    .line 410
    iput p0, v10, Landroid/graphics/Rect;->top:I

    .line 411
    .line 412
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    add-int/2addr v0, p0

    .line 417
    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 418
    .line 419
    :goto_8
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    new-instance v2, Landroid/graphics/Rect;

    .line 428
    .line 429
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {p1, v10, v2, v4}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eq p0, v2, :cond_15

    .line 448
    .line 449
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    sub-int/2addr v2, p0

    .line 454
    div-int/lit8 v2, v2, 0x2

    .line 455
    .line 456
    rsub-int/lit8 p0, v2, 0x0

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_15
    move p0, v8

    .line 460
    :goto_9
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eq v0, v2, :cond_16

    .line 465
    .line 466
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    sub-int/2addr v2, v0

    .line 471
    div-int/lit8 v2, v2, 0x2

    .line 472
    .line 473
    rsub-int/lit8 v0, v2, 0x0

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_16
    move v0, v8

    .line 477
    :goto_a
    invoke-virtual {v10, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 478
    .line 479
    .line 480
    :goto_b
    iget p0, v10, Landroid/graphics/Rect;->left:I

    .line 481
    .line 482
    if-le v3, p0, :cond_17

    .line 483
    .line 484
    rsub-int/lit8 p0, p0, 0x8

    .line 485
    .line 486
    goto :goto_c

    .line 487
    :cond_17
    iget p0, v1, Landroid/graphics/Rect;->right:I

    .line 488
    .line 489
    sub-int/2addr p0, v3

    .line 490
    iget v0, v10, Landroid/graphics/Rect;->right:I

    .line 491
    .line 492
    if-ge p0, v0, :cond_18

    .line 493
    .line 494
    sub-int/2addr p0, v0

    .line 495
    goto :goto_c

    .line 496
    :cond_18
    move p0, v8

    .line 497
    :goto_c
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 498
    .line 499
    if-le v3, v0, :cond_19

    .line 500
    .line 501
    sub-int/2addr v3, v0

    .line 502
    goto :goto_d

    .line 503
    :cond_19
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 504
    .line 505
    sub-int/2addr v0, v3

    .line 506
    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 507
    .line 508
    if-ge v0, v1, :cond_1a

    .line 509
    .line 510
    sub-int v3, v0, v1

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_1a
    move v3, v8

    .line 514
    :goto_d
    invoke-virtual {v10, p0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 518
    .line 519
    .line 520
    move-result p0

    .line 521
    if-eqz p0, :cond_1c

    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStashedBounds()Landroid/graphics/Rect;

    .line 524
    .line 525
    .line 526
    move-result-object p0

    .line 527
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeftStash()Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_1b

    .line 532
    .line 533
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 534
    .line 535
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    sub-int/2addr p0, v0

    .line 540
    goto :goto_e

    .line 541
    :cond_1b
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 542
    .line 543
    :goto_e
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 544
    .line 545
    invoke-virtual {v10, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 546
    .line 547
    .line 548
    :cond_1c
    :goto_f
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result p0

    .line 552
    if-nez p0, :cond_1d

    .line 553
    .line 554
    invoke-virtual {p1, v8, v10}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    .line 555
    .line 556
    .line 557
    :cond_1d
    :goto_10
    return-void
.end method

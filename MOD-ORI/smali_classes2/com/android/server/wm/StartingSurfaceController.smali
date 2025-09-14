.class public final Lcom/android/server/wm/StartingSurfaceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeferringAddStartActivities:Ljava/util/ArrayList;

.field public mDeferringAddStartingWindow:Z

.field public mInitNewTask:Z

.field public mInitProcessRunning:Z

.field public mInitTaskSwitch:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/SplashScreenExceptionList;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;-><init>(Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mSplashScreenExceptionsList:Lcom/android/server/wm/SplashScreenExceptionList;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    const-string v1, "WindowManager"

    .line 13
    .line 14
    if-ltz v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    .line 23
    .line 24
    iget-object v11, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mDeferring:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "No task exists: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " parent: "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    .line 63
    .line 64
    iget-boolean v6, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    .line 65
    .line 66
    iget-boolean v7, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    .line 67
    .line 68
    iget-object v9, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mSource:Lcom/android/server/wm/ActivityRecord;

    .line 69
    .line 70
    iget-object v4, v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;->mPrev:Lcom/android/server/wm/ActivityRecord;

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    move-object v3, v11

    .line 74
    move-object v10, p1

    .line 75
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    const-string p0, "deferringAddStartActivities clear"

    .line 92
    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void
.end method

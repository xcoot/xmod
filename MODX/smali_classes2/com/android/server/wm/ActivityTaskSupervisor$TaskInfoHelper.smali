.class public final Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mInfo:Landroid/app/TaskInfo;

.field public mTopRunning:Lcom/android/server/wm/ActivityRecord;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    .line 18
    .line 19
    iget v1, v0, Landroid/app/TaskInfo;->numActivities:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, v0, Landroid/app/TaskInfo;->numActivities:I

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 26
    .line 27
    iput-object v1, v0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

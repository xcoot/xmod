.class public final Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final mCollectedActivities:Ljava/util/ArrayList;

.field public mDoit:Z

.field public mEvenPersistent:Z

.field public mFilterByClasses:Ljava/util/Set;

.field public mLastTask:Lcom/android/server/wm/Task;

.field public mOnlyRemoveNoProcess:Z

.field public mPackageName:Ljava/lang/String;

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mFilterByClasses:Ljava/util/Set;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mPackageName:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 36
    .line 37
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    .line 38
    .line 39
    if-ne v0, v3, :cond_2

    .line 40
    .line 41
    :cond_1
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    xor-int/2addr v3, v2

    .line 49
    iget v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mUserId:I

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    if-eq v4, v5, :cond_3

    .line 53
    .line 54
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 55
    .line 56
    if-ne v5, v4, :cond_8

    .line 57
    .line 58
    :cond_3
    if-nez v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    .line 63
    .line 64
    if-ne v0, v4, :cond_8

    .line 65
    .line 66
    :cond_4
    if-nez v3, :cond_5

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mEvenPersistent:Z

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 73
    .line 74
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    .line 75
    .line 76
    if-nez v0, :cond_8

    .line 77
    .line 78
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mDoit:Z

    .line 79
    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    move v1, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mCollectedActivities:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$FinishDisabledPackageActivitiesHelper;->mLastTask:Lcom/android/server/wm/Task;

    .line 97
    .line 98
    :cond_8
    :goto_1
    return v1
.end method

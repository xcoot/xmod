.class public final Lcom/android/server/wm/MultiInstanceController$FindTasksResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public cls:Landroid/content/ComponentName;

.field public documentData:Landroid/net/Uri;

.field public intent:Landroid/content/Intent;

.field public isDocument:Z

.field public mTarget:Lcom/android/server/wm/ActivityRecord;

.field public userId:I


# virtual methods
.method public final process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->mTarget:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->cls:Landroid/content/ComponentName;

    .line 10
    .line 11
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->userId:I

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->isDocument:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->intent:Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->documentData:Landroid/net/Uri;

    .line 40
    .line 41
    new-instance v0, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiInstanceController$FindTasksResult;Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

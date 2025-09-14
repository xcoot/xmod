.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 12
    .line 13
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

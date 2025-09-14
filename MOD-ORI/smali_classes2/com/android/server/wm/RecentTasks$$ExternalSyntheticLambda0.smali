.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget p0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 8
    .line 9
    sub-int/2addr p0, p1

    .line 10
    return p0
.end method

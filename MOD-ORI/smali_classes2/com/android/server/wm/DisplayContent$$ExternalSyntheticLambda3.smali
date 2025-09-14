.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    move-object p2, p0

    .line 12
    :cond_0
    return-object p2
.end method

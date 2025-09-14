.class public final Lcom/android/server/power/stats/MultiStateStats$States;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLabels:[Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mTracked:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static findTrackedStateByName([Lcom/android/server/power/stats/MultiStateStats$States;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget-object v1, p0, v0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/power/stats/MultiStateStats$States;->mName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public static forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    if-ge p3, v0, :cond_2

    .line 3
    .line 4
    aget-object v0, p1, p3

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/android/server/power/stats/MultiStateStats$States;->mTracked:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0x1

    .line 11
    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    aget-object v1, p1, p3

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/power/stats/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    aput v0, p2, p3

    .line 25
    .line 26
    add-int/lit8 v1, p3, 0x1

    .line 27
    .line 28
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/power/stats/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/MultiStateStats$States;[II)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt__ArraysJVMKt;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    array-length p1, p0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-ge v1, p1, :cond_3

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    array-length v1, p0

    .line 17
    move v2, v0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_3

    .line 19
    .line 20
    aget-object v3, p0, v2

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v1, -0x1

    .line 34
    :goto_2
    if-ltz v1, :cond_4

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_4
    return v0
.end method

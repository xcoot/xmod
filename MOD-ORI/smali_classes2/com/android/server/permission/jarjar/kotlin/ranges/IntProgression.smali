.class public abstract Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final first:I

.field public final last:I

.field public final step:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-lt p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    rem-int/lit8 v1, p2, 0x1

    .line 11
    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    :goto_0
    rem-int/2addr p1, v0

    .line 18
    if-ltz p1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    :goto_1
    sub-int/2addr v1, p1

    .line 24
    rem-int/2addr v1, v0

    .line 25
    if-ltz v1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    :goto_2
    sub-int/2addr p2, v1

    .line 31
    :goto_3
    iput p2, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 32
    .line 33
    iput v0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->step:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgressionIterator;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->step:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgressionIterator;-><init>(III)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

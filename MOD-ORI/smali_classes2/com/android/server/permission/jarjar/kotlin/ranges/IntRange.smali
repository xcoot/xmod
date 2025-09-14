.class public final Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;
.super Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 8
    .line 9
    if-le v0, p0, :cond_0

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 13
    .line 14
    iget v2, v1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 15
    .line 16
    iget v1, v1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 17
    .line 18
    if-le v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntRange;

    .line 22
    .line 23
    iget v1, p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget p1, p1, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_1
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 4
    .line 5
    if-le v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    add-int/2addr p0, v0

    .line 12
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->first:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/ranges/IntProgression;->last:I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

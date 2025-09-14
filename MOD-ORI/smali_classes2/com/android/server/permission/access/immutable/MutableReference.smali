.class public final Lcom/android/server/permission/access/immutable/MutableReference;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public immutable:Lcom/android/server/permission/access/immutable/Immutable;

.field public mutable:Lcom/android/server/permission/access/immutable/Immutable;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-class v1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.immutable.MutableReference<*, *>"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final mutate()Lcom/android/server/permission/access/immutable/Immutable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/server/permission/access/immutable/Immutable;->toMutable()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/permission/access/immutable/Immutable;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->mutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 17
    .line 18
    return-object v0
.end method

.method public final toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

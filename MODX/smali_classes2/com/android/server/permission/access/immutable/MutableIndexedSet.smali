.class public final Lcom/android/server/permission/access/immutable/MutableIndexedSet;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final set:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

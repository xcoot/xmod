.class public final Lcom/android/server/pm/RestrictionsSet;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserRestrictions:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getRestrictions(I)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Bundle;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getUserIds()Landroid/util/IntArray;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/IntArray;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public keyAt(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final updateRestrictions(ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p2}, Lcom/android/server/BundleUtils;->isEmpty(Landroid/os/Bundle;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return v1
.end method

.method public valueAt(I)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/Bundle;

    .line 8
    .line 9
    return-object p0
.end method

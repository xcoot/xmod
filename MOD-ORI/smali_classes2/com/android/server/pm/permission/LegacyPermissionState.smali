.class public final Lcom/android/server/pm/permission/LegacyPermissionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMissing:Landroid/util/SparseBooleanArray;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    return-void
.end method

.method public static checkUserId(I)V
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Invalid user ID "

    .line 7
    .line 8
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method


# virtual methods
.method public final copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V
    .locals 7

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object v4, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 28
    .line 29
    iget-object v6, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 36
    .line 37
    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$UserState;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :goto_1
    if-ge v1, v0, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-object v4, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 14
    .line 15
    if-eq v2, v1, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    return v0

    .line 35
    :cond_3
    move v2, v0

    .line 36
    :goto_0
    if-ge v2, v1, :cond_5

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    return v0

    .line 63
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 69
    .line 70
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0
.end method

.method public final getPermissionStates(I)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final hasPermissionState(Ljava/util/Collection;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, v3, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 42
    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v1
.end method

.method public final putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mUserStates:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, v0, Lcom/android/server/pm/permission/LegacyPermissionState$UserState;->mPermissionStates:Landroid/util/ArrayMap;

    .line 25
    .line 26
    iget-object p2, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setMissing(IZ)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->checkUserId(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionState;->mMissing:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

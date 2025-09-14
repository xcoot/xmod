.class public final Lcom/android/server/permission/access/MutableAccessState;
.super Lcom/android/server/permission/access/AccessState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->systemStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/MutableSystemState;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 17
    .line 18
    return-object p0
.end method

.method public static mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public final mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->externalStateReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/MutableExternalState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

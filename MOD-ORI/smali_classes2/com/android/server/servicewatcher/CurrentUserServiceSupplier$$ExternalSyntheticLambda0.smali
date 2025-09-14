.class public final synthetic Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 p0, -0x1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    :goto_0
    move p0, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget v1, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 19
    .line 20
    iget v2, p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    iget p1, p1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 29
    .line 30
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget p2, p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move p0, v1

    .line 59
    :goto_1
    return p0
.end method

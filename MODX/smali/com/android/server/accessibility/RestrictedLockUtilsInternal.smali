.class public abstract Lcom/android/server/accessibility/RestrictedLockUtilsInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getManagedProfileId(Landroid/content/Context;I)I
    .locals 2

    .line 1
    const-class v0, Landroid/os/UserManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/UserManager;

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 29
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 31
    if-ne v1, p1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 42
    return p0

    .line 43
    :cond_2
    const/16 p0, -0x2710

    .line 45
    return p0
.end method

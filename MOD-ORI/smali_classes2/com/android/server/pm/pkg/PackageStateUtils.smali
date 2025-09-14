.class public abstract Lcom/android/server/pm/pkg/PackageStateUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getEarliestFirstInstallTime(Landroid/util/SparseArray;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-wide v5, v2

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-ge v4, v7, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 30
    .line 31
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    cmp-long v9, v7, v0

    .line 36
    .line 37
    if-eqz v9, :cond_1

    .line 38
    .line 39
    cmp-long v9, v7, v5

    .line 40
    .line 41
    if-gez v9, :cond_1

    .line 42
    .line 43
    move-wide v5, v7

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    cmp-long p0, v5, v2

    .line 48
    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move-wide v0, v5

    .line 53
    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z
    .locals 8

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    move-object v0, p4

    .line 34
    move-wide v6, p2

    .line 35
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserStateInternal;ZZZZLjava/lang/String;J)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[I)[I
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget v5, p1, v2

    .line 9
    .line 10
    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-ne v5, v4, :cond_0

    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-array v0, v3, [I

    .line 26
    .line 27
    array-length v2, p1

    .line 28
    move v3, v1

    .line 29
    :goto_1
    if-ge v1, v2, :cond_3

    .line 30
    .line 31
    aget v5, p1, v1

    .line 32
    .line 33
    invoke-interface {p0, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ne v6, v4, :cond_2

    .line 42
    .line 43
    aput v5, v0, v3

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    return-object v0
.end method

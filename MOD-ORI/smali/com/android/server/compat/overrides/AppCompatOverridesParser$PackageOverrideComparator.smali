.class public abstract Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public static getVersionProximity(Landroid/app/compat/PackageOverride;J)J
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sub-long/2addr p1, v0

    .line 12
    return-wide p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    cmp-long v0, v0, p1

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sub-long/2addr v0, p1

    .line 26
    return-wide v0

    .line 27
    :cond_1
    const-wide/16 p0, 0x0

    .line 28
    .line 29
    return-wide p0
.end method

.method public static isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, v0, p1

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static isVersionInRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, v0, p1

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    cmp-long p0, p1, v0

    .line 14
    .line 15
    if-gtz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

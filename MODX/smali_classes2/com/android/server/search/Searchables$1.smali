.class public final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 2
    .line 3
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    and-int/2addr v0, v1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, p0

    .line 22
    :goto_0
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 23
    .line 24
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 27
    .line 28
    and-int/2addr v2, v1

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    move p0, v1

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    .line 33
    .line 34
    if-nez p0, :cond_3

    .line 35
    .line 36
    const/4 p0, -0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    if-eqz p0, :cond_4

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    move p0, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    iget p0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 45
    .line 46
    iget p1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 47
    .line 48
    sub-int/2addr p0, p1

    .line 49
    :goto_1
    return p0
.end method

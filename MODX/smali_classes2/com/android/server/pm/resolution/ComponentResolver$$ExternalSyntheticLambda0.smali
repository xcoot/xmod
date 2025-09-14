.class public final synthetic Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;
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
    iget p0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 6
    .line 7
    iget v0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    if-le p0, v0, :cond_8

    .line 14
    .line 15
    :goto_0
    move v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget p0, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 18
    .line 19
    iget v0, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 20
    .line 21
    if-eq p0, v0, :cond_1

    .line 22
    .line 23
    if-le p0, v0, :cond_8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean p0, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 27
    .line 28
    iget-boolean v0, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 29
    .line 30
    if-eq p0, v0, :cond_2

    .line 31
    .line 32
    if-eqz p0, :cond_8

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget p0, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 36
    .line 37
    iget v0, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 38
    .line 39
    if-eq p0, v0, :cond_3

    .line 40
    .line 41
    if-le p0, v0, :cond_8

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-boolean p0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 45
    .line 46
    iget-boolean v0, p2, Landroid/content/pm/ResolveInfo;->system:Z

    .line 47
    .line 48
    if-eq p0, v0, :cond_4

    .line 49
    .line 50
    if-eqz p0, :cond_8

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 54
    .line 55
    if-eqz p0, :cond_5

    .line 56
    .line 57
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    .line 61
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 69
    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 75
    .line 76
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 84
    .line 85
    if-eqz p0, :cond_7

    .line 86
    .line 87
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 90
    .line 91
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    goto :goto_1

    .line 98
    :cond_7
    const/4 v1, 0x0

    .line 99
    :cond_8
    :goto_1
    return v1
.end method

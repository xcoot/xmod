.class public final Lcom/android/server/om/OverlayInfoExtPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;


# virtual methods
.method public final retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string p0, "/data/overlays"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const-string p0, "android"

    .line 12
    .line 13
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Landroid/content/om/SamsungThemeConstants;->changeableApps:Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {p0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    return v0

    .line 50
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Lcom/android/server/om/OverlayInfoExtPolicy$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-direct {p1, p3}, Lcom/android/server/om/OverlayInfoExtPolicy$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Lcom/android/server/om/OverlayInfoExtPolicy$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 p3, 0x1

    .line 79
    invoke-direct {p2, p3}, Lcom/android/server/om/OverlayInfoExtPolicy$$ExternalSyntheticLambda0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    or-int/2addr p0, p1

    .line 87
    return p0

    .line 88
    :cond_4
    :goto_0
    return v0
.end method

.class public abstract Lcom/android/server/om/OverlayPolicyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mLock:Ljava/lang/Object;

.field public static final policies:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p3, Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 14
    .line 15
    invoke-direct {p3}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 40
    .line 41
    check-cast v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    .line 58
    .line 59
    invoke-interface {v4, v1, p1, p2}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    and-int/2addr v2, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p3, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/String;

    .line 90
    .line 91
    sget-object v1, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 92
    .line 93
    check-cast v1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move v3, v2

    .line 100
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_5

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;

    .line 111
    .line 112
    invoke-interface {v4, v0, p1, p2}, Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;->retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    and-int/2addr v3, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_5
    if-eqz v3, :cond_4

    .line 119
    .line 120
    invoke-virtual {p3, v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {p3}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method

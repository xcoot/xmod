.class public final Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/om/OverlayPolicyManager$OverlayPackagePolicy;


# instance fields
.field public final mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final retainOverlay(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "/data/resource-cache/android-SemWT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "for "

    .line 12
    .line 13
    const-string v2, " checking "

    .line 14
    .line 15
    const-string v3, " with existing "

    .line 16
    .line 17
    invoke-static {v0, p3, v2, p1, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "SemWallpaperThemeOverlayPolicy"

    .line 29
    .line 30
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string p2, "android"

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const-string v0, "/data/resource-cache/android-SemWT_G_MonetPalette"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_1
    sget-object p2, Landroid/content/om/WallpaperThemeConstants;->colorThemingDisableList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance p2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/MetaDataManager;->getPackageList()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroid/content/om/wallpapertheme/MetaDataManager$Package;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/content/om/wallpapertheme/MetaDataManager$Package;->getPackageName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    return v2

    .line 113
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_5

    .line 118
    .line 119
    return v2

    .line 120
    :cond_5
    return v1
.end method

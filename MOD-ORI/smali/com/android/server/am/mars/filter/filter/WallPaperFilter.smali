.class public final Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mWallpaperPackageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/16 p1, 0xf

    .line 14
    .line 15
    if-ne p3, p1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    monitor-exit p1

    .line 35
    const/16 p0, 0xa

    .line 36
    .line 37
    return p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    monitor-exit p1

    .line 41
    :cond_3
    return v0

    .line 42
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_4
    :goto_1
    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->setWallPaperInfoFromWM(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x6

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->setWallPaperInfoFromWM(I)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x11

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->setWallPaperInfoFromWM(I)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x12

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->setWallPaperInfoFromWM(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onWallPaperPkgBound(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    const-string p0, "FILTER 10"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final setWallPaperInfoFromWM(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "ignore in case of "

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-string p0, "FILTER 10"

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    monitor-exit p1

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    throw p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p0, "MARs:WallPaperFilter"

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " image wallpaper"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_0
    const-string p1, "MARs:WallPaperFilter"

    .line 68
    .line 69
    const-string/jumbo v0, "getWallpaperPackage() exception "

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

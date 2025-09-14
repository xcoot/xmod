.class public final Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

.field public final wallpaperHistoryDataList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    .locals 2

    .line 2
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperData;

    invoke-direct {v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperData;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    const-string v2, "\n\thistory - [time]::[callingPkg]::[type]::[contents]"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    .line 30
    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v6, "\n\t"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

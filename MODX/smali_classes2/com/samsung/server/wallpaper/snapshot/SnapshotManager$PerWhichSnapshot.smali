.class public final Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public connectedSnapshotForLiveWallpaper:I

.field public settings:Ljava/util/Map;

.field public wallpaper:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final clone()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;
    .locals 5

    .line 2
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 4
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 7
    iget-object v4, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    iput p0, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->clone()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    move-result-object p0

    return-object p0
.end method

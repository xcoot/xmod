.class public final Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isFromPairedService:Z

.field public final key:I

.field public final perWhichSnapshots:Ljava/util/Map;

.field public source:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(II)V
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
    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    .line 12
    .line 13
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getConnectedSnapshotForLiveWallpaper(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, -0x1

    .line 21
    return p0
.end method

.method public final getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getWhiches()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 45
    .line 46
    check-cast p0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    return-object v0
.end method

.method public final hasWallpaperData()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasWallpaperData(I)Z
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasWallpaperData: which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnapshotManager"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    if-eqz p0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 6
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "hasWallpaperData: ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] NOT exists."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setConnectedSnapshotForLiveWallpaper(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->connectedSnapshotForLiveWallpaper:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setLockscreenVisibility(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "lockscreen_wallpaper_sub"

    .line 30
    .line 31
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 36
    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "lockscreen_wallpaper"

    .line 42
    .line 43
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSettingsData(ILjava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object p2, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 38
    .line 39
    return-void
.end method

.method public final setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object p2, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 38
    .line 39
    return-void
.end method

.class public final Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public key:I

.field public final mSnapshotHistories:Ljava/util/ArrayList;

.field public final mSnapshots:Ljava/util/LinkedList;

.field public final userId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    .line 6
    .line 7
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final add(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V
    .locals 3

    .line 1
    const-string v0, "SnapshotManager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "add: wallpaper is null."

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x64

    .line 18
    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    .line 21
    const-string p0, "add: Maximum backup data capacity is exceeded."

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget v1, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, "add: Backup wallpaper for key ["

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, "] is already exist. Drop this one."

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getAll()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 30
    .line 31
    iget v2, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 32
    .line 33
    if-ne v2, p1, :cond_1

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getIndex(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 29
    .line 30
    iget v2, v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 31
    .line 32
    if-ne v2, p1, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_1
    return v1
.end method

.method public final remove(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget-object v1, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast v1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, -0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v0, "remove: SnapshotData for key "

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " is not exist."

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "SnapshotManager"

    .line 41
    .line 42
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

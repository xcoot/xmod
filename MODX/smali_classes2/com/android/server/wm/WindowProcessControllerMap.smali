.class public final Lcom/android/server/wm/WindowProcessControllerMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPidMap:Landroid/util/SparseArray;

.field public final mUidMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getProcess(I)Lcom/android/server/wm/WindowProcessController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/WindowProcessController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final put(ILcom/android/server/wm/WindowProcessController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget p1, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 30
    .line 31
    .line 32
    check-cast v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/util/ArraySet;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

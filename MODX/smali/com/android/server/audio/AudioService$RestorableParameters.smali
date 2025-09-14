.class public final Lcom/android/server/audio/AudioService$RestorableParameters;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMap:Ljava/util/Map;


# virtual methods
.method public final restoreAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters;->mMap:Ljava/util/Map;

    .line 6
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object p0

    .line 12
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;

    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;-><init>(I)V

    .line 18
    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

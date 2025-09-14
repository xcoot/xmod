.class public final Lcom/android/server/credentials/metrics/shared/ResponseCollective;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEntryCounts:Ljava/util/Map;

.field public final mResponseCounts:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 17
    move-object p1, v0

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 20
    if-nez p2, :cond_1

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 24
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 33
    :goto_1
    iput-object p1, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public static combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    move-object v3, p0

    .line 25
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 27
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result v2

    .line 37
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v2

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v2

    .line 52
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Integer;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getUniqueEntries()[I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getUniqueEntryCounts()[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 17
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getUniqueResponseCounts()[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 17
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getUniqueResponseStrings()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 10
    move-result v0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 13
    iget-object p0, p0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    return-object v0
.end method

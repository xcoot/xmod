.class public final Lcom/android/server/audio/MultiFocusStack;
.super Landroid/util/SparseArray;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;
    .locals 5

    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 11
    invoke-virtual {v1}, Ljava/util/Stack;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, p2}, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    .line 12
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v2
.end method

.method public final getFocusRequester(IZ)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 4
    invoke-virtual {v2}, Ljava/util/Stack;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {v4}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/Stack;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getStackForDevice(I)Ljava/util/Stack;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Stack;

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/Stack;

    .line 11
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 17
    :cond_0
    return-object v0
.end method

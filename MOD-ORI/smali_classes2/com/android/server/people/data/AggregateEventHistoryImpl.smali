.class public final Lcom/android/server/people/data/AggregateEventHistoryImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/people/data/EventHistory;


# instance fields
.field public final mEventHistoryList:Ljava/util/List;


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
    iput-object v0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getEventIndex(I)Lcom/android/server/people/data/EventIndex;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/EventHistory;

    .line 2
    invoke-interface {v0, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    sget-object p0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    return-object p0
.end method

.method public final getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;
    .locals 3

    .line 5
    iget-object p0, p0, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/EventHistory;

    .line 6
    invoke-interface {v1, p1}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/people/data/EventIndex;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {v0, v1}, Lcom/android/server/people/data/EventIndex;->combine(Lcom/android/server/people/data/EventIndex;Lcom/android/server/people/data/EventIndex;)Lcom/android/server/people/data/EventIndex;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    sget-object v0, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    :goto_1
    return-object v0
.end method

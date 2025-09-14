.class public final Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChain:Ljava/util/ArrayList;

.field public mExemptPkgs:Ljava/util/Set;

.field public mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

.field public mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;


# virtual methods
.method public final getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 21
    .line 22
    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 23
    .line 24
    and-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    return-object p0
.end method

.method public final isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 34
    .line 35
    and-int/2addr p0, v1

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1
.end method

.method public final isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 15
    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 27
    .line 28
    if-ne p1, p4, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 31
    .line 32
    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 33
    .line 34
    iget p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 35
    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 39
    .line 40
    iget p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 41
    .line 42
    if-ne p1, p2, :cond_0

    .line 43
    .line 44
    iget-wide p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 45
    .line 46
    iget-wide p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 47
    .line 48
    cmp-long p0, p0, p2

    .line 49
    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

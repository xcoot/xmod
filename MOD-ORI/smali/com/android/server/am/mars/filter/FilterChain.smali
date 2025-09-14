.class public final Lcom/android/server/am/mars/filter/FilterChain;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFilter:Lcom/android/server/am/mars/filter/IFilter;

.field public nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;


# virtual methods
.method public final filter(IIILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/IFilter;->filter(IIILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterChain;->filter(IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

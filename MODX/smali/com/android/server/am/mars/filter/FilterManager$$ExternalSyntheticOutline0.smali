.class public abstract synthetic Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 15
    invoke-virtual {p0, p4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    .line 22
    return-void
.end method

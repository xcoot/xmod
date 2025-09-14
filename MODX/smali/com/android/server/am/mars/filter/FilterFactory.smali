.class public final Lcom/android/server/am/mars/filter/FilterFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public filterHashMap:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getFilter(I)Lcom/android/server/am/mars/filter/IFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/am/mars/filter/IFilter;

    .line 13
    return-object p0
.end method

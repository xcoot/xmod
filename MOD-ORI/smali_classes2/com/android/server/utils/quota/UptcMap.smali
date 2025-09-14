.class public final Lcom/android/server/utils/quota/UptcMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mData:Landroid/util/SparseArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    move v5, v1

    .line 24
    :goto_1
    if-ge v5, v4, :cond_2

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 27
    .line 28
    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v7, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 35
    .line 36
    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Landroid/util/ArrayMap;

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    move v7, v1

    .line 50
    :goto_2
    move v8, v1

    .line 51
    :goto_3
    if-ge v8, v7, :cond_1

    .line 52
    .line 53
    iget-object v9, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 54
    .line 55
    invoke-virtual {v9, v2, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, v3, v6, v9}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-interface {p1, v3, v10, v6, v9}, Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;->accept(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v8, v8, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method

.method public final get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

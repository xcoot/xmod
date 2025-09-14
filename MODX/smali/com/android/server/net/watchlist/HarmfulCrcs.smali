.class public final Lcom/android/server/net/watchlist/HarmfulCrcs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCrcSet:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_2

    .line 19
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, [B

    .line 25
    array-length v5, v4

    .line 26
    const/4 v6, 0x4

    .line 27
    if-gt v5, v6, :cond_1

    .line 29
    array-length v5, v4

    .line 30
    move v6, v2

    .line 31
    move v7, v6

    .line 32
    :goto_1
    if-ge v6, v5, :cond_0

    .line 34
    aget-byte v8, v4, v6

    .line 36
    shl-int/lit8 v7, v7, 0x8

    .line 38
    and-int/lit16 v8, v8, 0xff

    .line 40
    or-int/2addr v7, v8

    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/server/net/watchlist/HarmfulCrcs;->mCrcSet:Ljava/util/Set;

    .line 60
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/net/watchlist/HarmfulCrcs;->mCrcSet:Ljava/util/Set;

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p0, ""

    .line 33
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    return-void
.end method

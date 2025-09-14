.class public final Lcom/android/server/NandswapManager$ProcessingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final countList:Ljava/util/ArrayList;

.field public objReads:I

.field public objWrites:I

.field public reads:I

.field public final sizeList:Ljava/util/ArrayList;

.field public writes:I


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
    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final calcAverage(I)D
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-double v3, p1

    .line 13
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move-wide v5, v1

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-double v7, p1

    .line 37
    add-double/2addr v5, v7

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x2

    .line 40
    if-ne p1, v0, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-double v3, p1

    .line 49
    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-wide v5, v1

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    int-to-double v7, p1

    .line 73
    add-double/2addr v5, v7

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-wide v3, v1

    .line 76
    move-wide v5, v3

    .line 77
    :cond_2
    cmpl-double p0, v3, v1

    .line 78
    .line 79
    if-nez p0, :cond_3

    .line 80
    .line 81
    return-wide v1

    .line 82
    :cond_3
    div-double/2addr v5, v3

    .line 83
    return-wide v5
.end method

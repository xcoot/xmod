.class public final Lcom/android/server/content/SyncManager$PrintTable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCols:I

.field public final mTable:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 13
    .line 14
    return-void
.end method

.method public static printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    aget-object v4, p2, v2

    .line 9
    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    const-string v3, "  "

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final varargs set(II[Ljava/lang/Object;)V
    .locals 6

    .line 1
    array-length v0, p3

    .line 2
    add-int/2addr v0, p2

    .line 3
    iget v1, p0, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    const-string v2, ""

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-gt v0, p1, :cond_1

    .line 17
    .line 18
    new-array v4, v1, [Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :goto_1
    if-ge v3, v1, :cond_0

    .line 26
    .line 27
    aput-object v2, v4, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, [Ljava/lang/String;

    .line 42
    .line 43
    :goto_2
    array-length p1, p3

    .line 44
    if-ge v3, p1, :cond_3

    .line 45
    .line 46
    aget-object p1, p3, v3

    .line 47
    .line 48
    add-int v0, p2, v3

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    move-object p1, v2

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_3
    aput-object p1, p0, v0

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    return-void

    .line 64
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 65
    .line 66
    const-string p1, "Table only has "

    .line 67
    .line 68
    const-string v0, " columns. can\'t set "

    .line 69
    .line 70
    invoke-static {v1, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    array-length p3, p3

    .line 75
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p3, " at column "

    .line 79
    .line 80
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

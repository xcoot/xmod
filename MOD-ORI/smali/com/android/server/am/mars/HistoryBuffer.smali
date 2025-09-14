.class public final Lcom/android/server/am/mars/HistoryBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final buffer:[Ljava/lang/String;

.field public pointer:I

.field public size:I

.field public final totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    .line 10
    .line 11
    :try_start_0
    const-string/jumbo v1, "dalvik.vm.heapsize"

    .line 12
    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string/jumbo v2, "m"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    const/4 v3, 0x1

    .line 33
    if-lt v2, v3, :cond_0

    .line 34
    .line 35
    aget-object v1, v1, v0

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    const/16 v1, 0x80

    .line 47
    .line 48
    if-lt v0, v1, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x1388

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v0, 0x3e8

    .line 54
    .line 55
    :goto_1
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    .line 56
    .line 57
    new-array v0, v0, [Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final declared-synchronized getBuffer()[Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    iget v4, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 21
    .line 22
    if-ge v1, v4, :cond_1

    .line 23
    .line 24
    add-int/lit8 v4, v3, 0x1

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    .line 27
    .line 28
    aget-object v5, v5, v1

    .line 29
    .line 30
    aput-object v5, v0, v3

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    .line 37
    .line 38
    if-ge v2, v1, :cond_2

    .line 39
    .line 40
    add-int/lit8 v1, v3, 0x1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object v4, v4, v2

    .line 45
    .line 46
    aput-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    move v3, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final declared-synchronized put(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->buffer:[Ljava/lang/String;

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    .line 5
    .line 6
    aput-object p1, v0, v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iget p1, p0, Lcom/android/server/am/mars/HistoryBuffer;->totalSize:I

    .line 11
    .line 12
    rem-int/2addr v1, p1

    .line 13
    iput v1, p0, Lcom/android/server/am/mars/HistoryBuffer;->pointer:I

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 16
    .line 17
    if-ge v0, p1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/am/mars/HistoryBuffer;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

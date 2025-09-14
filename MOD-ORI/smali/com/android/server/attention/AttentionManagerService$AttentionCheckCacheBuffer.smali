.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

.field public mSize:I

.field public mStartIndex:I


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "attention check cache:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    rem-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 24
    .line 25
    aget-object v1, v2, v1

    .line 26
    .line 27
    :goto_1
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v3, "timestamp="

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-wide v3, v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v3, "result="

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v1, v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 73
    .line 74
    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mQueue:[Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mStartIndex:I

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->mSize:I

    .line 13
    .line 14
    return-void
.end method

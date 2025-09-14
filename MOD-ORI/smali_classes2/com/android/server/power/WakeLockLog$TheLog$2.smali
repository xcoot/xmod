.class public final Lcom/android/server/power/WakeLockLog$TheLog$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final mChangeValue:J

.field public mCurrent:I

.field public mCurrentTimeReference:J

.field public final synthetic this$0:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final synthetic val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 7
    .line 8
    iget p2, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 9
    .line 10
    iput p2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 11
    .line 12
    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    .line 15
    .line 16
    iget-wide p1, p1, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final checkState()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 4
    .line 5
    iget-wide v2, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Buffer modified, old change: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mChangeValue:J

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", new change: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 9
    .line 10
    if-eq v0, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->checkState()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->val$tempEntry:Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 25
    .line 26
    iget-wide v3, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 34
    .line 35
    add-int/2addr v2, v1

    .line 36
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->this$0:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 39
    .line 40
    array-length v1, v1

    .line 41
    rem-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 45
    .line 46
    iput-wide v1, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrentTimeReference:J

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 50
    .line 51
    const-string v0, "No more entries left."

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$2;->mCurrent:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

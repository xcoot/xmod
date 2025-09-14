.class final Lcom/android/server/job/controllers/QuotaController$TimingSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/controllers/QuotaController$TimedEvent;


# instance fields
.field public final bgJobCount:I

.field public final endTimeElapsed:J

.field public final mHashCode:I

.field public final startTimeElapsed:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 5
    .line 6
    iput-wide p4, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 9
    .line 10
    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    mul-int/lit8 p2, p2, 0x1f

    .line 15
    .line 16
    invoke-static {p4, p5}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$smhashLong(J)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    add-int/2addr p3, p2

    .line 21
    mul-int/lit8 p3, p3, 0x1f

    .line 22
    .line 23
    add-int/2addr p3, p1

    .line 24
    iput p3, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4
    .line 5
    .line 6
    const-string v2, " -> "

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 12
    .line 13
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 14
    .line 15
    .line 16
    const-string v4, " ("

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sub-long/2addr v2, v0

    .line 22
    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 23
    .line 24
    .line 25
    const-string v0, "), "

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 33
    .line 34
    .line 35
    const-string p0, " bg jobs."

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 7
    .line 8
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 11
    .line 12
    cmp-long v0, v4, v2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 17
    .line 18
    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 25
    .line 26
    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 27
    .line 28
    if-ne p0, p1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    return v1
.end method

.method public final getEndTimeElapsed()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->mHashCode:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TimingSession{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "->"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    .line 29
    .line 30
    const-string/jumbo v1, "}"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

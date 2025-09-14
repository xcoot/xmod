.class public Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public binderClass:Ljava/lang/Class;

.field public callCount:J

.field public methodName:Ljava/lang/String;

.field public recordedCallCount:J

.field public recordedCpuTimeMicros:J

.field public transactionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ensureMethodName(Lcom/android/internal/os/BinderTransactionNameResolver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 22
    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BinderCallStats{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " transaction="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " callCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->callCount:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " recordedCallCount="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " recorderCpuTimeMicros="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    .line 49
    .line 50
    const-string/jumbo p0, "}"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

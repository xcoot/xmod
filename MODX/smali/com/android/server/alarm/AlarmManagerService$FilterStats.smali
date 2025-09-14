.class public final Lcom/android/server/alarm/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public aggregateTime:J

.field public count:I

.field public lastTime:J

.field public final mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

.field public final mTag:Ljava/lang/String;

.field public nesting:I

.field public numWakeup:I

.field public startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 6
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10900000001L

    .line 10
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 15
    const-wide v0, 0x10300000002L

    .line 20
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    .line 22
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 25
    const-wide v0, 0x10300000003L

    .line 30
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 32
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 35
    const-wide v0, 0x10500000004L

    .line 40
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    const-wide v0, 0x10500000005L

    .line 50
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 55
    const-wide v0, 0x10300000006L

    .line 60
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    .line 62
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 65
    const-wide v0, 0x10500000007L

    .line 70
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 72
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 78
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "FilterStats{tag="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", lastTime="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", aggregateTime="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", count="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", numWakeup="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", startTime="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", nesting="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    .line 70
    const-string/jumbo v1, "}"

    .line 73
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

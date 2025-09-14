.class public final Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;
.super Lcom/android/server/power/PowerHistorian$Record;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mElapsedTimeMillis:J

.field public final mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$WakeLock;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/PowerHistorian$Record;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/power/PowerHistorian$Record;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mElapsedTimeMillis:J

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, " %-18s"

    .line 24
    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$WakeLockReleaseRecord;->mWakeLock:Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

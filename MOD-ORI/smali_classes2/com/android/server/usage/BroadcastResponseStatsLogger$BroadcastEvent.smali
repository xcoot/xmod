.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;


# instance fields
.field public idForResponseEvent:J

.field public sourceUid:I

.field public targetPackage:Ljava/lang/String;

.field public targetUidProcessState:I

.field public targetUserId:I

.field public timestampMs:J


# virtual methods
.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->sourceUid:I

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetPackage:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUserId:I

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->idForResponseEvent:J

    .line 8
    .line 9
    iget-wide v6, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->timestampMs:J

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;->targetUidProcessState:I

    .line 12
    .line 13
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    move-object v1, v2

    .line 34
    move-object v2, v0

    .line 35
    move-object v4, v6

    .line 36
    move-object v6, p0

    .line 37
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v0, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    .line 42
    .line 43
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

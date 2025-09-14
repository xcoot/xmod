.class public final Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;


# instance fields
.field public packageName:Ljava/lang/String;

.field public timestampMs:J

.field public type:I

.field public userId:I


# virtual methods
.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->type:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->userId:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;->timestampMs:J

    .line 8
    .line 9
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(IIJLjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

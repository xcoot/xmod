.class public final Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field public isExpanded:Z

.field public isNoisy:Z

.field public isVisible:Z

.field public naturalImportance:I

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public requestedImportance:I


# virtual methods
.method public final onVisibilityChanged(Z)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 14
    .line 15
    cmp-long v5, v5, v3

    .line 16
    .line 17
    if-gez v5, :cond_0

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 20
    .line 21
    const-wide/16 v7, 0x1

    .line 22
    .line 23
    add-long/2addr v5, v7

    .line 24
    iput-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 27
    .line 28
    :cond_0
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 29
    .line 30
    cmp-long v3, v5, v3

    .line 31
    .line 32
    if-gez v3, :cond_2

    .line 33
    .line 34
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 35
    .line 36
    sub-long/2addr v0, v3

    .line 37
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 41
    .line 42
    cmp-long v3, v5, v3

    .line 43
    .line 44
    if-ltz v3, :cond_2

    .line 45
    .line 46
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 47
    .line 48
    sub-long/2addr v0, v5

    .line 49
    add-long/2addr v0, v3

    .line 50
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 51
    .line 52
    const-wide/16 v0, -0x1

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 55
    .line 56
    :cond_2
    :goto_0
    if-eq v2, p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SingleNotificationStats{posttimeElapsedMs="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", posttimeToFirstClickMs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", posttimeToDismissMs="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", airtimeCount="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", airtimeMs="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", currentAirtimeStartElapsedMs="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", airtimeExpandedMs="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", posttimeToFirstVisibleExpansionMs="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", currentAirtimeExpandedStartElapsedMs="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", requestedImportance="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", naturalImportance="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", isNoisy="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 p0, 0x7d

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method

.method public final updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 4
    .line 5
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 12
    .line 13
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 16
    .line 17
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 20
    .line 21
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 28
    .line 29
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 32
    .line 33
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 36
    .line 37
    return-void
.end method

.method public final updateVisiblyExpandedStats()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 16
    .line 17
    cmp-long v2, v5, v3

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 22
    .line 23
    :cond_0
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 24
    .line 25
    cmp-long v2, v5, v3

    .line 26
    .line 27
    if-gez v2, :cond_2

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 30
    .line 31
    sub-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 36
    .line 37
    cmp-long v2, v5, v3

    .line 38
    .line 39
    if-ltz v2, :cond_2

    .line 40
    .line 41
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 42
    .line 43
    sub-long/2addr v0, v5

    .line 44
    add-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 46
    .line 47
    const-wide/16 v0, -0x1

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

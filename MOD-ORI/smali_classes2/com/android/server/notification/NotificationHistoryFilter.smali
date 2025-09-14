.class public final Lcom/android/server/notification/NotificationHistoryFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mNotificationCount:I

.field public mPackage:Ljava/lang/String;

.field public mSbnKey:Ljava/lang/String;


# virtual methods
.method public final matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final matchesPackageAndSbnKeyFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mSbnKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.class public Lcom/android/server/notification/ImportanceExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;


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
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-le v0, v2, :cond_2

    .line 43
    .line 44
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 45
    .line 46
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p0, 0x1

    .line 70
    :goto_0
    if-nez p0, :cond_4

    .line 71
    .line 72
    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    if-le p0, v0, :cond_4

    .line 76
    .line 77
    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 78
    .line 79
    :cond_4
    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method

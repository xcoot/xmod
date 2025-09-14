.class public Lcom/android/server/notification/CriticalNotificationExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mSupportsCriticalNotifications:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.hardware.type.automotive"

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    .line 13
    .line 14
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/notification/CriticalNotificationExtractor;->mSupportsCriticalNotifications:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    const-string p0, "car_emergency"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string p0, "car_warning"

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p0, 0x2

    .line 41
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 42
    .line 43
    :goto_0
    return-object v0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method

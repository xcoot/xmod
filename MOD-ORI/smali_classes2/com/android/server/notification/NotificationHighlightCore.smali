.class public final Lcom/android/server/notification/NotificationHighlightCore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;


# instance fields
.field public final AUTO_GROUPING_URI:Landroid/net/Uri;

.field public final BG_ACTIVITIES_URI:Landroid/net/Uri;

.field public final MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

.field public final PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

.field public final PROMOTION_URI:Landroid/net/Uri;

.field public mBgActivitiesEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mConversationList:Ljava/util/HashSet;

.field public mHandler:Landroid/os/Handler;

.field public mMinimizedNotiEnabled:Z

.field public mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

.field public mPrivacyConverstionEnabled:Z

.field public mPromotionsEnabled:Z

.field public mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

    .line 38
    .line 39
    const-string/jumbo v0, "noti_intelligence_priority_conversation"

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    .line 47
    .line 48
    const-string/jumbo v0, "noti_auto_more_grouping"

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->AUTO_GROUPING_URI:Landroid/net/Uri;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    .line 59
    .line 60
    const-string/jumbo v1, "noti_filter_promotion_notification"

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->PROMOTION_URI:Landroid/net/Uri;

    .line 68
    .line 69
    const-string/jumbo v1, "noti_filter_background_notification"

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    .line 77
    .line 78
    const-string/jumbo v1, "noti_filter_low_importance_notification"

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    .line 92
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    return-void
.end method

.method public static needToCheckNonImportantNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "NotificationHighlightCore"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "isNonImportantNotification skip isGroupSummary"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string p0, "isNonImportantNotification skip isImportantConversation"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v0, "android.ongoingActivityNoti.style"

    .line 45
    .line 46
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const-string p0, "isNonImportantNotification : OngoingActivityNotiStyle filter"

    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    const/4 p0, 0x1

    .line 59
    return p0
.end method


# virtual methods
.method public final setConversationList(Ljava/util/List;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

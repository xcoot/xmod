.class public interface abstract Lcom/android/server/notification/NotificationChannelLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getLoggingImportance(Landroid/app/NotificationChannel;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x5

    .line 18
    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    sget-object p5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 4
    .line 5
    :goto_0
    move-object v1, p5

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-object p5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 11
    .line 12
    .line 13
    move-result p5

    .line 14
    invoke-static {p1, p5}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    move-object v0, p0

    .line 19
    check-cast v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    .line 20
    .line 21
    move-object v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move v5, p4

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

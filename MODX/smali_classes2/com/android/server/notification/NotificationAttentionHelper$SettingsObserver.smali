.class public final Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "led_indicator_missed_event"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string/jumbo v0, "notification_cooldown_enabled"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "notification_cooldown_all"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "notification_cooldown_vibrate_unlocked"

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "led_indicator_missed_event"

    .line 18
    .line 19
    const/4 v0, -0x2

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 31
    .line 32
    if-eq p1, v1, :cond_1

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {}, Lcom/android/server/notification/Flags;->politeNotifications()Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.class public final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final ALERTONCALL_MODE_URI:Landroid/net/Uri;

.field public final DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

.field public final FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

.field public final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

.field public final LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

.field public final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field public final NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

.field public final NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

.field public final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field public final NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

.field public final NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

.field public final OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

.field public final SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "notification_badging"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "notification_bubbles"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    .line 23
    .line 24
    const-string/jumbo p1, "max_notification_enqueue_rate"

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo p1, "notification_history_enabled"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    .line 41
    .line 42
    const-string/jumbo p1, "qs_media_controls"

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

    .line 50
    .line 51
    const-string p1, "lock_screen_allow_private_notifications"

    .line 52
    .line 53
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

    .line 58
    .line 59
    const-string p1, "lock_screen_show_notifications"

    .line 60
    .line 61
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

    .line 66
    .line 67
    const-string/jumbo p1, "notification_vibration_sep_index"

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

    .line 75
    .line 76
    const-string p1, "disable_hun_for_callui"

    .line 77
    .line 78
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

    .line 83
    .line 84
    const-string p1, "alertoncall_mode"

    .line 85
    .line 86
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ALERTONCALL_MODE_URI:Landroid/net/Uri;

    .line 91
    .line 92
    const-string p1, "floating_noti_package_list"

    .line 93
    .line 94
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

    .line 99
    .line 100
    const-string/jumbo p1, "show_notification_snooze"

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

    .line 108
    .line 109
    const-string/jumbo p1, "noti_filter_old_notification"

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update(ILandroid/net/Uri;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    const-string/jumbo p2, "notification_history_enabled"

    const/4 v1, 0x1

    .line 77
    invoke-static {v0, p2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$Archive;->updateHistoryEnabled(IZ)V

    :cond_2
    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v2, "max_notification_enqueue_rate"

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    :cond_3
    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    .line 6
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 8
    const-string/jumbo v4, "notification_bubbles"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v1, v4, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    goto :goto_0

    .line 10
    :cond_5
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v3, v4, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    .line 11
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 12
    :cond_7
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 13
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(ILandroid/net/Uri;)V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 14
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 15
    :cond_9
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    :cond_a
    if-eqz p1, :cond_b

    .line 16
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 17
    :cond_b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 18
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_c

    .line 19
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 20
    :cond_c
    sget-boolean v5, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    const-string v6, "lock_screen_allow_private_notifications"

    if-eqz v5, :cond_e

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 22
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 23
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 25
    iget v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    if-eq v7, v5, :cond_d

    move v7, v1

    goto :goto_2

    :cond_d
    move v7, v3

    .line 26
    :goto_2
    iput v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    goto :goto_3

    :cond_e
    move v7, v3

    :goto_3
    move v5, v3

    .line 27
    :goto_4
    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_11

    .line 28
    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 29
    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 30
    iget-object v10, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6, v1, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_f

    move v10, v1

    goto :goto_5

    :cond_f
    move v10, v3

    .line 31
    :goto_5
    iget-object v11, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v9, v10, :cond_10

    move v8, v1

    goto :goto_6

    :cond_10
    move v8, v3

    :goto_6
    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    if-eqz v7, :cond_12

    .line 32
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_12
    if-eqz p1, :cond_13

    .line 33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 34
    :cond_13
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 35
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_14

    .line 36
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_14
    move v5, v3

    move v6, v5

    .line 37
    :goto_7
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_17

    .line 38
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 39
    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 40
    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    invoke-static {v9, v10, v1, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_15

    move v9, v1

    goto :goto_8

    :cond_15
    move v9, v3

    .line 41
    :goto_8
    iget-object v10, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v8, v9, :cond_16

    move v7, v1

    goto :goto_9

    :cond_16
    move v7, v3

    :goto_9
    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_17
    if-eqz v6, :cond_18

    .line 42
    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    .line 43
    :cond_18
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    if-eqz v4, :cond_1a

    if-eqz p1, :cond_19

    .line 44
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 45
    :cond_19
    :try_start_0
    const-string/jumbo v4, "notification_vibration_sep_index"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 46
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 47
    iput v4, v5, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v4

    .line 48
    const-string v5, "NotificationService"

    const-string v6, "Failed to find VibrationIndex Settings"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_a
    if-eqz p1, :cond_1b

    .line 49
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 50
    :cond_1b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "disable_hun_for_callui"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1c

    move v5, v1

    goto :goto_b

    :cond_1c
    move v5, v3

    :goto_b
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    :cond_1d
    if-eqz p1, :cond_1e

    .line 51
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ALERTONCALL_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 52
    :cond_1e
    const-string v4, "alertoncall_mode"

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_1f

    move v4, v1

    goto :goto_c

    :cond_1f
    move v4, v3

    .line 53
    :goto_c
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 54
    iput-boolean v4, v5, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    .line 55
    :cond_20
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v4, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    if-eqz v4, :cond_24

    if-eqz p1, :cond_21

    .line 56
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 57
    :cond_21
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "floating_noti_package_list"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    if-eqz v4, :cond_23

    .line 60
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_d
    if-ge v7, v6, :cond_23

    aget-object v8, v4, v7

    .line 61
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 62
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 63
    :cond_23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_24

    .line 64
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    :cond_24
    if-eqz p1, :cond_25

    .line 65
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 66
    :cond_25
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "noti_filter_old_notification"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_26

    goto :goto_e

    :cond_26
    move v1, v3

    :goto_e
    iput-boolean v1, v4, Lcom/android/server/notification/NotificationManagerService;->mOldNotiEnabled:Z

    .line 67
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 68
    const-string/jumbo p1, "show_notification_snooze"

    invoke-static {v0, p1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_f

    .line 69
    :cond_28
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/SnoozeHelper;->repostAll(Landroid/util/IntArray;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 73
    monitor-exit p1

    goto :goto_f

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_29
    :goto_f
    return-void
.end method

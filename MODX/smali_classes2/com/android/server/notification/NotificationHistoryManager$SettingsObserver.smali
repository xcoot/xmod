.class public final Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryManager;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "notification_history_enabled"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->update(ILandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update(ILandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->NOTIFICATION_HISTORY_URI:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_5

    .line 18
    .line 19
    :cond_0
    const-string/jumbo p2, "notification_history_enabled"

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, p2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    move p2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    if-nez p2, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(ILcom/android/server/notification/NotificationHistoryDatabase;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    xor-int/2addr p2, v1

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_2
    monitor-exit v0

    .line 66
    :cond_5
    return-void

    .line 67
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

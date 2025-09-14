.class public final Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    const-string p1, "android.intent.extra.user_handle"

    .line 14
    .line 15
    const/16 v0, -0x2710

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    const-string v3, "LocaleManagerBkpHelper"

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string v0, "Failed to commit data!"

    .line 70
    .line 71
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const-string v0, "The profile is not existed in the persisted info"

    .line 76
    .line 77
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 81
    .line 82
    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mremoveArchivedPackagesForUser(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    .line 83
    .line 84
    .line 85
    monitor-exit p2

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    const-string p1, "LocaleManagerBkpHelper"

    .line 92
    .line 93
    const-string p2, "Exception in user monitor."

    .line 94
    .line 95
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    return-void
.end method

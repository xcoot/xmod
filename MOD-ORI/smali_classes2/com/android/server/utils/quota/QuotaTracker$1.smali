.class public final Lcom/android/server/utils/quota/QuotaTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

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
    .locals 2

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    const-string p1, "android.intent.extra.REPLACING"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    .line 21
    .line 22
    const-string p0, "QuotaTracker"

    .line 23
    .line 24
    const-string p1, "Received intent with null action"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string p1, "android.intent.extra.UID"

    .line 48
    .line 49
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 60
    .line 61
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const/4 p2, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    monitor-exit v1

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_4
    const-string p1, "android.intent.extra.user_handle"

    .line 86
    .line 87
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter p2

    .line 96
    :try_start_1
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmQueue:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmQueue;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 106
    .line 107
    .line 108
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 122
    .line 123
    .line 124
    monitor-exit p2

    .line 125
    :goto_1
    return-void

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    throw p0

    .line 129
    :cond_5
    :goto_2
    return-void
.end method

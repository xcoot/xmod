.class public final Lcom/android/server/AppStateTrackerImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "android.intent.extra.user_handle"

    .line 4
    const/4 v1, -0x1

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v4

    .line 21
    sparse-switch v4, :sswitch_data_0

    .line 24
    :goto_0
    move v2, v1

    .line 25
    goto :goto_1

    .line 26
    :sswitch_0
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x2

    .line 36
    goto :goto_1

    .line 37
    :sswitch_1
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v2, p1

    .line 47
    goto :goto_1

    .line 48
    :sswitch_2
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v2, v3

    .line 58
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 61
    goto :goto_3

    .line 62
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 64
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    const-string v2, "android.intent.extra.UID"

    .line 80
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    move-result p2

    .line 84
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 86
    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 91
    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 93
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 98
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 116
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 118
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 123
    monitor-exit v1

    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 130
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 132
    monitor-enter v1

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 135
    const-string/jumbo v2, "plugged"

    .line 138
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_3

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move p1, v3

    .line 146
    :goto_2
    iput-boolean p1, v0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 154
    goto :goto_3

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    throw p0

    .line 158
    :pswitch_2
    if-lez v0, :cond_4

    .line 160
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 162
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 164
    const/16 p1, 0x8

    .line 166
    invoke-virtual {p0, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_4
    :goto_3
    return-void

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_2
        -0x5bb23923 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

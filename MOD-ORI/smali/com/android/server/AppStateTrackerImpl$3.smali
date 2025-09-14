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
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "android.intent.extra.user_handle"

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sparse-switch v4, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    :goto_0
    move v2, v1

    .line 25
    goto :goto_1

    .line 26
    :sswitch_0
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
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

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
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

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v2, v3

    .line 58
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 63
    .line 64
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v2, "android.intent.extra.UID"

    .line 79
    .line 80
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 92
    .line 93
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 119
    .line 120
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 121
    .line 122
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

    .line 129
    .line 130
    iget-object v1, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v1

    .line 133
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 134
    .line 135
    const-string/jumbo v2, "plugged"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move p1, v3

    .line 146
    :goto_2
    iput-boolean p1, v0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    .line 147
    .line 148
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 152
    .line 153
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

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$3;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 163
    .line 164
    const/16 p1, 0x8

    .line 165
    .line 166
    invoke-virtual {p0, p1, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    .line 172
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

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

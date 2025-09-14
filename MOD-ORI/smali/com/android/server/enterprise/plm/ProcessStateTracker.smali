.class public final Lcom/android/server/enterprise/plm/ProcessStateTracker;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/plm/IStateDelegate;


# instance fields
.field public final mAdapters:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z

.field public final mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/plm/SystemStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    check-cast p3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 37
    .line 38
    iput-object p0, p2, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;

    .line 39
    .line 40
    iget-object p3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 41
    .line 42
    iget-object v0, p2, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast p3, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const-string v0, "Invalid message "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "handleMessage : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-string v3, "ProcessStateTracker"

    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_0
    const-string/jumbo v0, "onLockUpdate"

    .line 54
    .line 55
    .line 56
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_2
    const-string/jumbo v0, "onEdmUpdate"

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const-string/jumbo v0, "onBootUpdate"

    .line 115
    .line 116
    .line 117
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 123
    .line 124
    if-nez p1, :cond_5

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    const-string/jumbo v0, "onUserUpdate"

    .line 144
    .line 145
    .line 146
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 152
    .line 153
    if-nez p1, :cond_7

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onPackageUpdate(Landroid/os/Message;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLicenseUpdate(Landroid/os/Message;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStop()V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStart(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :goto_1
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isKlmActivated()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SystemStateTracker"

    .line 7
    .line 8
    const-string/jumbo v1, "isKlmActive : "

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string/jumbo v3, "klm_activated"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-lez p0, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    return v2
.end method

.method public final notifyUpdateToAdapters(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notify update for "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "all"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, p1

    .line 19
    :goto_0
    const-string v2, "ProcessStateTracker"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 25
    .line 26
    check-cast p0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v3, v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    :cond_3
    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v3, "notify update to "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x5

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    return-void
.end method

.method public final onLicenseUpdate(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ProcessStateTracker"

    .line 7
    .line 8
    const-string/jumbo v1, "onLicenseUpdate"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v3, "license "

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-string p1, "activated"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo p1, "deactivated"

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " on "

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const-string p1, ""

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onPackageUpdate(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "ProcessStateTracker"

    .line 7
    .line 8
    const-string/jumbo v1, "onPackageUpdate"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ":"

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    const-string v3, "Utils"

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final onTrackerStart(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/enterprise/plm/StartReason;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v1, "onTrackerStart : "

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "ProcessStateTracker"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 36
    .line 37
    if-nez v0, :cond_b

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "enterprise_license_policy"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    .line 56
    .line 57
    .line 58
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission$1()V

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    .line 64
    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 81
    .line 82
    :cond_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 83
    .line 84
    check-cast v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    new-instance v8, Landroid/content/IntentFilter;

    .line 90
    .line 91
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 95
    .line 96
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v0, "package"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    .line 106
    .line 107
    check-cast v0, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_3

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-virtual {v8, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    new-instance v6, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-direct {v6, v3, v0}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 141
    .line 142
    .line 143
    iput-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 144
    .line 145
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    sget-object v7, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const/4 v10, 0x0

    .line 151
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 155
    .line 156
    if-eqz v0, :cond_5

    .line 157
    .line 158
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    .line 162
    .line 163
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 164
    .line 165
    :cond_5
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 166
    .line 167
    check-cast v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    .line 171
    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    .line 173
    .line 174
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v5, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 178
    .line 179
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v5, "android.intent.action.USER_UNLOCKED"

    .line 193
    .line 194
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-nez v5, :cond_6

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    new-instance v5, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 205
    .line 206
    const/4 v6, 0x2

    .line 207
    invoke-direct {v5, v3, v6}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 208
    .line 209
    .line 210
    iput-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 211
    .line 212
    iget-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    const/4 v7, 0x2

    .line 215
    invoke-virtual {v6, v5, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    :goto_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 219
    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    .line 226
    .line 227
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 228
    .line 229
    :cond_7
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 230
    .line 231
    check-cast v0, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    .line 235
    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    .line 237
    .line 238
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-nez v4, :cond_8

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_8
    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    invoke-direct {v4, v3, v5}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    .line 252
    .line 253
    .line 254
    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 255
    .line 256
    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 265
    .line 266
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    .line 267
    .line 268
    .line 269
    iput-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 270
    .line 271
    iget-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 272
    .line 273
    iget-object v4, v4, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    .line 274
    .line 275
    check-cast v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 281
    .line 282
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 283
    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 286
    .line 287
    .line 288
    check-cast v0, Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 294
    .line 295
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 296
    .line 297
    const/4 v5, 0x4

    .line 298
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 299
    .line 300
    .line 301
    check-cast v0, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 307
    .line 308
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 309
    .line 310
    invoke-direct {v4, v2, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 311
    .line 312
    .line 313
    check-cast v0, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 319
    .line 320
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 321
    .line 322
    const/4 v5, 0x6

    .line 323
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 324
    .line 325
    .line 326
    check-cast v0, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 332
    .line 333
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 334
    .line 335
    const/4 v5, 0x7

    .line 336
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 337
    .line 338
    .line 339
    check-cast v0, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 345
    .line 346
    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 347
    .line 348
    const/16 v5, 0x8

    .line 349
    .line 350
    invoke-direct {v4, v5, p0}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(ILandroid/os/Handler;)V

    .line 351
    .line 352
    .line 353
    check-cast v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 359
    .line 360
    check-cast v0, Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    const/4 v5, 0x1

    .line 375
    if-eqz v4, :cond_a

    .line 376
    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Ljava/util/Map$Entry;

    .line 382
    .line 383
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 388
    .line 389
    if-eqz v4, :cond_9

    .line 390
    .line 391
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_a
    const-string/jumbo v0, "start : true"

    .line 396
    .line 397
    .line 398
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    iput-boolean v5, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 402
    .line 403
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 404
    .line 405
    if-ne p1, p0, :cond_c

    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 411
    .line 412
    invoke-static {v3, v2, p0}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    .line 418
    .line 419
    :cond_c
    return-void
.end method

.method public final onTrackerStop()V
    .locals 5

    .line 1
    const-string/jumbo v0, "onTrackerStop"

    .line 2
    .line 3
    .line 4
    const-string v1, "ProcessStateTracker"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 10
    .line 11
    if-eqz v0, :cond_11

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    .line 18
    .line 19
    check-cast v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/enterprise/plm/ProcessAdapter;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 55
    .line 56
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    .line 57
    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-ne v4, p0, :cond_2

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    .line 86
    .line 87
    check-cast v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-ne v4, p0, :cond_4

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 115
    .line 116
    check-cast v3, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_7

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-ne v4, p0, :cond_6

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 144
    .line 145
    check-cast v3, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-ne v4, p0, :cond_8

    .line 168
    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 170
    .line 171
    .line 172
    :cond_9
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 173
    .line 174
    check-cast v3, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_b

    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-ne v4, p0, :cond_a

    .line 197
    .line 198
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    .line 202
    .line 203
    check-cast v3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_d

    .line 214
    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    if-ne v4, p0, :cond_c

    .line 226
    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 228
    .line 229
    .line 230
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    .line 231
    .line 232
    .line 233
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 234
    .line 235
    if-eqz v3, :cond_e

    .line 236
    .line 237
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    .line 241
    .line 242
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 243
    .line 244
    :cond_e
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    .line 245
    .line 246
    check-cast v3, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 249
    .line 250
    .line 251
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 252
    .line 253
    if-eqz v3, :cond_f

    .line 254
    .line 255
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    .line 259
    .line 260
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 261
    .line 262
    :cond_f
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    .line 263
    .line 264
    check-cast v3, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 267
    .line 268
    .line 269
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 270
    .line 271
    if-eqz v3, :cond_10

    .line 272
    .line 273
    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    .line 277
    .line 278
    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    .line 279
    .line 280
    :cond_10
    iget-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    .line 281
    .line 282
    check-cast v0, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    .line 288
    .line 289
    .line 290
    const-string/jumbo v0, "start : false"

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    .line 298
    .line 299
    :cond_11
    return-void
.end method

.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    .line 1
    const-string v0, "bound:cn="

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 4
    .line 5
    const-string v1, "CoverManager_CoverServiceManager"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "onServiceConnected : name = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, ", binder = "

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 64
    .line 65
    invoke-static {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x2

    .line 70
    if-eq v2, v3, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance v2, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 76
    .line 77
    iget v7, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    .line 78
    .line 79
    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 80
    .line 81
    move-object v4, v2

    .line 82
    move-object v6, p1

    .line 83
    move-object v8, p2

    .line 84
    move-object v9, p0

    .line 85
    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    new-instance v9, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 92
    .line 93
    iget v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    .line 94
    .line 95
    new-instance v8, Landroid/os/UserHandle;

    .line 96
    .line 97
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 102
    .line 103
    .line 104
    move-object v2, v9

    .line 105
    move-object v4, p1

    .line 106
    move-object v6, p2

    .line 107
    move-object v7, p0

    .line 108
    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 109
    .line 110
    .line 111
    move-object v2, v9

    .line 112
    :goto_2
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p1, ",type="

    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 147
    .line 148
    iget-object p2, v2, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    .line 165
    .line 166
    invoke-interface {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {v2, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "onServiceDisconnected : give up to connect cover service, "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "onServiceDisconnected : retry to connect cover service, "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "unbound:cn="

    .line 8
    .line 9
    .line 10
    sget-object v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 11
    .line 12
    const-string v3, "CoverManager_CoverServiceManager"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v5, "onServiceDisconnected : name = "

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v3

    .line 37
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 38
    .line 39
    invoke-virtual {v4, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 51
    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ",type="

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    .line 66
    .line 67
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    if-eq p1, v2, :cond_0

    .line 81
    .line 82
    const/16 v2, 0xe

    .line 83
    .line 84
    if-ne p1, v2, :cond_1

    .line 85
    .line 86
    :cond_0
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->IS_B6_DEVICE:Z

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->SUPPORT_FLIP_SUITCASE:Z

    .line 91
    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    sget-object p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_SUIT:Landroid/content/ComponentName;

    .line 95
    .line 96
    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    sget-object p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 108
    .line 109
    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 118
    .line 119
    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 120
    .line 121
    invoke-static {p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 126
    .line 127
    if-ne p1, v2, :cond_5

    .line 128
    .line 129
    :cond_3
    :goto_0
    iget p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 130
    .line 131
    add-int/lit8 p1, p1, 0x1

    .line 132
    .line 133
    iput p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    .line 134
    .line 135
    const/4 v2, 0x5

    .line 136
    if-ge p1, v2, :cond_4

    .line 137
    .line 138
    const-string p1, "CoverManager_CoverServiceManager"

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 160
    .line 161
    const/4 p1, 0x2

    .line 162
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    invoke-static {p0, p1, v0, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-wide/16 v0, 0x3e8

    .line 171
    .line 172
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string p0, "CoverManager_CoverServiceManager"

    .line 177
    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v0, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :cond_5
    :goto_1
    monitor-exit v3

    .line 196
    return-void

    .line 197
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    throw p0
.end method

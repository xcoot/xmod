.class public final Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getUserId(Landroid/content/Intent;)I
    .locals 3

    .line 1
    const-string v0, "android.intent.extra.user_handle"

    .line 2
    .line 3
    const/16 v1, -0x64

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p0, :cond_0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, "EXTRA_USER_HANDLE missing or invalid, value="

    .line 13
    .line 14
    const-string v2, "TrustManagerService"

    .line 15
    .line 16
    invoke-static {p0, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 24
    .line 25
    move p1, v1

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-ge v1, p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 43
    .line 44
    iget-object v0, p2, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/android/server/trust/TrustArchive$Event;

    .line 63
    .line 64
    const-wide/16 v5, 0x0

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v1, 0x7

    .line 68
    const/4 v2, -0x1

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    move-object v0, p1

    .line 73
    invoke-direct/range {v0 .. v8}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const-string v0, "android.intent.action.USER_ADDED"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    const-string v0, "android.intent.action.USER_STARTED"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_5

    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 112
    .line 113
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 114
    .line 115
    monitor-enter p2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 121
    .line 122
    .line 123
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 125
    .line 126
    iget-object v0, p2, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 127
    .line 128
    monitor-enter v0

    .line 129
    :try_start_1
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 130
    .line 131
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 134
    .line 135
    .line 136
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 138
    .line 139
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 140
    .line 141
    monitor-enter p2

    .line 142
    :try_start_2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 150
    .line 151
    iput-boolean v1, v0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    .line 152
    .line 153
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    throw p0

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    throw p0

    .line 169
    :catchall_2
    move-exception p0

    .line 170
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 171
    throw p0

    .line 172
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/android/server/trust/TrustManagerService$Receiver;->getUserId(Landroid/content/Intent;)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-lez p1, :cond_5

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$Receiver;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(I)V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_2
    return-void
.end method

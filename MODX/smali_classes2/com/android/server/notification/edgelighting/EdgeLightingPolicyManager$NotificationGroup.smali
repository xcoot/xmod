.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGroupMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final dump()V
    .locals 5

    .line 1
    const-string v0, "group notification count : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 38
    .line 39
    const-string v3, "EdgeLightingPolicyManager"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ".NotificationGroup"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "group key = "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, " ,value= "

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    const-string v2, "EdgeLightingPolicyManager.NotificationGroup"

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_1
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

.method public final updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "updateNotificationData replace :"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 18
    .line 19
    const-string v3, "isHeadup"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 29
    .line 30
    const-string v2, "EdgeLightingPolicyManager.NotificationGroup"

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", group  size="

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 84
    .line 85
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    iget-object v4, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 93
    .line 94
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    if-eqz v2, :cond_1

    .line 96
    .line 97
    :try_start_2
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 98
    .line 99
    const-string/jumbo v4, "tickerText"

    .line 100
    .line 101
    .line 102
    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 103
    .line 104
    const-string/jumbo v6, "tickerText"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 115
    .line 116
    const-string/jumbo v4, "titleText"

    .line 117
    .line 118
    .line 119
    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 120
    .line 121
    const-string/jumbo v6, "titleText"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 132
    .line 133
    const-string/jumbo v4, "text"

    .line 134
    .line 135
    .line 136
    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 137
    .line 138
    const-string/jumbo v6, "text"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 149
    .line 150
    const-string/jumbo v4, "subText"

    .line 151
    .line 152
    .line 153
    iget-object v2, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 154
    .line 155
    const-string/jumbo v5, "subText"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    goto :goto_3

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    :try_start_4
    throw p0

    .line 171
    :cond_0
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 172
    .line 173
    invoke-direct {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;-><init>()V

    .line 174
    .line 175
    .line 176
    :cond_1
    :goto_0
    iput-object p2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 199
    .line 200
    if-nez v0, :cond_3

    .line 201
    .line 202
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 203
    .line 204
    invoke-direct {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;-><init>()V

    .line 205
    .line 206
    .line 207
    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_4

    .line 216
    .line 217
    iput-object p2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->putChild(Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    .line 225
    .line 226
    .line 227
    :goto_1
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    .line 237
    .line 238
    .line 239
    :goto_2
    monitor-exit v1

    .line 240
    return-void

    .line 241
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    throw p0
.end method

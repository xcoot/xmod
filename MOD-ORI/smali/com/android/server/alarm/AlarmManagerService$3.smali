.class public final Lcom/android/server/alarm/AlarmManagerService$3;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/16 v0, 0x6b

    .line 6
    .line 7
    if-ne p1, v0, :cond_10

    .line 8
    .line 9
    invoke-static {p4, p3}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 29
    .line 30
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 48
    .line 49
    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-gez v2, :cond_3

    .line 67
    .line 68
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 75
    .line 76
    invoke-virtual {v2, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-virtual {v3, v2, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 96
    .line 97
    .line 98
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-ne v0, p1, :cond_4

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 103
    .line 104
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-wide/32 v3, 0xd7f327a

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v3, v4, p3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v2, 0x3

    .line 123
    const/4 v3, 0x1

    .line 124
    const/4 v4, 0x0

    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 134
    .line 135
    const/4 v6, -0x1

    .line 136
    invoke-virtual {v1, v5, v6, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    move v1, v3

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    move v1, v4

    .line 145
    :goto_1
    if-ne v0, v2, :cond_6

    .line 146
    .line 147
    move v0, v1

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    if-nez v0, :cond_7

    .line 150
    .line 151
    move v0, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_7
    move v0, v4

    .line 154
    :goto_2
    if-ne p1, v2, :cond_8

    .line 155
    .line 156
    move v3, v1

    .line 157
    goto :goto_5

    .line 158
    :cond_8
    if-nez p1, :cond_9

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_9
    move v3, v4

    .line 162
    goto :goto_5

    .line 163
    :cond_a
    if-eq v0, v2, :cond_c

    .line 164
    .line 165
    if-nez v0, :cond_b

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_b
    move v0, v4

    .line 169
    goto :goto_4

    .line 170
    :cond_c
    :goto_3
    move v0, v3

    .line 171
    :goto_4
    if-eq p1, v2, :cond_d

    .line 172
    .line 173
    if-nez p1, :cond_9

    .line 174
    .line 175
    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    .line 176
    .line 177
    if-nez v3, :cond_e

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 182
    .line 183
    const/16 p1, 0x8

    .line 184
    .line 185
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_e
    if-nez v0, :cond_f

    .line 194
    .line 195
    if-eqz v3, :cond_f

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$3;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    new-instance p1, Landroid/content/Intent;

    .line 203
    .line 204
    const-string p2, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    .line 205
    .line 206
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const/high16 p2, 0x34000000

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 222
    .line 223
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    const-string v5, ""

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    const/16 v4, 0xcf

    .line 231
    .line 232
    move-object v0, p2

    .line 233
    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    const/4 p4, 0x0

    .line 245
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    :cond_f
    :goto_6
    return-void

    .line 253
    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    throw p0

    .line 255
    :cond_10
    :goto_8
    return-void
.end method

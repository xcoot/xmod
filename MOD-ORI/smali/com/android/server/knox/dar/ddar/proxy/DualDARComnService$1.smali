.class public final Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "DualDARComnService"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.intent.extra.user_handle"

    .line 13
    .line 14
    const/16 v2, -0x2710

    .line 15
    .line 16
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 68
    .line 69
    invoke-static {v1, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v2, "hasKnoxKPUInternalPermission "

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    new-array v1, v0, [Ljava/lang/Object;

    .line 108
    .line 109
    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :goto_2
    const-string/jumbo p2, "package added or changed uri runtime exception occurred"

    .line 119
    .line 120
    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {p1, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_3
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string v0, "android.intent.extra.user_handle"

    .line 135
    .line 136
    const/16 v1, -0x2710

    .line 137
    .line 138
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    const-string v0, "android.intent.action.USER_STARTED"

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-string p1, "DualDARComnService"

    .line 156
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string/jumbo v1, "connectAgentsByUser User : "

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/4 v1, 0x0

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    .line 174
    .line 175
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter p1

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Ljava/lang/String;

    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 214
    .line 215
    iget v2, v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 216
    .line 217
    if-ne v2, p2, :cond_4

    .line 218
    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :catchall_0
    move-exception p0

    .line 224
    goto :goto_5

    .line 225
    :cond_5
    monitor-exit p1

    .line 226
    goto :goto_6

    .line 227
    :goto_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    throw p0

    .line 229
    :cond_6
    :goto_6
    return-void

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

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

    .line 3
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "DualDARComnService"

    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.intent.extra.user_handle"

    .line 14
    const/16 v2, -0x2710

    .line 16
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_3

    .line 44
    const-string p0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_2

    .line 67
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 69
    invoke-static {v1, p2}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->-$$Nest$mreConnectAgentsByPkgName(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Ljava/lang/String;)V

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

    .line 77
    iget-object v1, v1, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 86
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v2, "hasKnoxKPUInternalPermission "

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    new-array v1, v0, [Ljava/lang/Object;

    .line 109
    invoke-static {p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_3

    .line 118
    :goto_2
    const-string/jumbo p2, "package added or changed uri runtime exception occurred"

    .line 121
    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    invoke-static {p1, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 129
    :cond_3
    :goto_3
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    const-string v0, "android.intent.extra.user_handle"

    .line 136
    const/16 v1, -0x2710

    .line 138
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 141
    move-result p2

    .line 142
    const-string v0, "android.intent.action.USER_STARTED"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_6

    .line 150
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    const-string p1, "DualDARComnService"

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, "connectAgentsByUser User : "

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    const/4 v1, 0x0

    .line 173
    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 180
    monitor-enter p1

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 183
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v0

    .line 191
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_5

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Ljava/lang/String;

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 215
    iget v2, v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 217
    if-ne v2, p2, :cond_4

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

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

.class public final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_5

    .line 9
    const/4 p1, 0x2

    .line 10
    if-eq v0, p1, :cond_1

    .line 12
    const/4 p1, 0x3

    .line 13
    if-eq v0, p1, :cond_0

    .line 15
    goto/16 :goto_4

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 19
    invoke-static {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 22
    goto/16 :goto_4

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object v0, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 29
    const-string/jumbo v3, "user"

    .line 32
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/os/UserManager;

    .line 38
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_4

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v4, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    const-string v5, "GEOFENCINGSETTINGS"

    .line 62
    const-string v6, "adminUid"

    .line 64
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 66
    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 69
    move-result-object v3

    .line 70
    iget-object v4, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mActiveGeofenceList:Ljava/util/HashMap;

    .line 72
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v3

    .line 79
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v4

    .line 95
    iget-object v5, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    const-string v6, "GEOFENCINGSETTINGS"

    .line 99
    const-string/jumbo v7, "state"

    .line 102
    invoke-virtual {v5, v4, v1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 105
    move-result v5

    .line 106
    if-ne v5, v2, :cond_3

    .line 108
    invoke-virtual {p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->updateGeofenceActiveListbyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_2

    .line 114
    :catch_0
    move-exception v3

    .line 115
    :try_start_2
    const-string v4, "GeofenceService"

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string/jumbo v6, "loadGeofenceActiveList - EX"

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    monitor-exit p1

    .line 144
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 146
    invoke-static {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 149
    goto/16 :goto_4

    .line 151
    :goto_2
    monitor-exit p1

    .line 152
    throw p0

    .line 153
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    check-cast p1, Ljava/lang/Integer;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    move-result p1

    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;

    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_7

    .line 169
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_7

    .line 175
    new-instance v2, Landroid/content/Intent;

    .line 177
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    .line 180
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 186
    move-result v3

    .line 187
    new-array v3, v3, [I

    .line 189
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 192
    move-result v4

    .line 193
    if-ge v1, v4, :cond_6

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Ljava/lang/Integer;

    .line 201
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 204
    move-result v4

    .line 205
    aput v4, v3, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.ID"

    .line 213
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 216
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 219
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 222
    move-result v1

    .line 223
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 229
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 234
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid$2(I)Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 243
    iget-object p1, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 245
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 247
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 250
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 253
    :try_start_3
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 255
    iget-object p1, p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 257
    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    new-instance v1, Landroid/content/Intent;

    .line 267
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 270
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 273
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 275
    iget-object v3, v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 277
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 280
    move-result-object v3

    .line 281
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 284
    move-result v4

    .line 285
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 288
    move-result v3

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 297
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    .line 299
    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 302
    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 305
    goto :goto_4

    .line 306
    :catch_1
    move-exception p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    :cond_7
    :goto_4
    return-void
.end method

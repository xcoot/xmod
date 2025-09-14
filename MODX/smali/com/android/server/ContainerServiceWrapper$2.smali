.class public final Lcom/android/server/ContainerServiceWrapper$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$2;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 10
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    .line 12
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v1, p0, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    .line 19
    const-string/jumbo v2, "core"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p1, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 30
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 50
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 56
    iget-object v3, p1, Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 58
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 60
    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p1, Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    .line 71
    move-result v3

    .line 72
    iget-object v4, p1, Lcom/android/server/pm/PersonaServiceProxy;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 74
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 76
    invoke-virtual {v4, v5, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 79
    iget-object v4, p1, Lcom/android/server/pm/PersonaServiceProxy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 81
    const/16 v5, 0x8

    .line 83
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    .line 85
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 88
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 90
    if-ne v3, v2, :cond_1

    .line 92
    new-instance v2, Landroid/content/Intent;

    .line 94
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 97
    const-string v3, "android.intent.action.MAIN"

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "android.intent.category.HOME"

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v3, 0x10000000

    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v3, p1, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 117
    move-result-object v3

    .line 118
    const/high16 v4, 0x10000

    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 124
    move-result-object v3

    .line 125
    new-instance v4, Landroid/content/ComponentName;

    .line 127
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 129
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 131
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 133
    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    const-string v3, "android.intent.extra.FROM_HOME_KEY"

    .line 141
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v3, p1, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    .line 146
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 148
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const-string v0, "Not installed service "

    .line 154
    const-string v1, "PersonaManagerService::Proxy"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v3, "reconnectContainerService "

    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p1, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    .line 180
    monitor-enter v1

    .line 181
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v1, p1, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 184
    iget v2, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 186
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_3

    .line 192
    const-string p1, "PersonaManagerService::Proxy"

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v1, "connectService() user<"

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget p0, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string p0, "> is not running"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 216
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    goto :goto_2

    .line 220
    :cond_3
    :try_start_1
    const-string/jumbo v1, "package"

    .line 223
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 226
    move-result-object v1

    .line 227
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 230
    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 233
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    iget v3, p0, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 239
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_4

    .line 245
    const-string p1, "PersonaManagerService::Proxy"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p0

    .line 263
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto :goto_2

    .line 267
    :catch_0
    move-exception p0

    .line 268
    goto :goto_1

    .line 269
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PersonaServiceProxy;->maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    goto :goto_2

    .line 273
    :goto_1
    const-string p1, "PersonaManagerService::Proxy"

    .line 275
    const-string/jumbo v0, "reconnectService remote exception"

    .line 278
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 284
    :goto_2
    return-void

    .line 285
    :catchall_0
    move-exception p0

    .line 286
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    throw p0
.end method

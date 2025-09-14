.class public final Lcom/android/server/knox/dar/ddar/DDCache;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static volatile _instance:Lcom/android/server/knox/dar/ddar/DDCache;


# instance fields
.field public semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method public static enforceCallingUser(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1482

    .line 7
    if-eq v0, v1, :cond_2

    .line 9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x3e8

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 21
    move-result v0

    .line 22
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 25
    move-result v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 31
    const-string v1, "Can only be called by system user. callingUid: "

    .line 33
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/knox/dar/ddar/DDCache;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/DDCache;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/knox/dar/ddar/DDCache;

    .line 10
    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method public final get(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "DUALDAR_User_"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "_"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    const/4 p0, 0x0

    .line 37
    new-array p0, p0, [Ljava/lang/Object;

    .line 39
    const-string p1, "DDCache"

    .line 41
    const-string/jumbo p2, "get value failed"

    .line 44
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0
.end method

.method public final getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    :try_start_0
    const-string/jumbo v0, "persona"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    .line 25
    return-object p0
.end method

.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string/jumbo v0, "onMessage() "

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    const-string v2, "DDCache"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const/4 v3, 0x0

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v0, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    .line 27
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v2

    .line 34
    const v4, -0xd9160e7

    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eq v2, v4, :cond_2

    .line 41
    const v4, 0xac391ee

    .line 44
    if-eq v2, v4, :cond_1

    .line 46
    const v4, 0x67175262

    .line 49
    if-eq v2, v4, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v2, "SET_DATA_CMD"

    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_3

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    const-string v2, "GET_DATA_CMD"

    .line 65
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 71
    move v3, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string v2, "DELETE_DATA_CMD"

    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-eqz p2, :cond_3

    .line 81
    move v3, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    :goto_0
    const/4 v3, -0x1

    .line 84
    :goto_1
    const-string p2, "DUAL_DAR_VALUE"

    .line 86
    const-string/jumbo v2, "dual_dar_response"

    .line 89
    const-string v4, "DUAL_DAR_KEY"

    .line 91
    const-string v7, "DUAL_DAR_USER_ID"

    .line 93
    if-eqz v3, :cond_6

    .line 95
    if-eq v3, v6, :cond_5

    .line 97
    if-eq v3, v5, :cond_4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDCache;->enforceCallingUser(I)V

    .line 103
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 106
    move-result p1

    .line 107
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p0, p1, p3}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDCache;->enforceCallingUser(I)V

    .line 140
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 143
    move-result p1

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_2
    return-object v0

    .line 159
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    return-object v1
.end method

.method public final set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "DUALDAR_User_"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, "_"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const/4 p0, 0x0

    .line 36
    new-array p0, p0, [Ljava/lang/Object;

    .line 38
    const-string p1, "DDCache"

    .line 40
    const-string/jumbo p2, "set value failed"

    .line 43
    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :goto_0
    return-void
.end method

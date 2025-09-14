.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;


# direct methods
.method public static deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    goto :goto_1

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :catch_0
    move-exception p0

    .line 15
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    const-string p0, "KnoxVpnCredentialHandler"

    .line 20
    const-string v2, "Exception occured while trying to delete the info from keystore"

    .line 22
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :goto_1
    return-void

    .line 27
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

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
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
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

.method public static retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "retrieveCredentialsFromKeystore alias retrieved is "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "KnoxVpnCredentialHandler"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v2

    .line 25
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 32
    new-instance v4, Ljava/lang/String;

    .line 34
    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    move-object v0, v4

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    :try_start_1
    const-string v4, "Exception occured while trying to retrieve the info from keystore"

    .line 49
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    const-string/jumbo p0, "retrieveCredentialsFromKeystore key retrieved is "

    .line 59
    invoke-static {p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 63
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public static storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "KnoxVpnCredentialHandler"

    .line 3
    const-string/jumbo v1, "storeCredentialsInKeystore status key is "

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 13
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v4, :cond_0

    .line 17
    :try_start_1
    invoke-static {p0, v4}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    .line 20
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v4

    .line 23
    :try_start_2
    const-string v6, "Exception occured while trying to store the info inside keystore"

    .line 25
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " for alias "

    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p0, " for key "

    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return v5

    .line 69
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw p0
.end method

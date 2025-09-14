.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

.field public static mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

.field public static mIsBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "ANDROID_DATA"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "/misc/saccessory_manager/keychain/"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "cover_pubkey_blocklist.txt"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    .line 37
    .line 38
    return-void
.end method

.method public static isThisKeyBlocklisted(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 2
    .line 3
    const-string v1, ","

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v3, "SAccessoryManager_CertBlocklister"

    .line 15
    .line 16
    const-string v4, "This key is in blocklist"

    .line 17
    .line 18
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    monitor-exit v2

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    monitor-exit v2

    .line 36
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0

    .line 38
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

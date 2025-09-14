.class public final Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/locksettings/RebootEscrowProviderInterface;


# instance fields
.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

.field public mServerBlob:[B

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 8
    return-void
.end method


# virtual methods
.method public final clearRebootEscrowKey()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 10
    return-void
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 4

    .line 1
    const-string v0, "Decrypted reboot escrow key has incorrect size "

    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 5
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 19
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 26
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "RebootEscrowProviderServerBased"

    .line 31
    if-nez v1, :cond_1

    .line 33
    const-string p0, "Failed to read reboot escrow server blob from storage"

    .line 35
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-object v2

    .line 39
    :cond_1
    if-nez p1, :cond_2

    .line 41
    const-string p0, "Failed to decrypt the escrow key; decryption key from keystore is null."

    .line 43
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-object v2

    .line 47
    :cond_2
    const-string v1, "Loaded reboot escrow server blob from storage"

    .line 49
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mServerBlob:[B

    .line 54
    invoke-virtual {p0, v1, p1}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->unwrapServerBlob([BLjavax/crypto/SecretKey;)[B

    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_3

    .line 60
    const-string p0, "Decrypted reboot escrow key bytes should not be null"

    .line 62
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    array-length p1, p0

    .line 69
    const/16 v1, 0x20

    .line 71
    if-eq p1, v1, :cond_4

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    array-length p0, p0

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v2

    .line 90
    :cond_4
    new-instance p1, Lcom/android/server/locksettings/RebootEscrowKey;

    .line 92
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 94
    const-string v1, "AES"

    .line 96
    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 99
    invoke-direct {p1, v0}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-object p1

    .line 103
    :goto_0
    const-string p1, "Failed to decrypt the server blob "

    .line 105
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    return-object v2
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hasRebootEscrowSupport()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .locals 3

    .line 1
    const-string v0, "RebootEscrowProviderServerBased"

    .line 3
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 15
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->wrapEscrowKey([BLjavax/crypto/SecretKey;)[B

    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    const-string p0, "Failed to encrypt the reboot escrow key"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return v2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowServerBlobFile()Ljava/io/File;

    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-virtual {v1, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 41
    const-string p0, "Reboot escrow key encrypted and stored."

    .line 43
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return p2

    .line 47
    :goto_0
    const-string p1, "Failed to encrypt the reboot escrow key "

    .line 49
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    return v2
.end method

.method public final unwrapServerBlob([BLjavax/crypto/SecretKey;)[B
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "RebootEscrowProviderServerBased"

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "Had reboot escrow data for users, but resume on reboot server service is unavailable"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ljava/io/DataInputStream;

    .line 24
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 26
    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    invoke-static {p2, v2}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 38
    const-string p0, "Decrypted server blob should not be null"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-object v0

    .line 44
    :cond_1
    const-string/jumbo p2, "ota"

    .line 47
    const-string/jumbo v1, "server_based_service_timeout_in_seconds"

    .line 50
    const-wide/16 v2, 0xa

    .line 52
    invoke-static {p2, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 55
    move-result-wide v4

    .line 56
    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 59
    invoke-static {p2, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 62
    move-result-wide v1

    .line 63
    iget-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 65
    if-eqz p2, :cond_5

    .line 67
    invoke-interface {p2}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_5

    .line 77
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-direct {p2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 83
    new-instance v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    .line 85
    invoke-direct {v4, p2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 88
    iget-object v5, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 90
    new-instance v6, Landroid/os/RemoteCallback;

    .line 92
    invoke-direct {v6, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 95
    invoke-interface {v5, p1, v6}, Landroid/service/resumeonreboot/IResumeOnRebootService;->unwrap([BLandroid/os/RemoteCallback;)V

    .line 98
    const-string/jumbo p1, "unWrapSecret"

    .line 101
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 104
    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 106
    const-string/jumbo p2, "exception_key"

    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_3

    .line 115
    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 117
    const-class v1, Landroid/os/ParcelableException;

    .line 119
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/os/ParcelableException;

    .line 125
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    .line 130
    move-result-object p2

    .line 131
    instance-of p2, p2, Ljava/io/IOException;

    .line 133
    if-eqz p2, :cond_2

    .line 135
    const-class p2, Ljava/io/IOException;

    .line 137
    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 143
    const-string p2, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    .line 145
    invoke-direct {p0, p2, p1, v3, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_0
    iget-object p1, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 151
    const-string/jumbo p2, "unrwapped_blob_key"

    .line 154
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 157
    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    .line 160
    if-eqz p2, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 167
    :cond_4
    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 169
    return-object p1

    .line 170
    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    .line 172
    const-string p1, "Service not bound"

    .line 174
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p0
.end method

.method public final wrapEscrowKey([BLjavax/crypto/SecretKey;)[B
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;->mInjector:Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "RebootEscrowProviderServerBased"

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "Failed to encrypt the reboot escrow key: resume on reboot server service is unavailable"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string/jumbo v2, "ota"

    .line 19
    const-string/jumbo v3, "server_based_service_timeout_in_seconds"

    .line 22
    const-wide/16 v4, 0xa

    .line 24
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 27
    move-result-wide v6

    .line 28
    invoke-virtual {p0, v6, v7}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->bindToService(J)V

    .line 31
    const-wide/32 v6, 0x927c0

    .line 34
    const-string/jumbo v8, "server_based_server_blob_lifetime_in_millis"

    .line 37
    invoke-static {v2, v8, v6, v7}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 40
    move-result-wide v6

    .line 41
    invoke-static {v2, v3, v4, v5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 44
    move-result-wide v2

    .line 45
    iget-object v4, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 47
    if-eqz v4, :cond_5

    .line 49
    invoke-interface {v4}, Landroid/service/resumeonreboot/IResumeOnRebootService;->asBinder()Landroid/os/IBinder;

    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_5

    .line 59
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 65
    new-instance v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;

    .line 67
    invoke-direct {v8, v4}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 70
    iget-object v9, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 72
    new-instance v10, Landroid/os/RemoteCallback;

    .line 74
    invoke-direct {v10, v8}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 77
    invoke-interface {v9, p1, v6, v7, v10}, Landroid/service/resumeonreboot/IResumeOnRebootService;->wrapSecret([BJLandroid/os/RemoteCallback;)V

    .line 80
    const-string/jumbo p1, "wrapSecret"

    .line 83
    invoke-static {v4, v2, v3, p1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 86
    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 88
    const-string/jumbo v2, "exception_key"

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_2

    .line 97
    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 99
    const-class v3, Landroid/os/ParcelableException;

    .line 101
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/os/ParcelableException;

    .line 107
    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    .line 112
    move-result-object v2

    .line 113
    instance-of v2, v2, Ljava/io/IOException;

    .line 115
    if-eqz v2, :cond_1

    .line 117
    const-class v2, Ljava/io/IOException;

    .line 119
    invoke-virtual {p1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 125
    const-string p2, "ResumeOnRebootServiceConnection wrap/unwrap failed"

    .line 127
    invoke-direct {p0, p2, p1, v5, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 130
    throw p0

    .line 131
    :cond_2
    :goto_0
    iget-object p1, v8, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;->mResult:Landroid/os/Bundle;

    .line 133
    const-string/jumbo v2, "wrapped_blob_key"

    .line 136
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 139
    move-result-object p1

    .line 140
    iget-object v2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection$1;

    .line 142
    if-eqz v2, :cond_3

    .line 144
    iget-object v3, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    :cond_3
    iput-object v0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;->mBinder:Landroid/service/resumeonreboot/IResumeOnRebootService;

    .line 151
    if-nez p1, :cond_4

    .line 153
    const-string p0, "Server encrypted reboot escrow key cannot be null"

    .line 155
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v0

    .line 159
    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :cond_5
    new-instance p0, Landroid/os/RemoteException;

    .line 166
    const-string p1, "Service not bound"

    .line 168
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 171
    throw p0
.end method

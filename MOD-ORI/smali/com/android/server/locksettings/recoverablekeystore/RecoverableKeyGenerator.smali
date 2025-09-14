.class public final Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0, p5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 19
    .line 20
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide/16 v3, -0x1

    .line 25
    .line 26
    cmp-long p1, v1, v3

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    const-wide/16 p2, 0x0

    .line 35
    .line 36
    cmp-long p0, p0, p2

    .line 37
    .line 38
    if-gez p0, :cond_0

    .line 39
    .line 40
    const-string p0, "PlatformKeyGen"

    .line 41
    .line 42
    const-string p1, "Failed to set the shoudCreateSnapshot flag in the local DB."

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    .line 53
    .line 54
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    .line 56
    const-string p1, "Failed writing ("

    .line 57
    .line 58
    const-string p2, ", "

    .line 59
    .line 60
    const-string p5, ") to database."

    .line 61
    .line 62
    invoke-static {p3, p1, p2, p4, p5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V
    .locals 2

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    const-string v1, "AES"

    .line 4
    .line 5
    invoke-direct {v0, p5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, p6}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 13
    .line 14
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p5

    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long p1, p5, v0

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    .line 29
    .line 30
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    const-string p1, "Failed writing ("

    .line 33
    .line 34
    const-string p2, ", "

    .line 35
    .line 36
    const-string p5, ") to database."

    .line 37
    .line 38
    invoke-static {p3, p1, p2, p4, p5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

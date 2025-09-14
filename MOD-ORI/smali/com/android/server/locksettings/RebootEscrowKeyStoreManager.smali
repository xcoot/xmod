.class public final Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKeyStoreLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public static getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "AndroidKeystore"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 9
    .line 10
    const/16 v3, 0x78

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v2, "reboot_escrow_key_store_encryption_key"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    const-string v2, "RebootEscrowKeyStoreManager"

    .line 30
    .line 31
    const-string v3, "Unable to get encryption key from keystore."

    .line 32
    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

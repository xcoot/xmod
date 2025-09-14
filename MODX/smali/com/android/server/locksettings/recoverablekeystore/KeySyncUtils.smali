.class public abstract Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ENCRYPTED_APPLICATION_KEY_HEADER:[B

.field public static final LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field public static final RECOVERY_CLAIM_HEADER:[B

.field public static final RECOVERY_RESPONSE_HEADER:[B

.field public static final THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field public static final THM_KF_HASH_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    const-string v1, "V1 THM_encrypted_recovery_key"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 11
    const-string v1, "V1 locally_encrypted_recovery_key"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 19
    const-string v1, "V1 encrypted_application_key"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 27
    const-string v1, "V1 KF_claim"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    .line 35
    const-string v1, "V1 reencrypted_recovery_key"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    .line 43
    const-string v1, "THM_KF_hash"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    .line 51
    return-void
.end method

.method public static encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/util/Pair;

    .line 32
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    check-cast v3, Ljavax/crypto/SecretKey;

    .line 36
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/util/Pair;

    .line 42
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    check-cast v4, [B

    .line 46
    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 48
    if-nez v4, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    filled-new-array {v5, v4}, [[B

    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 58
    move-result-object v5

    .line 59
    :goto_1
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 66
    move-result-object v3

    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-static {v6, v4, v5, v3}, Lcom/android/security/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method public static locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 3
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, p0, v0, p1}, Lcom/android/security/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

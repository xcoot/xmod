.class public final Lcom/android/server/locksettings/RebootEscrowKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 6
    return-void
.end method

.method public static generate()Lcom/android/server/locksettings/RebootEscrowKey;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "AES"

    .line 3
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/security/SecureRandom;

    .line 9
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 12
    const/16 v2, 0x100

    .line 14
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 17
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance v1, Lcom/android/server/locksettings/RebootEscrowKey;

    .line 23
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/RebootEscrowKey;-><init>(Ljavax/crypto/SecretKey;)V

    .line 26
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/io/IOException;

    .line 30
    const-string v2, "Could not generate new secret key"

    .line 32
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw v1
.end method

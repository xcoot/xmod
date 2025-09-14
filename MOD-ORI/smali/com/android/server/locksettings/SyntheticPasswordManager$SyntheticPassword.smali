.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEncryptedEscrowSplit0:[B

.field public mEscrowSplit1:[B

.field public mSecureFolderAuthToken:Z

.field public mSyntheticPassword:[B

.field public final mVersion:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final deriveSubkey([B)[B
    .locals 4

    .line 1
    iget-byte v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 7
    .line 8
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_CONTEXT:[B

    .line 9
    .line 10
    :try_start_0
    const-string v1, "HmacSHA256"

    .line 11
    .line 12
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x4

    .line 29
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 53
    .line 54
    .line 55
    array-length p1, v0

    .line 56
    mul-int/lit8 p1, p1, 0x8

    .line 57
    .line 58
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/16 p1, 0x100

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 103
    .line 104
    filled-new-array {p0}, [[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

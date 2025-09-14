.class public final Lcom/android/server/locksettings/RebootEscrowData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSpVersion:B

.field public final mSyntheticPassword:[B


# direct methods
.method public constructor <init>(B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    .line 7
    .line 8
    return-void
.end method

.method public static fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/DataInputStream;

    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v1, v3, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-ne v1, v3, :cond_1

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-static {p2, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/io/DataInputStream;

    .line 43
    .line 44
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p2, Lcom/android/server/locksettings/RebootEscrowData;

    .line 57
    .line 58
    invoke-direct {p2, v2, p0, p1}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[B)V

    .line 59
    .line 60
    .line 61
    return-object p2

    .line 62
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p1, "Failed to find wrapper key in keystore, cannot decrypt the escrow data"

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 71
    .line 72
    const-string p1, "Unsupported version "

    .line 73
    .line 74
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 83
    .line 84
    invoke-static {p0, v0}, Lcom/android/server/locksettings/AesEncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/io/DataInputStream;)[B

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p2, Lcom/android/server/locksettings/RebootEscrowData;

    .line 89
    .line 90
    invoke-direct {p2, v2, p0, p1}, Lcom/android/server/locksettings/RebootEscrowData;-><init>(B[B[B)V

    .line 91
    .line 92
    .line 93
    return-object p2
.end method

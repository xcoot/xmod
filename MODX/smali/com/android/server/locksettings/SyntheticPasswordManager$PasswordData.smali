.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public credentialType:I

.field public passwordHandle:[B

.field public pinLength:I

.field public salt:[B

.field public scryptLogN:B

.field public scryptLogP:B

.field public scryptLogR:B

.field public secureMode:I


# direct methods
.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v1

    .line 11
    array-length v2, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, p0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 22
    move-result p0

    .line 23
    int-to-short p0, p0

    .line 24
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 29
    move-result p0

    .line 30
    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 35
    move-result p0

    .line 36
    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 38
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 41
    move-result p0

    .line 42
    iput-byte p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 47
    move-result p0

    .line 48
    new-array p0, p0, [B

    .line 50
    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 52
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    move-result p0

    .line 59
    if-lez p0, :cond_0

    .line 61
    new-array p0, p0, [B

    .line 63
    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 65
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p0, 0x0

    .line 70
    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 75
    move-result p0

    .line 76
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "Inside fromBytes() - result.pinLength : "

    .line 82
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 87
    const-string v2, "SyntheticPasswordManager.SDP"

    .line 89
    invoke-static {p0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 92
    iput v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "2. result.secureMode : "

    .line 98
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 103
    invoke-static {p0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public final toBytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0xf

    .line 6
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    array-length v1, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    add-int/2addr v0, v1

    .line 15
    add-int/lit8 v0, v0, 0x4

    .line 17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 23
    const/16 v3, -0x8000

    .line 25
    if-lt v1, v3, :cond_2

    .line 27
    const/16 v3, 0x7fff

    .line 29
    if-gt v1, v3, :cond_2

    .line 31
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 36
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 39
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 41
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 46
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 51
    array-length v1, v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 62
    if-eqz v1, :cond_1

    .line 64
    array-length v3, v1

    .line 65
    if-lez v3, :cond_1

    .line 67
    array-length v1, v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    :goto_1
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 82
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "Unknown credential type: "

    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0
.end method

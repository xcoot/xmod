.class public abstract Lcom/android/server/biometrics/HardwareAuthTokenUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getLong(I[B)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0x8

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    add-int v3, v2, p0

    .line 9
    .line 10
    aget-byte v3, p1, v3

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    const-wide/16 v5, 0xff

    .line 14
    .line 15
    and-long/2addr v3, v5

    .line 16
    mul-int/lit8 v5, v2, 0x8

    .line 17
    .line 18
    shl-long/2addr v3, v5

    .line 19
    add-long/2addr v0, v3

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v0
.end method

.method public static toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B
    .locals 6

    .line 1
    const/16 v0, 0x45

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput-byte v1, v0, v1

    .line 7
    .line 8
    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    .line 15
    .line 16
    const/16 v4, 0x9

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    .line 19
    .line 20
    .line 21
    iget-wide v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    .line 22
    .line 23
    const/16 v4, 0x11

    .line 24
    .line 25
    invoke-static {v2, v3, v0, v4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    .line 29
    .line 30
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-ne v3, v4, :cond_0

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :cond_0
    int-to-byte v4, v2

    .line 43
    const/16 v5, 0x19

    .line 44
    .line 45
    aput-byte v4, v0, v5

    .line 46
    .line 47
    shr-int/lit8 v4, v2, 0x8

    .line 48
    .line 49
    int-to-byte v4, v4

    .line 50
    const/16 v5, 0x1a

    .line 51
    .line 52
    aput-byte v4, v0, v5

    .line 53
    .line 54
    shr-int/lit8 v4, v2, 0x10

    .line 55
    .line 56
    int-to-byte v4, v4

    .line 57
    const/16 v5, 0x1b

    .line 58
    .line 59
    aput-byte v4, v0, v5

    .line 60
    .line 61
    shr-int/lit8 v2, v2, 0x18

    .line 62
    .line 63
    int-to-byte v2, v2

    .line 64
    const/16 v4, 0x1c

    .line 65
    .line 66
    aput-byte v2, v0, v4

    .line 67
    .line 68
    iget-object v2, p0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    .line 69
    .line 70
    iget-wide v4, v2, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    .line 71
    .line 72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-ne v3, v2, :cond_1

    .line 77
    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    :cond_1
    const/16 v2, 0x1d

    .line 83
    .line 84
    invoke-static {v4, v5, v0, v2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->writeLong(J[BI)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    .line 88
    .line 89
    array-length v2, p0

    .line 90
    const/16 v3, 0x25

    .line 91
    .line 92
    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method

.method public static toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;
    .locals 7

    .line 1
    new-instance v0, Landroid/hardware/keymaster/HardwareAuthToken;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/keymaster/HardwareAuthToken;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->challenge:J

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->userId:J

    .line 20
    .line 21
    const/16 v1, 0x11

    .line 22
    .line 23
    invoke-static {v1, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorId:J

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    move v3, v2

    .line 32
    :goto_0
    const/4 v4, 0x4

    .line 33
    if-ge v2, v4, :cond_0

    .line 34
    .line 35
    add-int/lit8 v4, v2, 0x19

    .line 36
    .line 37
    aget-byte v4, p0, v4

    .line 38
    .line 39
    and-int/lit16 v4, v4, 0xff

    .line 40
    .line 41
    mul-int/lit8 v5, v2, 0x8

    .line 42
    .line 43
    shl-int/2addr v4, v5

    .line 44
    add-int/2addr v3, v4

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 49
    .line 50
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-ne v2, v4, :cond_1

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    :cond_1
    iput v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->authenticatorType:I

    .line 61
    .line 62
    new-instance v3, Landroid/hardware/keymaster/Timestamp;

    .line 63
    .line 64
    invoke-direct {v3}, Landroid/hardware/keymaster/Timestamp;-><init>()V

    .line 65
    .line 66
    .line 67
    const/16 v4, 0x1d

    .line 68
    .line 69
    invoke-static {v4, p0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->getLong(I[B)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-ne v2, v6, :cond_2

    .line 78
    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    :cond_2
    iput-wide v4, v3, Landroid/hardware/keymaster/Timestamp;->milliSeconds:J

    .line 84
    .line 85
    iput-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->timestamp:Landroid/hardware/keymaster/Timestamp;

    .line 86
    .line 87
    const/16 v2, 0x20

    .line 88
    .line 89
    new-array v3, v2, [B

    .line 90
    .line 91
    iput-object v3, v0, Landroid/hardware/keymaster/HardwareAuthToken;->mac:[B

    .line 92
    .line 93
    const/16 v4, 0x25

    .line 94
    .line 95
    invoke-static {p0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method

.method public static writeLong(J[BI)V
    .locals 3

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 4
    .line 5
    add-int/lit8 v0, p3, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    shr-long v1, p0, v1

    .line 10
    .line 11
    long-to-int v1, v1

    .line 12
    int-to-byte v1, v1

    .line 13
    aput-byte v1, p2, v0

    .line 14
    .line 15
    add-int/lit8 v0, p3, 0x2

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    shr-long v1, p0, v1

    .line 20
    .line 21
    long-to-int v1, v1

    .line 22
    int-to-byte v1, v1

    .line 23
    aput-byte v1, p2, v0

    .line 24
    .line 25
    add-int/lit8 v0, p3, 0x3

    .line 26
    .line 27
    const/16 v1, 0x18

    .line 28
    .line 29
    shr-long v1, p0, v1

    .line 30
    .line 31
    long-to-int v1, v1

    .line 32
    int-to-byte v1, v1

    .line 33
    aput-byte v1, p2, v0

    .line 34
    .line 35
    add-int/lit8 v0, p3, 0x4

    .line 36
    .line 37
    const/16 v1, 0x20

    .line 38
    .line 39
    shr-long v1, p0, v1

    .line 40
    .line 41
    long-to-int v1, v1

    .line 42
    int-to-byte v1, v1

    .line 43
    aput-byte v1, p2, v0

    .line 44
    .line 45
    add-int/lit8 v0, p3, 0x5

    .line 46
    .line 47
    const/16 v1, 0x28

    .line 48
    .line 49
    shr-long v1, p0, v1

    .line 50
    .line 51
    long-to-int v1, v1

    .line 52
    int-to-byte v1, v1

    .line 53
    aput-byte v1, p2, v0

    .line 54
    .line 55
    add-int/lit8 v0, p3, 0x6

    .line 56
    .line 57
    const/16 v1, 0x30

    .line 58
    .line 59
    shr-long v1, p0, v1

    .line 60
    .line 61
    long-to-int v1, v1

    .line 62
    int-to-byte v1, v1

    .line 63
    aput-byte v1, p2, v0

    .line 64
    .line 65
    add-int/lit8 p3, p3, 0x7

    .line 66
    .line 67
    const/16 v0, 0x38

    .line 68
    .line 69
    shr-long/2addr p0, v0

    .line 70
    long-to-int p0, p0

    .line 71
    int-to-byte p0, p0

    .line 72
    aput-byte p0, p2, p3

    .line 73
    .line 74
    return-void
.end method

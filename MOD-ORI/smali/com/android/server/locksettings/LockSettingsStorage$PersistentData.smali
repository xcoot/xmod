.class public final Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;


# instance fields
.field public final payload:[B

.field public final qualityForUi:I

.field public final type:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 2
    .line 3
    const/16 v1, -0x2710

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v3, v1, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 11
    .line 12
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 9

    .line 1
    const-string v0, "LockSettingsStorage"

    .line 2
    .line 3
    const-string v1, "Unknown PersistentData version code: "

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 6
    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    array-length v3, p0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v3, Ljava/io/DataInputStream;

    .line 14
    .line 15
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    and-int/lit16 v1, v1, 0xff

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    array-length v5, p0

    .line 45
    const/16 v6, 0xa

    .line 46
    .line 47
    sub-int/2addr v5, v6

    .line 48
    new-array v7, v5, [B

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    invoke-static {p0, v6, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 55
    .line 56
    invoke-direct {p0, v1, v4, v3, v7}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :goto_0
    const-string v1, "Could not parse PersistentData"

    .line 79
    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static toBytes(III[B)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    :cond_0
    const-string p0, "TYPE_NONE must have empty payload"

    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    if-eqz p3, :cond_2

    .line 16
    .line 17
    array-length v2, p3

    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_2
    const-string/jumbo v2, "empty payload must only be used with TYPE_NONE"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 28
    .line 29
    array-length v2, p3

    .line 30
    add-int/lit8 v2, v2, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/io/DataOutputStream;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p1, "ByteArrayOutputStream cannot throw IOException"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

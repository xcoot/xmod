.class public final Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdbKeys:[B

.field public final mAdbTempKeys:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    .line 7
    .line 8
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-array p0, p0, [B

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-array v1, v1, [B

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_1
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method


# virtual methods
.method public final toBytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/DataOutputStream;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    array-length v3, p0

    .line 20
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    array-length p0, v0

    .line 27
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.class public final Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInputStream:Ljava/io/DataInputStream;

.field public mLocalSocket:Landroid/net/LocalSocket;

.field public mOutputStream:Ljava/io/DataOutputStream;


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mInputStream:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 7
    .line 8
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mLocalSocket:Landroid/net/LocalSocket;

    .line 12
    .line 13
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final sendCommand(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->mOutputStream:Ljava/io/DataOutputStream;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    array-length v1, p1

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

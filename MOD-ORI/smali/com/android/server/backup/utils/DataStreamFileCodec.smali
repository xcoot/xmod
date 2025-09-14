.class public final Lcom/android/server/backup/utils/DataStreamFileCodec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCodec:Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

.field public final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/utils/DataStreamFileCodec;->mCodec:Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->$r8$classId:I

    .line 21
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    check-cast p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 36
    .line 37
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    .line 38
    .line 39
    array-length p0, p0

    .line 40
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    .line 55
    .line 56
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    .line 58
    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :catchall_2
    move-exception p0

    .line 71
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_3
    move-exception p1

    .line 76
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 80
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_4
    move-exception p1

    .line 85
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 89
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 90
    .line 91
    .line 92
    goto :goto_5

    .line 93
    :catchall_5
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_5
    throw p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

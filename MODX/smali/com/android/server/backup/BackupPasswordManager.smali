.class public final Lcom/android/server/backup/BackupPasswordManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBaseStateDir:Ljava/io/File;

.field public final mContext:Landroid/content/Context;

.field public mPasswordHash:Ljava/lang/String;

.field public mPasswordSalt:[B

.field public mPasswordVersion:I

.field public final mRng:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    .line 8
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 10
    const-string p1, "BackupPasswordManager"

    .line 12
    :try_start_0
    new-instance p3, Ljava/io/File;

    .line 14
    const-string/jumbo v0, "pwversion"

    .line 17
    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    new-instance p2, Ljava/io/FileInputStream;

    .line 22
    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance p3, Ljava/io/DataInputStream;

    .line 27
    invoke-direct {p3, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :try_start_3
    invoke-virtual {p3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p2

    .line 48
    iput p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception p3

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_5
    invoke-virtual {p3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    goto :goto_0

    .line 58
    :catchall_2
    move-exception p3

    .line 59
    :try_start_6
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 63
    :goto_1
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 66
    goto :goto_2

    .line 67
    :catchall_3
    move-exception p2

    .line 68
    :try_start_8
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :goto_2
    throw p3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 72
    :catch_0
    const-string p2, "Unable to read backup pw version"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 p2, 0x1

    .line 78
    iput p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 80
    :goto_3
    :try_start_9
    new-instance p2, Ljava/io/File;

    .line 82
    iget-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 84
    const-string/jumbo v0, "pwhash"

    .line 87
    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    new-instance p3, Ljava/io/FileInputStream;

    .line 92
    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 95
    :try_start_a
    new-instance p2, Ljava/io/DataInputStream;

    .line 97
    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 100
    :try_start_b
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    .line 103
    move-result v0

    .line 104
    new-array v0, v0, [B

    .line 106
    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 109
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 115
    invoke-direct {v2, v1, v0}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 118
    :try_start_c
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 121
    :try_start_d
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V

    .line 124
    iget-object p2, v2, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 128
    iget-object p2, v2, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    .line 130
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 132
    goto :goto_7

    .line 133
    :catchall_4
    move-exception p0

    .line 134
    goto :goto_5

    .line 135
    :catchall_5
    move-exception p0

    .line 136
    :try_start_e
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 139
    goto :goto_4

    .line 140
    :catchall_6
    move-exception p2

    .line 141
    :try_start_f
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    :goto_4
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 145
    :goto_5
    :try_start_10
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 148
    goto :goto_6

    .line 149
    :catchall_7
    move-exception p2

    .line 150
    :try_start_11
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 153
    :goto_6
    throw p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 154
    :catch_1
    const-string p0, "Unable to read saved backup pw hash"

    .line 156
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_7
    return-void
.end method


# virtual methods
.method public final passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_2

    .line 7
    if-eqz p2, :cond_1

    .line 9
    const-string p0, ""

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :cond_1
    :goto_0
    return v1

    .line 20
    :cond_2
    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 28
    goto :goto_2

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 34
    move-result-object p2

    .line 35
    const/16 v2, 0x2710

    .line 37
    invoke-static {p1, p2, v0, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 43
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/4 p1, 0x0

    .line 53
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_5
    :goto_2
    return v2
.end method

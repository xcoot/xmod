.class public final Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mCurrentPassword:Ljava/lang/String;

.field public final mDecryptPassword:Ljava/lang/String;

.field public final mInputFile:Landroid/os/ParcelFileDescriptor;

.field public final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOperationTypeMIGRATION:Z

.field public final mPrivilegeApp:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 9
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 13
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 15
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 21
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 25
    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 28
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 30
    iput-boolean p8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 32
    iput-boolean p9, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 34
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 40
    const-string p0, "BackupManagerService"

    .line 42
    const-string p1, "Backup Manager Yuva is Supported"

    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    .line 50
    move-result-object p0

    .line 51
    sput-object p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 53
    :cond_0
    return-void
.end method

.method public static attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v1, p4

    .line 4
    const-string v2, "Incorrect password"

    .line 6
    const-string v3, "AES"

    .line 8
    const-string v4, "BackupManagerService"

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    const-string v6, "AES/CBC/PKCS5Padding"

    .line 13
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 20
    move-result-object v7

    .line 21
    move-object/from16 v8, p2

    .line 23
    invoke-static {p1, v7, v8, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 26
    move-result-object v7

    .line 27
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 30
    move-result-object v8

    .line 31
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    .line 33
    invoke-direct {v9, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 36
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 38
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 41
    move-result-object v7

    .line 42
    invoke-direct {v8, v7, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    const/4 v7, 0x2

    .line 46
    invoke-virtual {v6, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v6, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 56
    move-result-object v8

    .line 57
    const/4 v9, 0x0

    .line 58
    aget-byte v10, v8, v9

    .line 60
    const/4 v11, 0x1

    .line 61
    add-int v12, v11, v10

    .line 63
    invoke-static {v8, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 66
    move-result-object v11

    .line 67
    add-int/2addr v10, v7

    .line 68
    aget-byte v12, v8, v12

    .line 70
    add-int/2addr v12, v10

    .line 71
    invoke-static {v8, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 74
    move-result-object v10

    .line 75
    add-int/lit8 v13, v12, 0x1

    .line 77
    aget-byte v12, v8, v12

    .line 79
    add-int/2addr v12, v13

    .line 80
    invoke-static {v8, v13, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 83
    move-result-object v8

    .line 84
    array-length v12, v10

    .line 85
    new-array v12, v12, [C

    .line 87
    :goto_0
    array-length v13, v10

    .line 88
    if-ge v9, v13, :cond_0

    .line 90
    aget-byte v13, v10, v9

    .line 92
    int-to-char v13, v13

    .line 93
    aput-char v13, v12, v9

    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v9, p3

    .line 100
    invoke-static {p1, v12, v9, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 116
    invoke-direct {v0, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 119
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 121
    invoke-direct {v1, v10, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 124
    invoke-virtual {v6, v7, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 127
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 129
    move-object/from16 v1, p7

    .line 131
    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 134
    move-object v5, v0

    .line 135
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    if-eqz p8, :cond_2

    .line 140
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    goto :goto_2

    .line 144
    :catch_1
    if-eqz p8, :cond_2

    .line 146
    const-string v0, "Illegal password; aborting"

    .line 148
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_2

    .line 152
    :catch_2
    if-eqz p8, :cond_2

    .line 154
    const-string v0, "Needed padding mechanism unavailable!"

    .line 156
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_2

    .line 160
    :catch_3
    if-eqz p8, :cond_2

    .line 162
    const-string v0, "Needed decryption algorithm unavailable!"

    .line 164
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    goto :goto_2

    .line 168
    :catch_4
    if-eqz p8, :cond_2

    .line 170
    const-string v0, "Invalid block size in encryption key"

    .line 172
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_2

    .line 176
    :catch_5
    if-eqz p8, :cond_2

    .line 178
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_2

    .line 182
    :goto_1
    if-eqz p8, :cond_2

    .line 184
    const-string v1, "Needed parameter spec unavailable!"

    .line 186
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    :cond_2
    :goto_2
    return-object v5
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xf

    .line 3
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_1

    .line 9
    rsub-int/lit8 v4, v3, 0xf

    .line 11
    move-object/from16 v14, p0

    .line 13
    invoke-virtual {v14, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 16
    move-result v4

    .line 17
    if-lez v4, :cond_0

    .line 19
    add-int/2addr v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 23
    const-string v1, "Couldn\'t fully read data"

    .line 25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    throw v0

    .line 29
    :cond_1
    move-object/from16 v14, p0

    .line 31
    const-string v0, "ANDROID BACKUP\n"

    .line 33
    const-string v3, "UTF-8"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v3, "BackupManagerService"

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v0, :cond_a

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x5

    .line 58
    if-gt v5, v6, :cond_9

    .line 60
    if-ne v5, v4, :cond_2

    .line 62
    move v0, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v0, v2

    .line 65
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 75
    move v15, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v15, v2

    .line 78
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    const-string/jumbo v6, "none"

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 91
    move v2, v4

    .line 92
    goto/16 :goto_6

    .line 94
    :cond_4
    if-eqz p1, :cond_8

    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 99
    move-result v6

    .line 100
    if-lez v6, :cond_8

    .line 102
    const-string v6, "Unsupported encryption method: "

    .line 104
    :try_start_0
    const-string v7, "AES-256"

    .line 106
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_5

    .line 112
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 119
    move-result-object v16

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 127
    move-result-object v17

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    move-result v18

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 139
    move-result-object v19

    .line 140
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 143
    move-result-object v20

    .line 144
    const-string v6, "PBKDF2WithHmacSHA1"

    .line 146
    const/4 v13, 0x0

    .line 147
    move-object/from16 v5, p1

    .line 149
    move-object/from16 v7, v16

    .line 151
    move-object/from16 v8, v17

    .line 153
    move/from16 v9, v18

    .line 155
    move-object/from16 v10, v19

    .line 157
    move-object/from16 v11, v20

    .line 159
    move-object/from16 v12, p0

    .line 161
    invoke-static/range {v5 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 164
    move-result-object v21
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    if-nez v21, :cond_6

    .line 167
    if-eqz v0, :cond_6

    .line 169
    :try_start_1
    const-string v6, "PBKDF2WithHmacSHA1And8bit"

    .line 171
    const/4 v13, 0x1

    .line 172
    move-object/from16 v5, p1

    .line 174
    move-object/from16 v7, v16

    .line 176
    move-object/from16 v8, v17

    .line 178
    move/from16 v9, v18

    .line 180
    move-object/from16 v10, v19

    .line 182
    move-object/from16 v11, v20

    .line 184
    move-object/from16 v12, p0

    .line 186
    invoke-static/range {v5 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 189
    move-result-object v21
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    goto :goto_5

    .line 191
    :catch_0
    move-object/from16 v21, v1

    .line 193
    goto :goto_3

    .line 194
    :catch_1
    move-object/from16 v21, v1

    .line 196
    goto :goto_4

    .line 197
    :cond_5
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    move-object/from16 v21, v1

    .line 206
    goto :goto_5

    .line 207
    :catch_2
    :goto_3
    const-string v0, "Can\'t read input header"

    .line 209
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    goto :goto_5

    .line 213
    :catch_3
    :goto_4
    const-string v0, "Can\'t parse restore data header"

    .line 215
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_6
    :goto_5
    if-eqz v21, :cond_7

    .line 220
    move v2, v4

    .line 221
    :cond_7
    move-object/from16 v14, v21

    .line 223
    goto :goto_6

    .line 224
    :cond_8
    const-string v0, "Archive is encrypted but no password given"

    .line 226
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_6
    move v0, v2

    .line 230
    move v2, v15

    .line 231
    goto :goto_7

    .line 232
    :cond_9
    const-string v5, "Wrong header version: "

    .line 234
    invoke-static {v5, v0, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move v0, v2

    .line 238
    :goto_7
    move/from16 v22, v2

    .line 240
    move v2, v0

    .line 241
    move/from16 v0, v22

    .line 243
    goto :goto_8

    .line 244
    :cond_a
    const-string v0, "Didn\'t read the right header magic"

    .line 246
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    move v0, v2

    .line 250
    :goto_8
    if-nez v2, :cond_c

    .line 252
    const-string v0, "Invalid restore data; aborting."

    .line 254
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 259
    if-eqz v0, :cond_b

    .line 261
    iput-boolean v4, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 263
    :cond_b
    return-object v1

    .line 264
    :cond_c
    if-eqz v0, :cond_d

    .line 266
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .line 268
    invoke-direct {v0, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    move-object v14, v0

    .line 272
    :cond_d
    return-object v14
.end method

.method public static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const/16 v1, 0x50

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_1

    .line 14
    const/16 v2, 0xa

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    int-to-char v1, v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "BackupManagerService"

    .line 5
    const-string v2, "--- Performing full-dataset restore ---"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v2, Landroid/content/Intent;

    .line 17
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 20
    new-instance v3, Landroid/content/ComponentName;

    .line 22
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    .line 25
    const-string/jumbo v5, "com.android.sharedstoragebackup.ObbBackupService"

    .line 28
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 37
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 39
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-virtual {v3, v2, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 45
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v0, "BackupManagerService"

    .line 56
    const-string/jumbo v3, "full restore observer went away: startRestore"

    .line 59
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-object v0, v2

    .line 63
    :cond_0
    :goto_0
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 65
    const/4 v3, 0x0

    .line 66
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 68
    if-nez v0, :cond_5

    .line 70
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 72
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 74
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 76
    iget-object v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 78
    const-string v7, "android.permission.BACKUP"

    .line 80
    const-string/jumbo v8, "hasBackupPassword"

    .line 83
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 88
    if-eqz v6, :cond_5

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 93
    move-result v6

    .line 94
    if-lez v6, :cond_5

    .line 96
    const-string v6, "PBKDF2WithHmacSHA1"

    .line 98
    invoke-virtual {v0, v6, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_5

    .line 104
    iget v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 106
    const/4 v7, 0x2

    .line 107
    if-ge v6, v7, :cond_1

    .line 109
    const-string v6, "PBKDF2WithHmacSHA1And8bit"

    .line 111
    invoke-virtual {v0, v6, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 117
    goto :goto_5

    .line 118
    :cond_1
    const-string v0, "BackupManagerService"

    .line 120
    const-string v4, "Backup password mismatch; aborting"

    .line 122
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 127
    if-eqz v0, :cond_2

    .line 129
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    goto :goto_3

    .line 132
    :goto_1
    move-object v4, v2

    .line 133
    :goto_2
    move-object v2, v0

    .line 134
    goto/16 :goto_12

    .line 136
    :cond_2
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    goto :goto_4

    .line 142
    :catch_1
    move-exception v0

    .line 143
    const-string v2, "BackupManagerService"

    .line 145
    const-string v4, "Close of restore data pipe threw"

    .line 147
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_4
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    monitor-enter v4

    .line 153
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 169
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 171
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 174
    move-result-object v0

    .line 175
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 177
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 179
    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 184
    :cond_3
    const-string v0, "BackupManagerService"

    .line 186
    const-string v2, "Full restore pass complete."

    .line 188
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 193
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 195
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 197
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 205
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 207
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 210
    :cond_4
    return-void

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    throw v0

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    goto :goto_1

    .line 216
    :cond_5
    :goto_5
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    .line 218
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 220
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 229
    invoke-static {v4, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    .line 232
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 233
    if-nez v2, :cond_8

    .line 235
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 238
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 240
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 243
    goto :goto_6

    .line 244
    :catch_2
    move-exception v0

    .line 245
    const-string v2, "BackupManagerService"

    .line 247
    const-string v4, "Close of restore data pipe threw"

    .line 249
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :goto_6
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 254
    monitor-enter v6

    .line 255
    :try_start_8
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 266
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 268
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 271
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 273
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 276
    move-result-object v0

    .line 277
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 279
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 281
    if-eqz v0, :cond_6

    .line 283
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 286
    :cond_6
    const-string v0, "BackupManagerService"

    .line 288
    const-string v2, "Full restore pass complete."

    .line 290
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 295
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 297
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 299
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_7

    .line 305
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 307
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 309
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 312
    :cond_7
    return-void

    .line 313
    :catchall_2
    move-exception v0

    .line 314
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 315
    throw v0

    .line 316
    :cond_8
    :try_start_a
    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 318
    if-eqz v0, :cond_9

    .line 320
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 322
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 324
    iget-object v7, v6, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 326
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 328
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 331
    move-result-object v6

    .line 332
    move-object v8, v6

    .line 333
    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 335
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 337
    iget v9, v6, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 339
    iget-object v10, v6, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 341
    const/4 v12, 0x0

    .line 342
    const/4 v11, 0x1

    .line 343
    move-object v6, v0

    .line 344
    invoke-direct/range {v6 .. v12}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 347
    :goto_7
    move-object/from16 v30, v0

    .line 349
    goto :goto_8

    .line 350
    :catch_3
    move-object v2, v4

    .line 351
    goto/16 :goto_d

    .line 353
    :catchall_3
    move-exception v0

    .line 354
    goto/16 :goto_2

    .line 356
    :cond_9
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 358
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 360
    iget-object v14, v6, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 362
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 364
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 367
    move-result-object v6

    .line 368
    move-object v15, v6

    .line 369
    check-cast v15, Landroid/content/pm/PackageManagerInternal;

    .line 371
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 373
    iget v7, v6, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 375
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 377
    const/16 v19, 0x0

    .line 379
    const/16 v18, 0x2

    .line 381
    move-object v13, v0

    .line 382
    move/from16 v16, v7

    .line 384
    move-object/from16 v17, v6

    .line 386
    invoke-direct/range {v13 .. v19}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 389
    goto :goto_7

    .line 390
    :goto_8
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 392
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 394
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 396
    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 398
    move-object/from16 v22, v7

    .line 400
    check-cast v22, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 402
    const/16 v28, 0x0

    .line 404
    const/16 v29, 0x1

    .line 406
    const/16 v23, 0x0

    .line 408
    const/16 v25, 0x0

    .line 410
    const/16 v26, 0x0

    .line 412
    const/16 v27, 0x1

    .line 414
    move-object/from16 v20, v0

    .line 416
    move-object/from16 v21, v6

    .line 418
    move-object/from16 v24, v8

    .line 420
    invoke-direct/range {v20 .. v30}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 423
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 425
    iput-boolean v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 427
    const/4 v14, 0x1

    .line 428
    invoke-virtual {v0, v14}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 431
    :goto_9
    :try_start_b
    iget-object v6, v0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 433
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 436
    move-result v6

    .line 437
    if-eqz v6, :cond_a

    .line 439
    iget-object v9, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 441
    iget-object v10, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 443
    iget-boolean v11, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 445
    iget v12, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 447
    iget-object v13, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 449
    move-object v6, v0

    .line 450
    move-object v7, v2

    .line 451
    move v8, v14

    .line 452
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 455
    goto :goto_9

    .line 456
    :catchall_4
    move-exception v0

    .line 457
    goto :goto_c

    .line 458
    :cond_a
    :try_start_c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 461
    iget-boolean v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 463
    if-nez v0, :cond_b

    .line 465
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 467
    if-eqz v0, :cond_b

    .line 469
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 471
    :cond_b
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 474
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 476
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 479
    goto :goto_a

    .line 480
    :catch_4
    move-exception v0

    .line 481
    const-string v2, "BackupManagerService"

    .line 483
    const-string v4, "Close of restore data pipe threw"

    .line 485
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    :goto_a
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 490
    monitor-enter v2

    .line 491
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 493
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 496
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 501
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 502
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 504
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 507
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 509
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 512
    move-result-object v0

    .line 513
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 515
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 517
    if-eqz v0, :cond_c

    .line 519
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 522
    :cond_c
    const-string v0, "BackupManagerService"

    .line 524
    const-string v2, "Full restore pass complete."

    .line 526
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 531
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 533
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 535
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_10

    .line 541
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 543
    :goto_b
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 545
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 548
    goto :goto_11

    .line 549
    :catchall_5
    move-exception v0

    .line 550
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 551
    throw v0

    .line 552
    :goto_c
    :try_start_10
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 555
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 556
    :catch_5
    :goto_d
    :try_start_11
    const-string v0, "BackupManagerService"

    .line 558
    const-string v4, "Unable to read restore input"

    .line 560
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 565
    if-eqz v0, :cond_d

    .line 567
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 569
    :cond_d
    if-eqz v2, :cond_e

    .line 571
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 574
    goto :goto_e

    .line 575
    :catch_6
    move-exception v0

    .line 576
    goto :goto_f

    .line 577
    :cond_e
    :goto_e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 579
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 582
    goto :goto_10

    .line 583
    :goto_f
    const-string v2, "BackupManagerService"

    .line 585
    const-string v4, "Close of restore data pipe threw"

    .line 587
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    :goto_10
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 592
    monitor-enter v4

    .line 593
    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 595
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 598
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 600
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 603
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 604
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 606
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 609
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 611
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 614
    move-result-object v0

    .line 615
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 617
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 619
    if-eqz v0, :cond_f

    .line 621
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 624
    :cond_f
    const-string v0, "BackupManagerService"

    .line 626
    const-string v2, "Full restore pass complete."

    .line 628
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 633
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 635
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 637
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_10

    .line 643
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 645
    goto :goto_b

    .line 646
    :cond_10
    :goto_11
    return-void

    .line 647
    :catchall_6
    move-exception v0

    .line 648
    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 649
    throw v0

    .line 650
    :goto_12
    if-eqz v4, :cond_11

    .line 652
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 655
    goto :goto_13

    .line 656
    :catch_7
    move-exception v0

    .line 657
    goto :goto_14

    .line 658
    :cond_11
    :goto_13
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 660
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 663
    goto :goto_15

    .line 664
    :goto_14
    const-string v4, "BackupManagerService"

    .line 666
    const-string v6, "Close of restore data pipe threw"

    .line 668
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    :goto_15
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 673
    monitor-enter v4

    .line 674
    :try_start_16
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 676
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 679
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 681
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 684
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 687
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 692
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 695
    move-result-object v0

    .line 696
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 698
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 700
    if-eqz v0, :cond_12

    .line 702
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 705
    :cond_12
    const-string v0, "BackupManagerService"

    .line 707
    const-string v4, "Full restore pass complete."

    .line 709
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 714
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 716
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 718
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_13

    .line 724
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 726
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 728
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 731
    :cond_13
    throw v2

    .line 732
    :catchall_7
    move-exception v0

    .line 733
    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 734
    throw v0
.end method

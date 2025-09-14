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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 20
    .line 21
    iput-object p7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance p2, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 29
    .line 30
    iput-boolean p8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 31
    .line 32
    iput-boolean p9, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationTypeMIGRATION:Z

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    const-string p0, "BackupManagerService"

    .line 41
    .line 42
    const-string p1, "Backup Manager Yuva is Supported"

    .line 43
    .line 44
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sput-object p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 52
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

    .line 3
    .line 4
    const-string v2, "Incorrect password"

    .line 5
    .line 6
    const-string v3, "AES"

    .line 7
    .line 8
    const-string v4, "BackupManagerService"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    const-string v6, "AES/CBC/PKCS5Padding"

    .line 12
    .line 13
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    move-object/from16 v8, p2

    .line 22
    .line 23
    invoke-static {p1, v7, v8, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    .line 32
    .line 33
    invoke-direct {v9, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-direct {v8, v7, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    invoke-virtual {v6, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 47
    .line 48
    .line 49
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v6, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    const/4 v9, 0x0

    .line 58
    aget-byte v10, v8, v9

    .line 59
    .line 60
    const/4 v11, 0x1

    .line 61
    add-int v12, v11, v10

    .line 62
    .line 63
    invoke-static {v8, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    add-int/2addr v10, v7

    .line 68
    aget-byte v12, v8, v12

    .line 69
    .line 70
    add-int/2addr v12, v10

    .line 71
    invoke-static {v8, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    add-int/lit8 v13, v12, 0x1

    .line 76
    .line 77
    aget-byte v12, v8, v12

    .line 78
    .line 79
    add-int/2addr v12, v13

    .line 80
    invoke-static {v8, v13, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    array-length v12, v10

    .line 85
    new-array v12, v12, [C

    .line 86
    .line 87
    :goto_0
    array-length v13, v10

    .line 88
    if-ge v9, v13, :cond_0

    .line 89
    .line 90
    aget-byte v13, v10, v9

    .line 91
    .line 92
    int-to-char v13, v13

    .line 93
    aput-char v13, v12, v9

    .line 94
    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v9, p3

    .line 99
    .line 100
    invoke-static {p1, v12, v9, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 115
    .line 116
    invoke-direct {v0, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 120
    .line 121
    invoke-direct {v1, v10, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v7, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 128
    .line 129
    move-object/from16 v1, p7

    .line 130
    .line 131
    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 132
    .line 133
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

    .line 139
    .line 140
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catch_1
    if-eqz p8, :cond_2

    .line 145
    .line 146
    const-string v0, "Illegal password; aborting"

    .line 147
    .line 148
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catch_2
    if-eqz p8, :cond_2

    .line 153
    .line 154
    const-string v0, "Needed padding mechanism unavailable!"

    .line 155
    .line 156
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_3
    if-eqz p8, :cond_2

    .line 161
    .line 162
    const-string v0, "Needed decryption algorithm unavailable!"

    .line 163
    .line 164
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_4
    if-eqz p8, :cond_2

    .line 169
    .line 170
    const-string v0, "Invalid block size in encryption key"

    .line 171
    .line 172
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_5
    if-eqz p8, :cond_2

    .line 177
    .line 178
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_1
    if-eqz p8, :cond_2

    .line 183
    .line 184
    const-string v1, "Needed parameter spec unavailable!"

    .line 185
    .line 186
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .line 188
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

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_1

    .line 8
    .line 9
    rsub-int/lit8 v4, v3, 0xf

    .line 10
    .line 11
    move-object/from16 v14, p0

    .line 12
    .line 13
    invoke-virtual {v14, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    add-int/2addr v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v1, "Couldn\'t fully read data"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    move-object/from16 v14, p0

    .line 30
    .line 31
    const-string v0, "ANDROID BACKUP\n"

    .line 32
    .line 33
    const-string v3, "UTF-8"

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string v3, "BackupManagerService"

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v0, :cond_a

    .line 48
    .line 49
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x5

    .line 58
    if-gt v5, v6, :cond_9

    .line 59
    .line 60
    if-ne v5, v4, :cond_2

    .line 61
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

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
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

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string/jumbo v6, "none"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_4
    if-eqz p1, :cond_8

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-lez v6, :cond_8

    .line 101
    .line 102
    const-string v6, "Unsupported encryption method: "

    .line 103
    .line 104
    :try_start_0
    const-string v7, "AES-256"

    .line 105
    .line 106
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v17

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v18

    .line 136
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    invoke-static/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v20

    .line 144
    const-string v6, "PBKDF2WithHmacSHA1"

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    move-object/from16 v5, p1

    .line 148
    .line 149
    move-object/from16 v7, v16

    .line 150
    .line 151
    move-object/from16 v8, v17

    .line 152
    .line 153
    move/from16 v9, v18

    .line 154
    .line 155
    move-object/from16 v10, v19

    .line 156
    .line 157
    move-object/from16 v11, v20

    .line 158
    .line 159
    move-object/from16 v12, p0

    .line 160
    .line 161
    invoke-static/range {v5 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 162
    .line 163
    .line 164
    move-result-object v21
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    if-nez v21, :cond_6

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    :try_start_1
    const-string v6, "PBKDF2WithHmacSHA1And8bit"

    .line 170
    .line 171
    const/4 v13, 0x1

    .line 172
    move-object/from16 v5, p1

    .line 173
    .line 174
    move-object/from16 v7, v16

    .line 175
    .line 176
    move-object/from16 v8, v17

    .line 177
    .line 178
    move/from16 v9, v18

    .line 179
    .line 180
    move-object/from16 v10, v19

    .line 181
    .line 182
    move-object/from16 v11, v20

    .line 183
    .line 184
    move-object/from16 v12, p0

    .line 185
    .line 186
    invoke-static/range {v5 .. v13}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptEncryptionKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 187
    .line 188
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

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :catch_1
    move-object/from16 v21, v1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_5
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .line 203
    .line 204
    move-object/from16 v21, v1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :catch_2
    :goto_3
    const-string v0, "Can\'t read input header"

    .line 208
    .line 209
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :catch_3
    :goto_4
    const-string v0, "Can\'t parse restore data header"

    .line 214
    .line 215
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_6
    :goto_5
    if-eqz v21, :cond_7

    .line 219
    .line 220
    move v2, v4

    .line 221
    :cond_7
    move-object/from16 v14, v21

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_8
    const-string v0, "Archive is encrypted but no password given"

    .line 225
    .line 226
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
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

    .line 233
    .line 234
    invoke-static {v5, v0, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move v0, v2

    .line 238
    :goto_7
    move/from16 v22, v2

    .line 239
    .line 240
    move v2, v0

    .line 241
    move/from16 v0, v22

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_a
    const-string v0, "Didn\'t read the right header magic"

    .line 245
    .line 246
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move v0, v2

    .line 250
    :goto_8
    if-nez v2, :cond_c

    .line 251
    .line 252
    const-string v0, "Invalid restore data; aborting."

    .line 253
    .line 254
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 258
    .line 259
    if-eqz v0, :cond_b

    .line 260
    .line 261
    iput-boolean v4, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 262
    .line 263
    :cond_b
    return-object v1

    .line 264
    :cond_c
    if-eqz v0, :cond_d

    .line 265
    .line 266
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .line 267
    .line 268
    invoke-direct {v0, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .line 270
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

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    const/16 v2, 0xa

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    int-to-char v1, v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
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

    .line 2
    .line 3
    const-string v0, "BackupManagerService"

    .line 4
    .line 5
    const-string v2, "--- Performing full-dataset restore ---"

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Landroid/content/ComponentName;

    .line 21
    .line 22
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v5, "com.android.sharedstoragebackup.ObbBackupService"

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 40
    .line 41
    const/4 v5, 0x1

    .line 42
    invoke-virtual {v3, v2, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string v0, "BackupManagerService"

    .line 55
    .line 56
    const-string/jumbo v3, "full restore observer went away: startRestore"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-object v0, v2

    .line 63
    :cond_0
    :goto_0
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 67
    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 71
    .line 72
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 75
    .line 76
    iget-object v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-string v7, "android.permission.BACKUP"

    .line 79
    .line 80
    const-string/jumbo v8, "hasBackupPassword"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-lez v6, :cond_5

    .line 95
    .line 96
    const-string v6, "PBKDF2WithHmacSHA1"

    .line 97
    .line 98
    invoke-virtual {v0, v6, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-nez v6, :cond_5

    .line 103
    .line 104
    iget v6, v0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 105
    .line 106
    const/4 v7, 0x2

    .line 107
    if-ge v6, v7, :cond_1

    .line 108
    .line 109
    const-string v6, "PBKDF2WithHmacSHA1And8bit"

    .line 110
    .line 111
    invoke-virtual {v0, v6, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_1
    const-string v0, "BackupManagerService"

    .line 119
    .line 120
    const-string v4, "Backup password mismatch; aborting"

    .line 121
    .line 122
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
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

    .line 135
    .line 136
    :cond_2
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catch_1
    move-exception v0

    .line 143
    const-string v2, "BackupManagerService"

    .line 144
    .line 145
    const-string v4, "Close of restore data pipe threw"

    .line 146
    .line 147
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :goto_4
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    .line 152
    monitor-enter v4

    .line 153
    :try_start_3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    .line 162
    .line 163
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 176
    .line 177
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 178
    .line 179
    if-eqz v0, :cond_3

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 182
    .line 183
    .line 184
    :cond_3
    const-string v0, "BackupManagerService"

    .line 185
    .line 186
    const-string v2, "Full restore pass complete."

    .line 187
    .line 188
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 192
    .line 193
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 208
    .line 209
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

    .line 217
    .line 218
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 225
    .line 226
    .line 227
    :try_start_6
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v4, v0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 233
    if-nez v2, :cond_8

    .line 234
    .line 235
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 236
    .line 237
    .line 238
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :catch_2
    move-exception v0

    .line 245
    const-string v2, "BackupManagerService"

    .line 246
    .line 247
    const-string v4, "Close of restore data pipe threw"

    .line 248
    .line 249
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .line 251
    .line 252
    :goto_6
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    .line 254
    monitor-enter v6

    .line 255
    :try_start_8
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    .line 257
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    .line 259
    .line 260
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    .line 264
    .line 265
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 266
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 278
    .line 279
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 280
    .line 281
    if-eqz v0, :cond_6

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 284
    .line 285
    .line 286
    :cond_6
    const-string v0, "BackupManagerService"

    .line 287
    .line 288
    const-string v2, "Full restore pass complete."

    .line 289
    .line 290
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 294
    .line 295
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_7

    .line 304
    .line 305
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 306
    .line 307
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 310
    .line 311
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

    .line 317
    .line 318
    if-eqz v0, :cond_9

    .line 319
    .line 320
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 321
    .line 322
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 323
    .line 324
    iget-object v7, v6, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 325
    .line 326
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 327
    .line 328
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    move-object v8, v6

    .line 333
    check-cast v8, Landroid/content/pm/PackageManagerInternal;

    .line 334
    .line 335
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 336
    .line 337
    iget v9, v6, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 338
    .line 339
    iget-object v10, v6, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    const/4 v12, 0x0

    .line 342
    const/4 v11, 0x1

    .line 343
    move-object v6, v0

    .line 344
    invoke-direct/range {v6 .. v12}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 345
    .line 346
    .line 347
    :goto_7
    move-object/from16 v30, v0

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :catch_3
    move-object v2, v4

    .line 351
    goto/16 :goto_d

    .line 352
    .line 353
    :catchall_3
    move-exception v0

    .line 354
    goto/16 :goto_2

    .line 355
    .line 356
    :cond_9
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 357
    .line 358
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 359
    .line 360
    iget-object v14, v6, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 361
    .line 362
    const-class v6, Landroid/content/pm/PackageManagerInternal;

    .line 363
    .line 364
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    move-object v15, v6

    .line 369
    check-cast v15, Landroid/content/pm/PackageManagerInternal;

    .line 370
    .line 371
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 372
    .line 373
    iget v7, v6, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 374
    .line 375
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 376
    .line 377
    const/16 v19, 0x0

    .line 378
    .line 379
    const/16 v18, 0x2

    .line 380
    .line 381
    move-object v13, v0

    .line 382
    move/from16 v16, v7

    .line 383
    .line 384
    move-object/from16 v17, v6

    .line 385
    .line 386
    invoke-direct/range {v13 .. v19}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :goto_8
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 391
    .line 392
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 393
    .line 394
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 395
    .line 396
    iget-object v8, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 397
    .line 398
    move-object/from16 v22, v7

    .line 399
    .line 400
    check-cast v22, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 401
    .line 402
    const/16 v28, 0x0

    .line 403
    .line 404
    const/16 v29, 0x1

    .line 405
    .line 406
    const/16 v23, 0x0

    .line 407
    .line 408
    const/16 v25, 0x0

    .line 409
    .line 410
    const/16 v26, 0x0

    .line 411
    .line 412
    const/16 v27, 0x1

    .line 413
    .line 414
    move-object/from16 v20, v0

    .line 415
    .line 416
    move-object/from16 v21, v6

    .line 417
    .line 418
    move-object/from16 v24, v8

    .line 419
    .line 420
    invoke-direct/range {v20 .. v30}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 421
    .line 422
    .line 423
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPrivilegeApp:Z

    .line 424
    .line 425
    iput-boolean v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 426
    .line 427
    const/4 v14, 0x1

    .line 428
    invoke-virtual {v0, v14}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 429
    .line 430
    .line 431
    :goto_9
    :try_start_b
    iget-object v6, v0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 432
    .line 433
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    if-eqz v6, :cond_a

    .line 438
    .line 439
    iget-object v9, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 440
    .line 441
    iget-object v10, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 442
    .line 443
    iget-boolean v11, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 444
    .line 445
    iget v12, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 446
    .line 447
    iget-object v13, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 448
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

    .line 453
    .line 454
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

    .line 459
    .line 460
    .line 461
    iget-boolean v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 462
    .line 463
    if-nez v0, :cond_b

    .line 464
    .line 465
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 466
    .line 467
    if-eqz v0, :cond_b

    .line 468
    .line 469
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 470
    .line 471
    :cond_b
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 472
    .line 473
    .line 474
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 477
    .line 478
    .line 479
    goto :goto_a

    .line 480
    :catch_4
    move-exception v0

    .line 481
    const-string v2, "BackupManagerService"

    .line 482
    .line 483
    const-string v4, "Close of restore data pipe threw"

    .line 484
    .line 485
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .line 487
    .line 488
    :goto_a
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 489
    .line 490
    monitor-enter v2

    .line 491
    :try_start_e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 492
    .line 493
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 499
    .line 500
    .line 501
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 502
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 505
    .line 506
    .line 507
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 508
    .line 509
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 514
    .line 515
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 516
    .line 517
    if-eqz v0, :cond_c

    .line 518
    .line 519
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 520
    .line 521
    .line 522
    :cond_c
    const-string v0, "BackupManagerService"

    .line 523
    .line 524
    const-string v2, "Full restore pass complete."

    .line 525
    .line 526
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 530
    .line 531
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 532
    .line 533
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_10

    .line 540
    .line 541
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 542
    .line 543
    :goto_b
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 544
    .line 545
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 546
    .line 547
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

    .line 553
    .line 554
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

    .line 557
    .line 558
    const-string v4, "Unable to read restore input"

    .line 559
    .line 560
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 564
    .line 565
    if-eqz v0, :cond_d

    .line 566
    .line 567
    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 568
    .line 569
    :cond_d
    if-eqz v2, :cond_e

    .line 570
    .line 571
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 572
    .line 573
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

    .line 578
    .line 579
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 580
    .line 581
    .line 582
    goto :goto_10

    .line 583
    :goto_f
    const-string v2, "BackupManagerService"

    .line 584
    .line 585
    const-string v4, "Close of restore data pipe threw"

    .line 586
    .line 587
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .line 589
    .line 590
    :goto_10
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 591
    .line 592
    monitor-enter v4

    .line 593
    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 594
    .line 595
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 596
    .line 597
    .line 598
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 601
    .line 602
    .line 603
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 604
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 605
    .line 606
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 607
    .line 608
    .line 609
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 610
    .line 611
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 616
    .line 617
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 618
    .line 619
    if-eqz v0, :cond_f

    .line 620
    .line 621
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 622
    .line 623
    .line 624
    :cond_f
    const-string v0, "BackupManagerService"

    .line 625
    .line 626
    const-string v2, "Full restore pass complete."

    .line 627
    .line 628
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 632
    .line 633
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 634
    .line 635
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 636
    .line 637
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-eqz v0, :cond_10

    .line 642
    .line 643
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 644
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

    .line 651
    .line 652
    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 653
    .line 654
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

    .line 659
    .line 660
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 661
    .line 662
    .line 663
    goto :goto_15

    .line 664
    :goto_14
    const-string v4, "BackupManagerService"

    .line 665
    .line 666
    const-string v6, "Close of restore data pipe threw"

    .line 667
    .line 668
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    .line 670
    .line 671
    :goto_15
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 672
    .line 673
    monitor-enter v4

    .line 674
    :try_start_16
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 675
    .line 676
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 682
    .line 683
    .line 684
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 686
    .line 687
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 688
    .line 689
    .line 690
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 691
    .line 692
    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 697
    .line 698
    sget-object v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 699
    .line 700
    if-eqz v0, :cond_12

    .line 701
    .line 702
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndRestoreCallback()V

    .line 703
    .line 704
    .line 705
    :cond_12
    const-string v0, "BackupManagerService"

    .line 706
    .line 707
    const-string v4, "Full restore pass complete."

    .line 708
    .line 709
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    .line 711
    .line 712
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 713
    .line 714
    iput-boolean v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 715
    .line 716
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 717
    .line 718
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_13

    .line 723
    .line 724
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 725
    .line 726
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 727
    .line 728
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 729
    .line 730
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

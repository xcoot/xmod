.class public final Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final mAllApps:Z

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mCompress:Z

.field public final mCurrentOpToken:I

.field public final mCurrentPassword:Ljava/lang/String;

.field public mCurrentTarget:Landroid/content/pm/PackageInfo;

.field public final mDoWidgets:Z

.field public final mEncryptPassword:Ljava/lang/String;

.field public final mExtraFlag:I

.field public final mIncludeApks:Z

.field public final mIncludeObbs:Z

.field public final mIncludeShared:Z

.field public final mIncludeSystem:Z

.field public final mKeyValue:Z

.field public final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field public final mPackages:Ljava/util/ArrayList;

.field public final mPrivilegeApp:Z

.field public final mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mTransportFlags:I

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;I)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p9

    .line 3
    move-object/from16 v2, p10

    .line 4
    .line 5
    move-object v3, p4

    .line 6
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 7
    .line 8
    .line 9
    move-object v3, p1

    .line 10
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    .line 12
    move-object v4, p2

    .line 13
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iput v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 20
    .line 21
    move-object/from16 v4, p16

    .line 22
    .line 23
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    move-object v4, p3

    .line 26
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    move v4, p5

    .line 29
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 30
    .line 31
    move v4, p6

    .line 32
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 33
    .line 34
    move v4, p7

    .line 35
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 36
    .line 37
    move v4, p8

    .line 38
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 39
    .line 40
    move/from16 v4, p11

    .line 41
    .line 42
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 43
    .line 44
    move/from16 v4, p12

    .line 45
    .line 46
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 47
    .line 48
    if-nez p15, :cond_0

    .line 49
    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static/range {p15 .. p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    const-string v4, ""

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 81
    .line 82
    :goto_1
    move/from16 v1, p13

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_2
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :goto_3
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 89
    .line 90
    move/from16 v1, p14

    .line 91
    .line 92
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 93
    .line 94
    move-object/from16 v1, p17

    .line 95
    .line 96
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 97
    .line 98
    move/from16 v1, p18

    .line 99
    .line 100
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    .line 101
    .line 102
    move/from16 v1, p19

    .line 103
    .line 104
    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 105
    .line 106
    move-object/from16 v1, p20

    .line 107
    .line 108
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 109
    .line 110
    move/from16 v1, p21

    .line 111
    .line 112
    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    const-string v0, "BackupManagerService"

    .line 121
    .line 122
    const-string v1, "Backup Manager Yuva is Supported"

    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method public static finalizeBackup(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    :try_start_0
    new-array v0, v0, [B

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p0, "BackupManagerService"

    .line 10
    .line 11
    const-string v0, "Error attempting to finalize backup stream"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    const/high16 v2, 0x8000000

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string v1, "Unknown package "

    .line 38
    .line 39
    const-string v2, ", skipping"

    .line 40
    .line 41
    const-string v3, "BackupManagerService"

    .line 42
    .line 43
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public final emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "PBKDF2WithHmacSHA1"

    .line 19
    .line 20
    const/16 v4, 0x2710

    .line 21
    .line 22
    invoke-static {v3, v0, v2, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v5, 0x20

    .line 27
    .line 28
    new-array v5, v5, [B

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 31
    .line 32
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 44
    .line 45
    .line 46
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 47
    .line 48
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    .line 53
    .line 54
    const-string v8, "AES"

    .line 55
    .line 56
    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    .line 64
    .line 65
    invoke-direct {v8, p2, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "AES-256"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 p2, 0xa

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    array-length v7, v6

    .line 138
    new-array v7, v7, [C

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    :goto_0
    array-length v10, v6

    .line 142
    if-ge v9, v10, :cond_0

    .line 143
    .line 144
    aget-byte v10, v6, v9

    .line 145
    .line 146
    int-to-char v10, v10

    .line 147
    aput-char v10, v7, v9

    .line 148
    .line 149
    add-int/lit8 v9, v9, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v3, v7, v1, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 161
    .line 162
    array-length v4, v0

    .line 163
    array-length v6, v2

    .line 164
    add-int/2addr v4, v6

    .line 165
    array-length v6, v1

    .line 166
    add-int/2addr v4, v6

    .line 167
    add-int/lit8 v4, v4, 0x3

    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Ljava/io/DataOutputStream;

    .line 173
    .line 174
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    .line 176
    .line 177
    array-length v6, v0

    .line 178
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 182
    .line 183
    .line 184
    array-length v0, v2

    .line 185
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 189
    .line 190
    .line 191
    array-length v0, v1

    .line 192
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    return-object v8
.end method

.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "adb backup cancel of "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "BackupManagerService"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 30

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, ", including key-value backups"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    const-string v1, "BackupManagerService"

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "--- Performing adb backup"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " ---"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/util/TreeMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v14, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 42
    .line 43
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    .line 45
    invoke-direct {v14, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/content/ComponentName;

    .line 54
    .line 55
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, v14, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    invoke-virtual {v2, v1, v14, v13, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendStartBackup()V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 87
    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    .line 103
    iget-boolean v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    const/high16 v3, 0x8000000

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    move v3, v2

    .line 114
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-ge v3, v4, :cond_4

    .line 119
    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 125
    .line 126
    iget-boolean v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 127
    .line 128
    if-nez v5, :cond_2

    .line 129
    .line 130
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    .line 132
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 133
    .line 134
    and-int/2addr v5, v13

    .line 135
    if-nez v5, :cond_3

    .line 136
    .line 137
    :cond_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 146
    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-static {v2}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    .line 171
    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 175
    .line 176
    and-int/lit16 v1, v1, 0x200

    .line 177
    .line 178
    if-nez v1, :cond_b

    .line 179
    .line 180
    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_b

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/util/Map$Entry;

    .line 199
    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 205
    .line 206
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 207
    .line 208
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    invoke-virtual {v4, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_a

    .line 215
    .line 216
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 217
    .line 218
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 231
    .line 232
    invoke-virtual {v4, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    xor-int/2addr v4, v13

    .line 237
    if-eqz v4, :cond_8

    .line 238
    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 240
    .line 241
    .line 242
    const-string v4, "BackupManagerService"

    .line 243
    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v6, "Package "

    .line 247
    .line 248
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 252
    .line 253
    const-string v7, " is key-value."

    .line 254
    .line 255
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 263
    .line 264
    .line 265
    const-string v4, "BackupManagerService"

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v6, "Package "

    .line 270
    .line 271
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 275
    .line 276
    const-string v6, " is not eligible for backup, removing."

    .line 277
    .line 278
    invoke-static {v5, v3, v6, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Ljava/io/FileOutputStream;

    .line 292
    .line 293
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 294
    .line 295
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 300
    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    :try_start_0
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 304
    .line 305
    if-eqz v1, :cond_c

    .line 306
    .line 307
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-lez v1, :cond_c

    .line 312
    .line 313
    move v1, v13

    .line 314
    goto :goto_7

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    move-object v1, v0

    .line 317
    :goto_4
    move v6, v13

    .line 318
    move-object v4, v14

    .line 319
    move-object v3, v15

    .line 320
    goto/16 :goto_2d

    .line 321
    .line 322
    :catch_0
    move-exception v0

    .line 323
    :goto_5
    move v6, v13

    .line 324
    move-object v4, v14

    .line 325
    move-object v3, v15

    .line 326
    goto/16 :goto_24

    .line 327
    .line 328
    :catch_1
    :goto_6
    move v6, v13

    .line 329
    move-object v4, v14

    .line 330
    move-object v3, v15

    .line 331
    goto/16 :goto_28

    .line 332
    .line 333
    :cond_c
    move v1, v2

    .line 334
    :goto_7
    :try_start_2
    iget-boolean v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 335
    .line 336
    if-nez v3, :cond_10

    .line 337
    .line 338
    :try_start_3
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 339
    .line 340
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 341
    .line 342
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 343
    .line 344
    iget-object v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 345
    .line 346
    const-string v6, "android.permission.BACKUP"

    .line 347
    .line 348
    const-string/jumbo v7, "hasBackupPassword"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 355
    .line 356
    if-eqz v5, :cond_10

    .line 357
    .line 358
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-lez v5, :cond_10

    .line 363
    .line 364
    const-string v5, "PBKDF2WithHmacSHA1"

    .line 365
    .line 366
    invoke-virtual {v3, v5, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_10

    .line 371
    .line 372
    iget v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 373
    .line 374
    const/4 v6, 0x2

    .line 375
    if-ge v5, v6, :cond_d

    .line 376
    .line 377
    const-string v5, "PBKDF2WithHmacSHA1And8bit"

    .line 378
    .line 379
    invoke-virtual {v3, v5, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_d

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_d
    const-string v0, "BackupManagerService"

    .line 387
    .line 388
    const-string v1, "Backup password mismatch; aborting"

    .line 389
    .line 390
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    .line 392
    .line 393
    :try_start_4
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :catch_2
    move-exception v0

    .line 400
    const-string v1, "BackupManagerService"

    .line 401
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v3, "IO error closing adb backup file: "

    .line 405
    .line 406
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :goto_8
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 424
    .line 425
    monitor-enter v1

    .line 426
    :try_start_5
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 427
    .line 428
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    .line 430
    .line 431
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 434
    .line 435
    .line 436
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 438
    .line 439
    .line 440
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 441
    .line 442
    if-eqz v0, :cond_e

    .line 443
    .line 444
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 445
    .line 446
    .line 447
    :cond_e
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 448
    .line 449
    .line 450
    const-string v0, "BackupManagerService"

    .line 451
    .line 452
    const-string v1, "Full backup pass complete."

    .line 453
    .line 454
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 460
    .line 461
    .line 462
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 463
    .line 464
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_f

    .line 473
    .line 474
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 481
    .line 482
    .line 483
    :cond_f
    return-void

    .line 484
    :catchall_1
    move-exception v0

    .line 485
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 486
    throw v0

    .line 487
    :cond_10
    :goto_9
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const/16 v4, 0x400

    .line 490
    .line 491
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .line 493
    .line 494
    const-string v4, "ANDROID BACKUP\n"

    .line 495
    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const/4 v4, 0x5

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 504
    .line 505
    if-eqz v4, :cond_11

    .line 506
    .line 507
    :try_start_8
    const-string v4, "\n1\n"
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_11
    :try_start_9
    const-string v4, "\n0\n"

    .line 511
    .line 512
    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 513
    .line 514
    .line 515
    if-eqz v1, :cond_12

    .line 516
    .line 517
    :try_start_a
    invoke-virtual {v15, v3, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 518
    .line 519
    .line 520
    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 521
    goto :goto_b

    .line 522
    :catch_3
    move-exception v0

    .line 523
    move-object v2, v10

    .line 524
    move v6, v13

    .line 525
    move-object v4, v14

    .line 526
    move-object v3, v15

    .line 527
    goto/16 :goto_21

    .line 528
    .line 529
    :cond_12
    :try_start_b
    const-string/jumbo v1, "none\n"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    move-object v1, v0

    .line 536
    :goto_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    const-string v4, "UTF-8"

    .line 541
    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 547
    .line 548
    .line 549
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 550
    .line 551
    if-eqz v0, :cond_13

    .line 552
    .line 553
    :try_start_c
    new-instance v0, Ljava/util/zip/Deflater;

    .line 554
    .line 555
    const/16 v3, 0x9

    .line 556
    .line 557
    invoke-direct {v0, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 558
    .line 559
    .line 560
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    .line 561
    .line 562
    invoke-direct {v3, v1, v0, v13}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 563
    .line 564
    .line 565
    move-object v8, v3

    .line 566
    goto :goto_c

    .line 567
    :cond_13
    move-object v8, v1

    .line 568
    :goto_c
    :try_start_d
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 569
    .line 570
    if-eqz v0, :cond_14

    .line 571
    .line 572
    :try_start_e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 573
    .line 574
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 575
    .line 576
    const-string/jumbo v1, "com.android.sharedstoragebackup"

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 584
    .line 585
    .line 586
    goto :goto_d

    .line 587
    :catchall_2
    move-exception v0

    .line 588
    move-object v1, v0

    .line 589
    move-object v10, v8

    .line 590
    goto/16 :goto_4

    .line 591
    .line 592
    :catch_4
    move-exception v0

    .line 593
    move-object v10, v8

    .line 594
    goto/16 :goto_5

    .line 595
    .line 596
    :catch_5
    move-object v10, v8

    .line 597
    goto/16 :goto_6

    .line 598
    .line 599
    :catch_6
    :try_start_f
    const-string v0, "BackupManagerService"

    .line 600
    .line 601
    const-string v1, "Unable to find shared-storage backup handler"

    .line 602
    .line 603
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 607
    .line 608
    if-eqz v0, :cond_14

    .line 609
    .line 610
    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 611
    .line 612
    :cond_14
    :goto_d
    :try_start_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    move v9, v2

    .line 617
    :goto_e
    if-ge v9, v0, :cond_1a

    .line 618
    .line 619
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    move-object v7, v1

    .line 624
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 625
    .line 626
    const-string v1, "BackupManagerService"

    .line 627
    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    const-string v3, "--- Performing full backup for package "

    .line 634
    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v3, " ---"

    .line 644
    .line 645
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 656
    .line 657
    const-string/jumbo v2, "com.android.sharedstoragebackup"

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v16

    .line 664
    new-instance v17, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 665
    .line 666
    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 667
    .line 668
    iget-boolean v6, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 669
    .line 670
    iget v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 671
    .line 672
    iget v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    .line 673
    .line 674
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 675
    .line 676
    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 677
    .line 678
    move/from16 v18, v9

    .line 679
    .line 680
    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 681
    .line 682
    move-object/from16 v19, v9

    .line 683
    .line 684
    new-instance v9, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 685
    .line 686
    invoke-direct {v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 687
    .line 688
    .line 689
    const/16 v20, 0x0

    .line 690
    .line 691
    const-wide v21, 0x7fffffffffffffffL

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    move/from16 v23, v1

    .line 697
    .line 698
    move-object/from16 v1, v17

    .line 699
    .line 700
    move-object/from16 v24, v3

    .line 701
    .line 702
    move-object v3, v8

    .line 703
    move/from16 v25, v4

    .line 704
    .line 705
    move-object/from16 v4, v20

    .line 706
    .line 707
    move/from16 v20, v5

    .line 708
    .line 709
    move-object v5, v7

    .line 710
    move-object/from16 v26, v7

    .line 711
    .line 712
    move-object/from16 v7, p0

    .line 713
    .line 714
    move-object/from16 v27, v8

    .line 715
    .line 716
    move-object/from16 v28, v9

    .line 717
    .line 718
    move-wide/from16 v8, v21

    .line 719
    .line 720
    move/from16 v10, v20

    .line 721
    .line 722
    move-object/from16 v20, v11

    .line 723
    .line 724
    move/from16 v11, v25

    .line 725
    .line 726
    move-object/from16 v21, v12

    .line 727
    .line 728
    move-object/from16 v12, v24

    .line 729
    .line 730
    move/from16 v13, v23

    .line 731
    .line 732
    move-object/from16 v29, v14

    .line 733
    .line 734
    move-object/from16 v14, v19

    .line 735
    .line 736
    move-object/from16 v15, v28

    .line 737
    .line 738
    :try_start_11
    invoke-direct/range {v1 .. v15}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 739
    .line 740
    .line 741
    if-eqz v16, :cond_15

    .line 742
    .line 743
    :try_start_12
    const-string v1, "Shared storage"
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 744
    .line 745
    move-object/from16 v3, p0

    .line 746
    .line 747
    move-object v2, v1

    .line 748
    move-object/from16 v1, v26

    .line 749
    .line 750
    goto :goto_f

    .line 751
    :catchall_3
    move-exception v0

    .line 752
    const/4 v6, 0x1

    .line 753
    move-object/from16 v3, p0

    .line 754
    .line 755
    move-object v1, v0

    .line 756
    move-object/from16 v10, v27

    .line 757
    .line 758
    move-object/from16 v4, v29

    .line 759
    .line 760
    goto/16 :goto_2d

    .line 761
    .line 762
    :catch_7
    move-exception v0

    .line 763
    const/4 v6, 0x1

    .line 764
    move-object/from16 v3, p0

    .line 765
    .line 766
    move-object/from16 v10, v27

    .line 767
    .line 768
    move-object/from16 v4, v29

    .line 769
    .line 770
    goto/16 :goto_24

    .line 771
    .line 772
    :catch_8
    const/4 v6, 0x1

    .line 773
    move-object/from16 v3, p0

    .line 774
    .line 775
    move-object/from16 v10, v27

    .line 776
    .line 777
    move-object/from16 v4, v29

    .line 778
    .line 779
    goto/16 :goto_28

    .line 780
    .line 781
    :cond_15
    move-object/from16 v1, v26

    .line 782
    .line 783
    :try_start_13
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 784
    .line 785
    move-object/from16 v3, p0

    .line 786
    .line 787
    :goto_f
    :try_start_14
    iget-object v4, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 788
    .line 789
    if-eqz v4, :cond_16

    .line 790
    .line 791
    :try_start_15
    invoke-interface {v4, v2}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 792
    .line 793
    .line 794
    :cond_16
    const/4 v2, 0x0

    .line 795
    goto :goto_12

    .line 796
    :catch_9
    :try_start_16
    const-string v2, "BackupManagerService"

    .line 797
    .line 798
    const-string/jumbo v4, "full backup observer went away: backupPackage"

    .line 799
    .line 800
    .line 801
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .line 803
    .line 804
    const/4 v2, 0x0

    .line 805
    iput-object v2, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 806
    .line 807
    goto :goto_12

    .line 808
    :goto_10
    move-object/from16 v5, v27

    .line 809
    .line 810
    move-object/from16 v4, v29

    .line 811
    .line 812
    goto :goto_17

    .line 813
    :goto_11
    move-object/from16 v5, v27

    .line 814
    .line 815
    move-object/from16 v4, v29

    .line 816
    .line 817
    goto :goto_18

    .line 818
    :catch_a
    move-object/from16 v5, v27

    .line 819
    .line 820
    move-object/from16 v4, v29

    .line 821
    .line 822
    goto :goto_19

    .line 823
    :goto_12
    :try_start_17
    iput-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 824
    .line 825
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 826
    .line 827
    .line 828
    iget-boolean v4, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 829
    .line 830
    if-eqz v4, :cond_19

    .line 831
    .line 832
    if-nez v16, :cond_19

    .line 833
    .line 834
    move-object/from16 v5, v27

    .line 835
    .line 836
    move-object/from16 v4, v29

    .line 837
    .line 838
    :try_start_18
    invoke-virtual {v4, v1, v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    .line 839
    .line 840
    .line 841
    move-result v6

    .line 842
    if-nez v6, :cond_18

    .line 843
    .line 844
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 845
    .line 846
    if-eqz v0, :cond_17

    .line 847
    .line 848
    const/4 v6, 0x1

    .line 849
    :try_start_19
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 850
    .line 851
    goto :goto_16

    .line 852
    :goto_13
    move-object v1, v0

    .line 853
    move-object v10, v5

    .line 854
    goto/16 :goto_2d

    .line 855
    .line 856
    :goto_14
    move-object v10, v5

    .line 857
    goto/16 :goto_24

    .line 858
    .line 859
    :catch_b
    :goto_15
    move-object v10, v5

    .line 860
    goto/16 :goto_28

    .line 861
    .line 862
    :cond_17
    const/4 v6, 0x1

    .line 863
    :goto_16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 864
    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .line 869
    .line 870
    const-string v7, "Failure writing OBB stack for "

    .line 871
    .line 872
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    throw v0

    .line 886
    :catchall_4
    move-exception v0

    .line 887
    goto :goto_13

    .line 888
    :catch_c
    move-exception v0

    .line 889
    goto :goto_14

    .line 890
    :catchall_5
    move-exception v0

    .line 891
    :goto_17
    const/4 v6, 0x1

    .line 892
    goto :goto_13

    .line 893
    :catch_d
    move-exception v0

    .line 894
    :goto_18
    const/4 v6, 0x1

    .line 895
    goto :goto_14

    .line 896
    :catch_e
    :goto_19
    const/4 v6, 0x1

    .line 897
    goto :goto_15

    .line 898
    :cond_18
    :goto_1a
    const/4 v6, 0x1

    .line 899
    goto :goto_1b

    .line 900
    :cond_19
    move-object/from16 v5, v27

    .line 901
    .line 902
    move-object/from16 v4, v29

    .line 903
    .line 904
    goto :goto_1a

    .line 905
    :goto_1b
    add-int/lit8 v9, v18, 0x1

    .line 906
    .line 907
    move-object v10, v2

    .line 908
    move-object v15, v3

    .line 909
    move-object v14, v4

    .line 910
    move-object v8, v5

    .line 911
    move v13, v6

    .line 912
    move-object/from16 v11, v20

    .line 913
    .line 914
    move-object/from16 v12, v21

    .line 915
    .line 916
    goto/16 :goto_e

    .line 917
    .line 918
    :catchall_6
    move-exception v0

    .line 919
    move-object/from16 v5, v27

    .line 920
    .line 921
    move-object/from16 v4, v29

    .line 922
    .line 923
    goto :goto_17

    .line 924
    :catch_f
    move-exception v0

    .line 925
    move-object/from16 v5, v27

    .line 926
    .line 927
    move-object/from16 v4, v29

    .line 928
    .line 929
    goto :goto_18

    .line 930
    :catch_10
    move-object/from16 v5, v27

    .line 931
    .line 932
    move-object/from16 v4, v29

    .line 933
    .line 934
    goto :goto_19

    .line 935
    :catchall_7
    move-exception v0

    .line 936
    goto/16 :goto_10

    .line 937
    .line 938
    :catch_11
    move-exception v0

    .line 939
    goto :goto_11

    .line 940
    :catchall_8
    move-exception v0

    .line 941
    const/4 v6, 0x1

    .line 942
    move-object/from16 v3, p0

    .line 943
    .line 944
    move-object/from16 v5, v27

    .line 945
    .line 946
    move-object/from16 v4, v29

    .line 947
    .line 948
    goto :goto_13

    .line 949
    :catch_12
    move-exception v0

    .line 950
    const/4 v6, 0x1

    .line 951
    move-object/from16 v3, p0

    .line 952
    .line 953
    move-object/from16 v5, v27

    .line 954
    .line 955
    move-object/from16 v4, v29

    .line 956
    .line 957
    goto :goto_14

    .line 958
    :catch_13
    const/4 v6, 0x1

    .line 959
    move-object/from16 v3, p0

    .line 960
    .line 961
    move-object/from16 v5, v27

    .line 962
    .line 963
    move-object/from16 v4, v29

    .line 964
    .line 965
    goto :goto_15

    .line 966
    :catchall_9
    move-exception v0

    .line 967
    move-object v5, v8

    .line 968
    move v6, v13

    .line 969
    move-object v4, v14

    .line 970
    move-object v3, v15

    .line 971
    goto :goto_13

    .line 972
    :catch_14
    move-exception v0

    .line 973
    move-object v5, v8

    .line 974
    move v6, v13

    .line 975
    move-object v4, v14

    .line 976
    move-object v3, v15

    .line 977
    goto :goto_14

    .line 978
    :catch_15
    move-object v5, v8

    .line 979
    move v6, v13

    .line 980
    move-object v4, v14

    .line 981
    move-object v3, v15

    .line 982
    goto :goto_15

    .line 983
    :cond_1a
    move-object v5, v8

    .line 984
    move-object v2, v10

    .line 985
    move-object/from16 v21, v12

    .line 986
    .line 987
    move v6, v13

    .line 988
    move-object v4, v14

    .line 989
    move-object v3, v15

    .line 990
    iget-boolean v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 991
    .line 992
    if-eqz v0, :cond_1c

    .line 993
    .line 994
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    if-eqz v1, :cond_1c

    .line 1003
    .line 1004
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1009
    .line 1010
    const-string v7, "BackupManagerService"

    .line 1011
    .line 1012
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    const-string v9, "--- Performing key-value backup for package "

    .line 1018
    .line 1019
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v9, " ---"

    .line 1028
    .line 1029
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .line 1038
    .line 1039
    new-instance v7, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 1040
    .line 1041
    iget-object v8, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1042
    .line 1043
    iget-object v9, v8, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1044
    .line 1045
    iget-object v10, v8, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 1046
    .line 1047
    iget-object v11, v8, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 1048
    .line 1049
    move-object v15, v7

    .line 1050
    move-object/from16 v16, v5

    .line 1051
    .line 1052
    move-object/from16 v17, v1

    .line 1053
    .line 1054
    move-object/from16 v18, v8

    .line 1055
    .line 1056
    move-object/from16 v19, v9

    .line 1057
    .line 1058
    move-object/from16 v20, v10

    .line 1059
    .line 1060
    move-object/from16 v21, v11

    .line 1061
    .line 1062
    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 1063
    .line 1064
    .line 1065
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1066
    .line 1067
    iget-object v8, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1068
    .line 1069
    if-eqz v8, :cond_1b

    .line 1070
    .line 1071
    :try_start_1a
    invoke-interface {v8, v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1072
    .line 1073
    .line 1074
    goto :goto_1d

    .line 1075
    :catch_16
    :try_start_1b
    const-string v1, "BackupManagerService"

    .line 1076
    .line 1077
    const-string/jumbo v8, "full backup observer went away: backupPackage"

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    .line 1082
    .line 1083
    iput-object v2, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 1084
    .line 1085
    :cond_1b
    :goto_1d
    invoke-virtual {v7}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_1c

    .line 1089
    :cond_1c
    invoke-static {v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1090
    .line 1091
    .line 1092
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1096
    .line 1097
    .line 1098
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_17

    .line 1101
    .line 1102
    .line 1103
    goto :goto_1e

    .line 1104
    :catch_17
    move-exception v0

    .line 1105
    const-string v1, "BackupManagerService"

    .line 1106
    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    const-string v5, "IO error closing adb backup file: "

    .line 1110
    .line 1111
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .line 1127
    .line 1128
    :goto_1e
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1129
    .line 1130
    monitor-enter v1

    .line 1131
    :try_start_1d
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1132
    .line 1133
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1134
    .line 1135
    .line 1136
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1137
    .line 1138
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1139
    .line 1140
    .line 1141
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1143
    .line 1144
    .line 1145
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1146
    .line 1147
    if-eqz v0, :cond_1d

    .line 1148
    .line 1149
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1150
    .line 1151
    .line 1152
    :cond_1d
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1153
    .line 1154
    .line 1155
    const-string v0, "BackupManagerService"

    .line 1156
    .line 1157
    const-string v1, "Full backup pass complete."

    .line 1158
    .line 1159
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1163
    .line 1164
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1165
    .line 1166
    .line 1167
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1168
    .line 1169
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v0

    .line 1177
    if-eqz v0, :cond_27

    .line 1178
    .line 1179
    :goto_1f
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1180
    .line 1181
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1186
    .line 1187
    .line 1188
    goto/16 :goto_2c

    .line 1189
    .line 1190
    :catchall_a
    move-exception v0

    .line 1191
    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1192
    throw v0

    .line 1193
    :catchall_b
    move-exception v0

    .line 1194
    move-object v2, v10

    .line 1195
    move v6, v13

    .line 1196
    move-object v4, v14

    .line 1197
    move-object v3, v15

    .line 1198
    :goto_20
    move-object v1, v0

    .line 1199
    goto/16 :goto_2d

    .line 1200
    .line 1201
    :goto_21
    :try_start_1f
    const-string v1, "BackupManagerService"

    .line 1202
    .line 1203
    const-string v5, "Unable to emit archive header"

    .line 1204
    .line 1205
    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    .line 1207
    .line 1208
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1209
    .line 1210
    if-eqz v0, :cond_1e

    .line 1211
    .line 1212
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 1213
    .line 1214
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 1215
    .line 1216
    .line 1217
    goto :goto_22

    .line 1218
    :catchall_c
    move-exception v0

    .line 1219
    move-object v1, v0

    .line 1220
    move-object v10, v2

    .line 1221
    goto/16 :goto_2d

    .line 1222
    .line 1223
    :catch_18
    move-exception v0

    .line 1224
    move-object v10, v2

    .line 1225
    goto :goto_24

    .line 1226
    :catch_19
    move-object v10, v2

    .line 1227
    goto/16 :goto_28

    .line 1228
    .line 1229
    :cond_1e
    :goto_22
    :try_start_20
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1230
    .line 1231
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1a

    .line 1232
    .line 1233
    .line 1234
    goto :goto_23

    .line 1235
    :catch_1a
    move-exception v0

    .line 1236
    const-string v1, "BackupManagerService"

    .line 1237
    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    const-string v5, "IO error closing adb backup file: "

    .line 1241
    .line 1242
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    .line 1258
    .line 1259
    :goto_23
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1260
    .line 1261
    monitor-enter v1

    .line 1262
    :try_start_21
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1263
    .line 1264
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1268
    .line 1269
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1270
    .line 1271
    .line 1272
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1274
    .line 1275
    .line 1276
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1277
    .line 1278
    if-eqz v0, :cond_1f

    .line 1279
    .line 1280
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1281
    .line 1282
    .line 1283
    :cond_1f
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1284
    .line 1285
    .line 1286
    const-string v0, "BackupManagerService"

    .line 1287
    .line 1288
    const-string v1, "Full backup pass complete."

    .line 1289
    .line 1290
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    .line 1292
    .line 1293
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1294
    .line 1295
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1296
    .line 1297
    .line 1298
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1305
    .line 1306
    .line 1307
    move-result v0

    .line 1308
    if-eqz v0, :cond_20

    .line 1309
    .line 1310
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1311
    .line 1312
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1317
    .line 1318
    .line 1319
    :cond_20
    return-void

    .line 1320
    :catchall_d
    move-exception v0

    .line 1321
    :try_start_22
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    .line 1322
    throw v0

    .line 1323
    :catch_1b
    move-exception v0

    .line 1324
    move-object v2, v10

    .line 1325
    goto/16 :goto_5

    .line 1326
    .line 1327
    :catch_1c
    move-object v2, v10

    .line 1328
    goto/16 :goto_6

    .line 1329
    .line 1330
    :goto_24
    :try_start_23
    const-string v1, "BackupManagerService"

    .line 1331
    .line 1332
    const-string v2, "Internal exception during full backup"

    .line 1333
    .line 1334
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1335
    .line 1336
    .line 1337
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1338
    .line 1339
    if-eqz v0, :cond_21

    .line 1340
    .line 1341
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    .line 1342
    .line 1343
    :cond_21
    if-eqz v10, :cond_22

    .line 1344
    .line 1345
    :try_start_24
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1349
    .line 1350
    .line 1351
    goto :goto_25

    .line 1352
    :catch_1d
    move-exception v0

    .line 1353
    goto :goto_26

    .line 1354
    :cond_22
    :goto_25
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1d

    .line 1357
    .line 1358
    .line 1359
    goto :goto_27

    .line 1360
    :goto_26
    const-string v1, "BackupManagerService"

    .line 1361
    .line 1362
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    const-string v5, "IO error closing adb backup file: "

    .line 1365
    .line 1366
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    .line 1382
    .line 1383
    :goto_27
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1384
    .line 1385
    monitor-enter v1

    .line 1386
    :try_start_25
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1387
    .line 1388
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1389
    .line 1390
    .line 1391
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1392
    .line 1393
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1394
    .line 1395
    .line 1396
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1398
    .line 1399
    .line 1400
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1401
    .line 1402
    if-eqz v0, :cond_23

    .line 1403
    .line 1404
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1405
    .line 1406
    .line 1407
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1408
    .line 1409
    .line 1410
    const-string v0, "BackupManagerService"

    .line 1411
    .line 1412
    const-string v1, "Full backup pass complete."

    .line 1413
    .line 1414
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1418
    .line 1419
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1420
    .line 1421
    .line 1422
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1423
    .line 1424
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1429
    .line 1430
    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_27

    .line 1433
    .line 1434
    goto/16 :goto_1f

    .line 1435
    .line 1436
    :catchall_e
    move-exception v0

    .line 1437
    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 1438
    throw v0

    .line 1439
    :catchall_f
    move-exception v0

    .line 1440
    goto/16 :goto_20

    .line 1441
    .line 1442
    :goto_28
    :try_start_27
    const-string v0, "BackupManagerService"

    .line 1443
    .line 1444
    const-string v1, "App died during full backup"

    .line 1445
    .line 1446
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    .line 1448
    .line 1449
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1450
    .line 1451
    if-eqz v0, :cond_24

    .line 1452
    .line 1453
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 1454
    .line 1455
    :cond_24
    if-eqz v10, :cond_25

    .line 1456
    .line 1457
    :try_start_28
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1461
    .line 1462
    .line 1463
    goto :goto_29

    .line 1464
    :catch_1e
    move-exception v0

    .line 1465
    goto :goto_2a

    .line 1466
    :cond_25
    :goto_29
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1467
    .line 1468
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1e

    .line 1469
    .line 1470
    .line 1471
    goto :goto_2b

    .line 1472
    :goto_2a
    const-string v1, "BackupManagerService"

    .line 1473
    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    const-string v5, "IO error closing adb backup file: "

    .line 1477
    .line 1478
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v0

    .line 1485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .line 1494
    .line 1495
    :goto_2b
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1496
    .line 1497
    monitor-enter v1

    .line 1498
    :try_start_29
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1499
    .line 1500
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1501
    .line 1502
    .line 1503
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1504
    .line 1505
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1506
    .line 1507
    .line 1508
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1510
    .line 1511
    .line 1512
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1513
    .line 1514
    if-eqz v0, :cond_26

    .line 1515
    .line 1516
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1517
    .line 1518
    .line 1519
    :cond_26
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1520
    .line 1521
    .line 1522
    const-string v0, "BackupManagerService"

    .line 1523
    .line 1524
    const-string v1, "Full backup pass complete."

    .line 1525
    .line 1526
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .line 1528
    .line 1529
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1530
    .line 1531
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1532
    .line 1533
    .line 1534
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1535
    .line 1536
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v0

    .line 1544
    if-eqz v0, :cond_27

    .line 1545
    .line 1546
    goto/16 :goto_1f

    .line 1547
    .line 1548
    :cond_27
    :goto_2c
    return-void

    .line 1549
    :catchall_10
    move-exception v0

    .line 1550
    :try_start_2a
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 1551
    throw v0

    .line 1552
    :goto_2d
    if-eqz v10, :cond_28

    .line 1553
    .line 1554
    :try_start_2b
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 1558
    .line 1559
    .line 1560
    goto :goto_2e

    .line 1561
    :catch_1f
    move-exception v0

    .line 1562
    goto :goto_2f

    .line 1563
    :cond_28
    :goto_2e
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1564
    .line 1565
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1f

    .line 1566
    .line 1567
    .line 1568
    goto :goto_30

    .line 1569
    :goto_2f
    const-string v2, "BackupManagerService"

    .line 1570
    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    const-string v7, "IO error closing adb backup file: "

    .line 1574
    .line 1575
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v0

    .line 1582
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v0

    .line 1589
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    .line 1591
    .line 1592
    :goto_30
    iget-object v2, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1593
    .line 1594
    monitor-enter v2

    .line 1595
    :try_start_2c
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1596
    .line 1597
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1598
    .line 1599
    .line 1600
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1601
    .line 1602
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    .line 1604
    .line 1605
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1607
    .line 1608
    .line 1609
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1610
    .line 1611
    if-eqz v0, :cond_29

    .line 1612
    .line 1613
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1614
    .line 1615
    .line 1616
    :cond_29
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1617
    .line 1618
    .line 1619
    const-string v0, "BackupManagerService"

    .line 1620
    .line 1621
    const-string v2, "Full backup pass complete."

    .line 1622
    .line 1623
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    .line 1625
    .line 1626
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1627
    .line 1628
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1629
    .line 1630
    .line 1631
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1632
    .line 1633
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1638
    .line 1639
    .line 1640
    move-result v0

    .line 1641
    if-eqz v0, :cond_2a

    .line 1642
    .line 1643
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1644
    .line 1645
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1650
    .line 1651
    .line 1652
    :cond_2a
    throw v1

    .line 1653
    :catchall_11
    move-exception v0

    .line 1654
    :try_start_2d
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    .line 1655
    throw v0
.end method

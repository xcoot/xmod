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

    .line 5
    move-object v3, p4

    .line 6
    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 9
    move-object v3, p1

    .line 10
    iput-object v3, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    move-object v4, p2

    .line 13
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 15
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 18
    move-result v4

    .line 19
    iput v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 21
    move-object/from16 v4, p16

    .line 23
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    move-object v4, p3

    .line 26
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 28
    move v4, p5

    .line 29
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 31
    move v4, p6

    .line 32
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 34
    move v4, p7

    .line 35
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 37
    move v4, p8

    .line 38
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 40
    move/from16 v4, p11

    .line 42
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 44
    move/from16 v4, p12

    .line 46
    iput-boolean v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 48
    if-nez p15, :cond_0

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    invoke-static/range {p15 .. p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    :goto_0
    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 67
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 69
    if-eqz v2, :cond_2

    .line 71
    const-string v4, ""

    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 82
    :goto_1
    move/from16 v1, p13

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    :goto_2
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 88
    :goto_3
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 90
    move/from16 v1, p14

    .line 92
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 94
    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 98
    move/from16 v1, p18

    .line 100
    iput-boolean v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    .line 102
    move/from16 v1, p19

    .line 104
    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 106
    move-object/from16 v1, p20

    .line 108
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 110
    move/from16 v1, p21

    .line 112
    iput v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    .line 114
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 120
    const-string v0, "BackupManagerService"

    .line 122
    const-string v1, "Backup Manager Yuva is Supported"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 133
    :cond_3
    return-void
.end method

.method public static finalizeBackup(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 3
    :try_start_0
    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p0, "BackupManagerService"

    .line 11
    const-string v0, "Error attempting to finalize backup stream"

    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 25
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    const/high16 v2, 0x8000000

    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string v1, "Unknown package "

    .line 39
    const-string v2, ", skipping"

    .line 41
    const-string v3, "BackupManagerService"

    .line 43
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3
    const/16 v1, 0x40

    .line 5
    new-array v2, v1, [B

    .line 7
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 17
    move-result-object v0

    .line 18
    const-string v3, "PBKDF2WithHmacSHA1"

    .line 20
    const/16 v4, 0x2710

    .line 22
    invoke-static {v3, v0, v2, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 25
    move-result-object v0

    .line 26
    const/16 v5, 0x20

    .line 28
    new-array v5, v5, [B

    .line 30
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 32
    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 34
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 37
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 39
    new-array v1, v1, [B

    .line 41
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 43
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    const-string p0, "AES/CBC/PKCS5Padding"

    .line 48
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 51
    move-result-object v6

    .line 52
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    .line 54
    const-string v8, "AES"

    .line 56
    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    new-instance v8, Ljavax/crypto/CipherOutputStream;

    .line 65
    invoke-direct {v8, p2, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 68
    const-string p2, "AES-256"

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 p2, 0xa

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {v2, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v1, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 111
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 136
    move-result-object v6

    .line 137
    array-length v7, v6

    .line 138
    new-array v7, v7, [C

    .line 140
    const/4 v9, 0x0

    .line 141
    :goto_0
    array-length v10, v6

    .line 142
    if-ge v9, v10, :cond_0

    .line 144
    aget-byte v10, v6, v9

    .line 146
    int-to-char v10, v10

    .line 147
    aput-char v10, v7, v9

    .line 149
    add-int/lit8 v9, v9, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v3, v7, v1, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 159
    move-result-object v1

    .line 160
    new-instance v3, Ljava/io/ByteArrayOutputStream;

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

    .line 169
    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 172
    new-instance v4, Ljava/io/DataOutputStream;

    .line 174
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    array-length v6, v0

    .line 178
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 181
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 184
    array-length v0, v2

    .line 185
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 188
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 191
    array-length v0, v1

    .line 192
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 195
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 198
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 201
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "adb backup cancel of "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "BackupManagerService"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 26
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 35
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 37
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

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

    .line 3
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v0, ", including key-value backups"

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 12
    :goto_0
    const-string v1, "BackupManagerService"

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    const-string v3, "--- Performing adb backup"

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v0, " ---"

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    .line 38
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 41
    new-instance v14, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 43
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 45
    invoke-direct {v14, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 50
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    .line 55
    const-string/jumbo v3, "com.android.sharedstoragebackup"

    .line 58
    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    .line 61
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    move-result-object v1

    .line 68
    iget-object v2, v14, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 70
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 72
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 74
    const/4 v13, 0x1

    .line 75
    invoke-virtual {v2, v1, v14, v13, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendStartBackup()V

    .line 81
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_1

    .line 86
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 88
    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerYuva;->sendStartBackupCallback(Ljava/lang/String;)V

    .line 99
    :cond_1
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 101
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iget-boolean v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 105
    if-eqz v3, :cond_4

    .line 107
    const/high16 v3, 0x8000000

    .line 109
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 112
    move-result-object v1

    .line 113
    move v3, v2

    .line 114
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    move-result v4

    .line 118
    if-ge v3, v4, :cond_4

    .line 120
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 126
    iget-boolean v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 128
    if-nez v5, :cond_2

    .line 130
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 132
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 134
    and-int/2addr v5, v13

    .line 135
    if-nez v5, :cond_3

    .line 137
    :cond_2
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 147
    if-eqz v1, :cond_5

    .line 149
    invoke-static {v2}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    .line 155
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 158
    :cond_5
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 160
    if-eqz v1, :cond_6

    .line 162
    invoke-virtual {v15, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 165
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    .line 167
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-boolean v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    .line 172
    if-eqz v1, :cond_7

    .line 174
    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 176
    and-int/lit16 v1, v1, 0x200

    .line 178
    if-nez v1, :cond_b

    .line 180
    :cond_7
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 183
    move-result-object v1

    .line 184
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object v1

    .line 188
    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_b

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 206
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 208
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 210
    invoke-virtual {v4, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 213
    move-result v4

    .line 214
    if-eqz v4, :cond_a

    .line 216
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 218
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    invoke-static {v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_9

    .line 229
    goto :goto_3

    .line 230
    :cond_9
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 232
    invoke-virtual {v4, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 235
    move-result v4

    .line 236
    xor-int/2addr v4, v13

    .line 237
    if-eqz v4, :cond_8

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 242
    const-string v4, "BackupManagerService"

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    .line 246
    const-string v6, "Package "

    .line 248
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 253
    const-string v7, " is key-value."

    .line 255
    invoke-static {v5, v6, v7, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    goto :goto_2

    .line 262
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 265
    const-string v4, "BackupManagerService"

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 269
    const-string v6, "Package "

    .line 271
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 276
    const-string v6, " is not eligible for backup, removing."

    .line 278
    invoke-static {v5, v3, v6, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    goto :goto_2

    .line 282
    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    new-instance v0, Ljava/io/FileOutputStream;

    .line 293
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 295
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 298
    move-result-object v1

    .line 299
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 302
    const/4 v10, 0x0

    .line 303
    :try_start_0
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 305
    if-eqz v1, :cond_c

    .line 307
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 310
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-lez v1, :cond_c

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

    .line 336
    if-nez v3, :cond_10

    .line 338
    :try_start_3
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 340
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 342
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 344
    iget-object v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 346
    const-string v6, "android.permission.BACKUP"

    .line 348
    const-string/jumbo v7, "hasBackupPassword"

    .line 351
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 356
    if-eqz v5, :cond_10

    .line 358
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 361
    move-result v5

    .line 362
    if-lez v5, :cond_10

    .line 364
    const-string v5, "PBKDF2WithHmacSHA1"

    .line 366
    invoke-virtual {v3, v5, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_10

    .line 372
    iget v5, v3, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 374
    const/4 v6, 0x2

    .line 375
    if-ge v5, v6, :cond_d

    .line 377
    const-string v5, "PBKDF2WithHmacSHA1And8bit"

    .line 379
    invoke-virtual {v3, v5, v4}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_d

    .line 385
    goto :goto_9

    .line 386
    :cond_d
    const-string v0, "BackupManagerService"

    .line 388
    const-string v1, "Backup password mismatch; aborting"

    .line 390
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    :try_start_4
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 395
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 398
    goto :goto_8

    .line 399
    :catch_2
    move-exception v0

    .line 400
    const-string v1, "BackupManagerService"

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 404
    const-string v3, "IO error closing adb backup file: "

    .line 406
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v0

    .line 420
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_8
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 425
    monitor-enter v1

    .line 426
    :try_start_5
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 428
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 440
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 442
    if-eqz v0, :cond_e

    .line 444
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 447
    :cond_e
    invoke-virtual {v14}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 450
    const-string v0, "BackupManagerService"

    .line 452
    const-string v1, "Full backup pass complete."

    .line 454
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 459
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 462
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 464
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_f

    .line 474
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 476
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

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

    .line 489
    const/16 v4, 0x400

    .line 491
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    const-string v4, "ANDROID BACKUP\n"

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/4 v4, 0x5

    .line 500
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    iget-boolean v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 505
    if-eqz v4, :cond_11

    .line 507
    :try_start_8
    const-string v4, "\n1\n"
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 509
    goto :goto_a

    .line 510
    :cond_11
    :try_start_9
    const-string v4, "\n0\n"

    .line 512
    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1b
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 515
    if-eqz v1, :cond_12

    .line 517
    :try_start_a
    invoke-virtual {v15, v3, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

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

    .line 529
    :cond_12
    :try_start_b
    const-string/jumbo v1, "none\n"

    .line 532
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    move-object v1, v0

    .line 536
    :goto_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object v3

    .line 540
    const-string v4, "UTF-8"

    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 549
    iget-boolean v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 551
    if-eqz v0, :cond_13

    .line 553
    :try_start_c
    new-instance v0, Ljava/util/zip/Deflater;

    .line 555
    const/16 v3, 0x9

    .line 557
    invoke-direct {v0, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 560
    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    .line 562
    invoke-direct {v3, v1, v0, v13}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

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

    .line 570
    if-eqz v0, :cond_14

    .line 572
    :try_start_e
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 574
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 576
    const-string/jumbo v1, "com.android.sharedstoragebackup"

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

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

    .line 592
    :catch_4
    move-exception v0

    .line 593
    move-object v10, v8

    .line 594
    goto/16 :goto_5

    .line 596
    :catch_5
    move-object v10, v8

    .line 597
    goto/16 :goto_6

    .line 599
    :catch_6
    :try_start_f
    const-string v0, "BackupManagerService"

    .line 601
    const-string v1, "Unable to find shared-storage backup handler"

    .line 603
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 608
    if-eqz v0, :cond_14

    .line 610
    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 612
    :cond_14
    :goto_d
    :try_start_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 615
    move-result v0

    .line 616
    move v9, v2

    .line 617
    :goto_e
    if-ge v9, v0, :cond_1a

    .line 619
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    move-result-object v1

    .line 623
    move-object v7, v1

    .line 624
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 626
    const-string v1, "BackupManagerService"

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    .line 630
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    const-string v3, "--- Performing full backup for package "

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v3, " ---"

    .line 645
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    move-result-object v2

    .line 652
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 657
    const-string/jumbo v2, "com.android.sharedstoragebackup"

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    move-result v16

    .line 664
    new-instance v17, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 666
    iget-object v2, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 668
    iget-boolean v6, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 670
    iget v5, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 672
    iget v4, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    .line 674
    iget-object v3, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 676
    iget v1, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    .line 678
    move/from16 v18, v9

    .line 680
    iget-object v9, v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 682
    move-object/from16 v19, v9

    .line 684
    new-instance v9, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 686
    invoke-direct {v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 689
    const/16 v20, 0x0

    .line 691
    const-wide v21, 0x7fffffffffffffffL

    .line 696
    move/from16 v23, v1

    .line 698
    move-object/from16 v1, v17

    .line 700
    move-object/from16 v24, v3

    .line 702
    move-object v3, v8

    .line 703
    move/from16 v25, v4

    .line 705
    move-object/from16 v4, v20

    .line 707
    move/from16 v20, v5

    .line 709
    move-object v5, v7

    .line 710
    move-object/from16 v26, v7

    .line 712
    move-object/from16 v7, p0

    .line 714
    move-object/from16 v27, v8

    .line 716
    move-object/from16 v28, v9

    .line 718
    move-wide/from16 v8, v21

    .line 720
    move/from16 v10, v20

    .line 722
    move-object/from16 v20, v11

    .line 724
    move/from16 v11, v25

    .line 726
    move-object/from16 v21, v12

    .line 728
    move-object/from16 v12, v24

    .line 730
    move/from16 v13, v23

    .line 732
    move-object/from16 v29, v14

    .line 734
    move-object/from16 v14, v19

    .line 736
    move-object/from16 v15, v28

    .line 738
    :try_start_11
    invoke-direct/range {v1 .. v15}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 741
    if-eqz v16, :cond_15

    .line 743
    :try_start_12
    const-string v1, "Shared storage"
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 745
    move-object/from16 v3, p0

    .line 747
    move-object v2, v1

    .line 748
    move-object/from16 v1, v26

    .line 750
    goto :goto_f

    .line 751
    :catchall_3
    move-exception v0

    .line 752
    const/4 v6, 0x1

    .line 753
    move-object/from16 v3, p0

    .line 755
    move-object v1, v0

    .line 756
    move-object/from16 v10, v27

    .line 758
    move-object/from16 v4, v29

    .line 760
    goto/16 :goto_2d

    .line 762
    :catch_7
    move-exception v0

    .line 763
    const/4 v6, 0x1

    .line 764
    move-object/from16 v3, p0

    .line 766
    move-object/from16 v10, v27

    .line 768
    move-object/from16 v4, v29

    .line 770
    goto/16 :goto_24

    .line 772
    :catch_8
    const/4 v6, 0x1

    .line 773
    move-object/from16 v3, p0

    .line 775
    move-object/from16 v10, v27

    .line 777
    move-object/from16 v4, v29

    .line 779
    goto/16 :goto_28

    .line 781
    :cond_15
    move-object/from16 v1, v26

    .line 783
    :try_start_13
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 785
    move-object/from16 v3, p0

    .line 787
    :goto_f
    :try_start_14
    iget-object v4, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 789
    if-eqz v4, :cond_16

    .line 791
    :try_start_15
    invoke-interface {v4, v2}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 794
    :cond_16
    const/4 v2, 0x0

    .line 795
    goto :goto_12

    .line 796
    :catch_9
    :try_start_16
    const-string v2, "BackupManagerService"

    .line 798
    const-string/jumbo v4, "full backup observer went away: backupPackage"

    .line 801
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x0

    .line 805
    iput-object v2, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_11
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 807
    goto :goto_12

    .line 808
    :goto_10
    move-object/from16 v5, v27

    .line 810
    move-object/from16 v4, v29

    .line 812
    goto :goto_17

    .line 813
    :goto_11
    move-object/from16 v5, v27

    .line 815
    move-object/from16 v4, v29

    .line 817
    goto :goto_18

    .line 818
    :catch_a
    move-object/from16 v5, v27

    .line 820
    move-object/from16 v4, v29

    .line 822
    goto :goto_19

    .line 823
    :goto_12
    :try_start_17
    iput-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 825
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 828
    iget-boolean v4, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 830
    if-eqz v4, :cond_19

    .line 832
    if-nez v16, :cond_19

    .line 834
    move-object/from16 v5, v27

    .line 836
    move-object/from16 v4, v29

    .line 838
    :try_start_18
    invoke-virtual {v4, v1, v5}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    .line 841
    move-result v6

    .line 842
    if-nez v6, :cond_18

    .line 844
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 846
    if-eqz v0, :cond_17

    .line 848
    const/4 v6, 0x1

    .line 849
    :try_start_19
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 851
    goto :goto_16

    .line 852
    :goto_13
    move-object v1, v0

    .line 853
    move-object v10, v5

    .line 854
    goto/16 :goto_2d

    .line 856
    :goto_14
    move-object v10, v5

    .line 857
    goto/16 :goto_24

    .line 859
    :catch_b
    :goto_15
    move-object v10, v5

    .line 860
    goto/16 :goto_28

    .line 862
    :cond_17
    const/4 v6, 0x1

    .line 863
    :goto_16
    new-instance v0, Ljava/lang/RuntimeException;

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    .line 867
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    const-string v7, "Failure writing OBB stack for "

    .line 872
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    move-result-object v1

    .line 882
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

    .line 902
    move-object/from16 v4, v29

    .line 904
    goto :goto_1a

    .line 905
    :goto_1b
    add-int/lit8 v9, v18, 0x1

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

    .line 914
    move-object/from16 v12, v21

    .line 916
    goto/16 :goto_e

    .line 918
    :catchall_6
    move-exception v0

    .line 919
    move-object/from16 v5, v27

    .line 921
    move-object/from16 v4, v29

    .line 923
    goto :goto_17

    .line 924
    :catch_f
    move-exception v0

    .line 925
    move-object/from16 v5, v27

    .line 927
    move-object/from16 v4, v29

    .line 929
    goto :goto_18

    .line 930
    :catch_10
    move-object/from16 v5, v27

    .line 932
    move-object/from16 v4, v29

    .line 934
    goto :goto_19

    .line 935
    :catchall_7
    move-exception v0

    .line 936
    goto/16 :goto_10

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

    .line 944
    move-object/from16 v5, v27

    .line 946
    move-object/from16 v4, v29

    .line 948
    goto :goto_13

    .line 949
    :catch_12
    move-exception v0

    .line 950
    const/4 v6, 0x1

    .line 951
    move-object/from16 v3, p0

    .line 953
    move-object/from16 v5, v27

    .line 955
    move-object/from16 v4, v29

    .line 957
    goto :goto_14

    .line 958
    :catch_13
    const/4 v6, 0x1

    .line 959
    move-object/from16 v3, p0

    .line 961
    move-object/from16 v5, v27

    .line 963
    move-object/from16 v4, v29

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

    .line 987
    move v6, v13

    .line 988
    move-object v4, v14

    .line 989
    move-object v3, v15

    .line 990
    iget-boolean v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 992
    if-eqz v0, :cond_1c

    .line 994
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 997
    move-result-object v0

    .line 998
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1001
    move-result v1

    .line 1002
    if-eqz v1, :cond_1c

    .line 1004
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1007
    move-result-object v1

    .line 1008
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1010
    const-string v7, "BackupManagerService"

    .line 1012
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    const-string v9, "--- Performing key-value backup for package "

    .line 1019
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    iget-object v9, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1024
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v9, " ---"

    .line 1029
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1035
    move-result-object v8

    .line 1036
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v7, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    .line 1041
    iget-object v8, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1043
    iget-object v9, v8, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1045
    iget-object v10, v8, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 1047
    iget-object v11, v8, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 1049
    move-object v15, v7

    .line 1050
    move-object/from16 v16, v5

    .line 1052
    move-object/from16 v17, v1

    .line 1054
    move-object/from16 v18, v8

    .line 1056
    move-object/from16 v19, v9

    .line 1058
    move-object/from16 v20, v10

    .line 1060
    move-object/from16 v21, v11

    .line 1062
    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 1065
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1067
    iget-object v8, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 1069
    if-eqz v8, :cond_1b

    .line 1071
    :try_start_1a
    invoke-interface {v8, v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1074
    goto :goto_1d

    .line 1075
    :catch_16
    :try_start_1b
    const-string v1, "BackupManagerService"

    .line 1077
    const-string/jumbo v8, "full backup observer went away: backupPackage"

    .line 1080
    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iput-object v2, v3, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 1085
    :cond_1b
    :goto_1d
    invoke-virtual {v7}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    .line 1088
    goto :goto_1c

    .line 1089
    :cond_1c
    invoke-static {v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1092
    :try_start_1c
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1095
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1098
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1100
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_17

    .line 1103
    goto :goto_1e

    .line 1104
    :catch_17
    move-exception v0

    .line 1105
    const-string v1, "BackupManagerService"

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1109
    const-string v5, "IO error closing adb backup file: "

    .line 1111
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1117
    move-result-object v0

    .line 1118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    move-result-object v0

    .line 1125
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_1e
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1130
    monitor-enter v1

    .line 1131
    :try_start_1d
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1133
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1136
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1141
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1145
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1147
    if-eqz v0, :cond_1d

    .line 1149
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1152
    :cond_1d
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1155
    const-string v0, "BackupManagerService"

    .line 1157
    const-string v1, "Full backup pass complete."

    .line 1159
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1164
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1167
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1169
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1172
    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1176
    move-result v0

    .line 1177
    if-eqz v0, :cond_27

    .line 1179
    :goto_1f
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1181
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1184
    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 1188
    goto/16 :goto_2c

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

    .line 1201
    :goto_21
    :try_start_1f
    const-string v1, "BackupManagerService"

    .line 1203
    const-string v5, "Unable to emit archive header"

    .line 1205
    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1210
    if-eqz v0, :cond_1e

    .line 1212
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 1214
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_18
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

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

    .line 1229
    :cond_1e
    :goto_22
    :try_start_20
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 1231
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1a

    .line 1234
    goto :goto_23

    .line 1235
    :catch_1a
    move-exception v0

    .line 1236
    const-string v1, "BackupManagerService"

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1240
    const-string v5, "IO error closing adb backup file: "

    .line 1242
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1248
    move-result-object v0

    .line 1249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1255
    move-result-object v0

    .line 1256
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :goto_23
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1261
    monitor-enter v1

    .line 1262
    :try_start_21
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1264
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1267
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1269
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1272
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1276
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1278
    if-eqz v0, :cond_1f

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1283
    :cond_1f
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1286
    const-string v0, "BackupManagerService"

    .line 1288
    const-string v1, "Full backup pass complete."

    .line 1290
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1295
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1298
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1300
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1303
    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1307
    move-result v0

    .line 1308
    if-eqz v0, :cond_20

    .line 1310
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1312
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1315
    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

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

    .line 1327
    :catch_1c
    move-object v2, v10

    .line 1328
    goto/16 :goto_6

    .line 1330
    :goto_24
    :try_start_23
    const-string v1, "BackupManagerService"

    .line 1332
    const-string v2, "Internal exception during full backup"

    .line 1334
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1337
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1339
    if-eqz v0, :cond_21

    .line 1341
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    .line 1343
    :cond_21
    if-eqz v10, :cond_22

    .line 1345
    :try_start_24
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1348
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

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

    .line 1356
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1d

    .line 1359
    goto :goto_27

    .line 1360
    :goto_26
    const-string v1, "BackupManagerService"

    .line 1362
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1364
    const-string v5, "IO error closing adb backup file: "

    .line 1366
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1372
    move-result-object v0

    .line 1373
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    move-result-object v0

    .line 1380
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_27
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1385
    monitor-enter v1

    .line 1386
    :try_start_25
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1388
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1391
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1393
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1396
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 1397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1400
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1402
    if-eqz v0, :cond_23

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1407
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1410
    const-string v0, "BackupManagerService"

    .line 1412
    const-string v1, "Full backup pass complete."

    .line 1414
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1419
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1422
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1424
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1427
    move-result-object v0

    .line 1428
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1431
    move-result v0

    .line 1432
    if-eqz v0, :cond_27

    .line 1434
    goto/16 :goto_1f

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

    .line 1442
    :goto_28
    :try_start_27
    const-string v0, "BackupManagerService"

    .line 1444
    const-string v1, "App died during full backup"

    .line 1446
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1451
    if-eqz v0, :cond_24

    .line 1453
    iput-boolean v6, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 1455
    :cond_24
    if-eqz v10, :cond_25

    .line 1457
    :try_start_28
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1460
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

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

    .line 1468
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1e

    .line 1471
    goto :goto_2b

    .line 1472
    :goto_2a
    const-string v1, "BackupManagerService"

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1476
    const-string v5, "IO error closing adb backup file: "

    .line 1478
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1484
    move-result-object v0

    .line 1485
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    move-result-object v0

    .line 1492
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :goto_2b
    iget-object v1, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1497
    monitor-enter v1

    .line 1498
    :try_start_29
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1500
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1503
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1505
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1508
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1512
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1514
    if-eqz v0, :cond_26

    .line 1516
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1519
    :cond_26
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1522
    const-string v0, "BackupManagerService"

    .line 1524
    const-string v1, "Full backup pass complete."

    .line 1526
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1531
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1534
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1536
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1539
    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1543
    move-result v0

    .line 1544
    if-eqz v0, :cond_27

    .line 1546
    goto/16 :goto_1f

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

    .line 1554
    :try_start_2b
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1557
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

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

    .line 1565
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_1f

    .line 1568
    goto :goto_30

    .line 1569
    :goto_2f
    const-string v2, "BackupManagerService"

    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1573
    const-string v7, "IO error closing adb backup file: "

    .line 1575
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1581
    move-result-object v0

    .line 1582
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1588
    move-result-object v0

    .line 1589
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :goto_30
    iget-object v2, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1594
    monitor-enter v2

    .line 1595
    :try_start_2c
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1597
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1600
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1602
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    .line 1606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    .line 1609
    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 1611
    if-eqz v0, :cond_29

    .line 1613
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    .line 1616
    :cond_29
    invoke-virtual {v4}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 1619
    const-string v0, "BackupManagerService"

    .line 1621
    const-string v2, "Full backup pass complete."

    .line 1623
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1628
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    .line 1631
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1633
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1636
    move-result-object v0

    .line 1637
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 1640
    move-result v0

    .line 1641
    if-eqz v0, :cond_2a

    .line 1643
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 1645
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 1648
    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

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

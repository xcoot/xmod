.class public final Lcom/android/server/locksettings/LockSettingsStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

.field public static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field public static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field public static final DEFAULT:Ljava/lang/Object;

.field public static final KEY_TO_DB_BACKUP:[Ljava/lang/String;

.field public static final KEY_TO_DB_RESTORE:[Ljava/lang/String;

.field public static final SECURE_STATE:[I

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field public static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field public final mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

.field public mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mContext:Landroid/content/Context;

.field public final mFileWriteLock:Ljava/lang/Object;

.field public mLockTypeCallback:Landroid/os/IRemoteCallback;

.field public mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

.field public mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

.field public mSKTLockState:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sput-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v1, "name"

    .line 11
    .line 12
    .line 13
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 25
    .line 26
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "lock_screen_owner_info"

    .line 36
    .line 37
    .line 38
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 45
    .line 46
    const-string/jumbo v1, "i_love_office_tg"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 57
    .line 58
    const-string/jumbo v7, "lockscreen.device_owner_info"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v8, "lockscreen.disabled"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v2, "lockscreen.samsung_biometric"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v3, "lockscreen.lockout_biometric_attempt_deadline"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v4, "lockscreen.lockoutattemptdeadline"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 77
    .line 78
    .line 79
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

    .line 84
    .line 85
    const/4 v0, 0x7

    .line 86
    new-array v0, v0, [I

    .line 87
    .line 88
    fill-array-data v0, :array_0

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->SECURE_STATE:[I

    .line 92
    .line 93
    const-string/jumbo v0, "migrated_all_users_to_sp_and_bound_ce"

    .line 94
    .line 95
    .line 96
    const-string/jumbo v1, "migrated_all_users_to_sp_and_bound_keys"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "locksettings_db_backup"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v3, "lockscreen.password_salt"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v4, "lockscreen.samsung_biometric"

    .line 106
    .line 107
    .line 108
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->KEY_TO_DB_BACKUP:[Ljava/lang/String;

    .line 113
    .line 114
    const-string/jumbo v0, "locksettings_db_restore"

    .line 115
    .line 116
    .line 117
    filled-new-array {v0}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage;->KEY_TO_DB_RESTORE:[Ljava/lang/String;

    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x10
        0x40
        0x20
        0x80
        0x80
        0x100
        0x200
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 29
    .line 30
    return-void
.end method

.method public static fsyncDirectory(Ljava/io/File;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    .line 7
    .line 8
    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Error syncing directory: "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "LockSettingsStorage"

    .line 53
    .line 54
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p0, "\n"

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public static getCarrierLockKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SKT : Find lost phone plus !!!"

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "AES"

    .line 23
    .line 24
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public static getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public closeDatabase()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final decryptCarrierLockMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string p0, "LockSettingsStorage"

    .line 2
    .line 3
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 4
    .line 5
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockKey()Ljavax/crypto/spec/SecretKeySpec;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :catch_3
    move-exception p1

    .line 42
    goto :goto_3

    .line 43
    :catch_4
    move-exception p1

    .line 44
    goto :goto_4

    .line 45
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v1, "sec_encrypt.decrypt() Exception = "

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo v1, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v1, "sec_encrypt.decrypt() InvalidKeyException = "

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string/jumbo v1, "sec_encrypt.decrypt() NoSuchPaddingException = "

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v1, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :goto_5
    const/4 v1, 0x0

    .line 160
    :goto_6
    return-object v1
.end method

.method public final deleteFile(Ljava/io/File;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->deleteFile(Ljava/io/File;)Z

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, p1, v3, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getBackupDbName()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/data/sec_backup_sys_de/locksetting/"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, "LockSettingsDB, Failed mkdir : /data/sec_backup_sys_de/locksetting/"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "/data/system/"

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, ".bak"

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final getBoolean(Ljava/lang/String;ZI)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const-string p1, "1"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    const-string/jumbo p1, "true"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 34
    :goto_1
    return p2
.end method

.method public final getCarrierLockFromFile()Z
    .locals 10

    .line 1
    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlock.txt"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "IOException while read file"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const-string/jumbo v4, "getCarrierLock() is true"

    .line 11
    .line 12
    .line 13
    const-string v5, "ON"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/16 v7, 0x20

    .line 17
    .line 18
    const-string v8, "LockSettingsStorage"

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    :try_start_0
    invoke-static {v1, v7, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->decryptCarrierLockMsg(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v3, v9

    .line 55
    :goto_0
    move v9, v3

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    return v9

    .line 61
    :cond_2
    new-instance p0, Ljava/io/File;

    .line 62
    .line 63
    const-string v0, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    :try_start_1
    invoke-static {p0, v7, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_3

    .line 85
    .line 86
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move v3, v9

    .line 91
    :goto_2
    move v9, v3

    .line 92
    goto :goto_3

    .line 93
    :catch_1
    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_3
    return v9
.end method

.method public getChildProfileLockFile(I)Ljava/io/File;
    .locals 0

    .line 1
    const-string/jumbo p0, "gatekeeper.profile.key"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getInt(IILjava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public final getOriginDbName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "/data/system/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 16
    .line 17
    return-object p0
.end method

.method public getRebootEscrowFile(I)Ljava/io/File;
    .locals 0

    .line 1
    const-string/jumbo p0, "reboot.escrow.key"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getRebootEscrowServerBlobFile()Ljava/io/File;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    const-string/jumbo v0, "reboot.escrow.server.blob.key"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getRepairModePersistentDataFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "repair-mode/"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    const-string/jumbo v1, "pst"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p3}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "spblob/"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final getSyntheticPasswordStateFileForUser(ILjava/lang/String;J)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string p3, "%016x.%s"

    .line 10
    .line 11
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance p3, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p3, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p3
.end method

.method public final hasFile(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    if-lez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final hasLockSettingsBackup()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "LockSettingsStorage"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "LockSettingsDB, hasLockSettingsBackup : false, Req Db = "

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_0
    const-string p0, "LockSettingsDB, hasLockSettingsBackup : true"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0
.end method

.method public isAutoPinConfirmSettingEnabled(I)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "lockscreen.auto_pin_confirm"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public isKeyValueCached(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 3
    .line 4
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public isUserPrefetched(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 31
    .line 32
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 39
    .line 40
    invoke-virtual {p0, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method

.method public final listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    array-length v0, p0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    aget-object v3, p0, v2

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "\\."

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    array-length v4, v3

    .line 35
    const/4 v5, 0x2

    .line 36
    if-ne v4, v5, :cond_1

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    aget-object v4, v3, v4

    .line 40
    .line 41
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    :try_start_0
    aget-object v4, v3, v1

    .line 48
    .line 49
    const/16 v5, 0x10

    .line 50
    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, "Failed to parse protector ID "

    .line 66
    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    aget-object v3, v3, v1

    .line 71
    .line 72
    const-string v5, "LockSettingsStorage"

    .line 73
    .line 74
    invoke-static {v4, v3, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-object p1
.end method

.method public final prefetchUser(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    invoke-virtual {v2, v4, v7, v3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    const-string/jumbo v5, "true"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v4, v3, v5, v7}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 34
    .line 35
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    iget v8, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    :try_start_2
    monitor-exit v2

    .line 39
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    const-string/jumbo v10, "locksettings"

    .line 47
    .line 48
    .line 49
    sget-object v11, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 50
    .line 51
    const-string/jumbo v12, "user=?"

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    filled-new-array {v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/4 v1, 0x1

    .line 84
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    move/from16 v5, p1

    .line 92
    .line 93
    move v6, v8

    .line 94
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object v3, v0

    .line 104
    :try_start_3
    monitor-exit v2

    .line 105
    throw v3

    .line 106
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    throw v0
.end method

.method public final readFile(Ljava/io/File;)[B
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, -0x1

    .line 15
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 35
    .line 36
    iput v3, v5, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 37
    .line 38
    iput-object p1, v5, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 39
    .line 40
    iput v4, v5, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    monitor-exit p0

    .line 47
    check-cast p1, [B

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    array-length p0, p1

    .line 52
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_0
    monitor-exit v0

    .line 57
    return-object v2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_5

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    monitor-exit p0

    .line 62
    throw p1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 64
    .line 65
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    iget v8, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 67
    .line 68
    :try_start_4
    monitor-exit v1

    .line 69
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    :try_start_5
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 71
    .line 72
    const-string/jumbo v1, "r"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 76
    .line 77
    .line 78
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    long-to-int v1, v3

    .line 83
    new-array v3, v1, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    :try_start_7
    invoke-virtual {v0, v3, v4, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 90
    .line 91
    .line 92
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 93
    .line 94
    .line 95
    :catch_0
    :goto_0
    move-object v0, v3

    .line 96
    goto :goto_4

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto :goto_3

    .line 99
    :catchall_2
    move-exception v1

    .line 100
    goto :goto_1

    .line 101
    :catchall_3
    move-exception v1

    .line 102
    move-object v3, v2

    .line 103
    :goto_1
    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_4
    move-exception v0

    .line 108
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    throw v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 112
    :catch_2
    move-exception v0

    .line 113
    move-object v3, v2

    .line 114
    goto :goto_3

    .line 115
    :catch_3
    move-object v3, v2

    .line 116
    goto :goto_0

    .line 117
    :goto_3
    const-string v1, "LockSettingsStorage"

    .line 118
    .line 119
    const-string v4, "Cannot read file "

    .line 120
    .line 121
    invoke-static {v4, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_4
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    array-length p0, v0

    .line 137
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_2
    move-object v6, v2

    .line 142
    const/4 v7, -0x1

    .line 143
    const/4 v4, 0x1

    .line 144
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :catchall_5
    move-exception p0

    .line 149
    :try_start_b
    monitor-exit v1

    .line 150
    throw p0

    .line 151
    :goto_5
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 152
    throw p0
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3, v5, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(IILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v0, v3, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 23
    .line 24
    iget-object v6, v3, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 25
    .line 26
    iput v5, v6, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 27
    .line 28
    iput-object v2, v6, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 29
    .line 30
    iput v4, v6, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    monitor-exit v3

    .line 37
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 38
    .line 39
    if-ne v0, v2, :cond_0

    .line 40
    .line 41
    move-object/from16 v0, p2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    monitor-exit v1

    .line 47
    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_4

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    monitor-exit v3

    .line 52
    throw v0

    .line 53
    :cond_1
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 54
    .line 55
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    iget v6, v3, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 57
    .line 58
    :try_start_4
    monitor-exit v3

    .line 59
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    sget-object v7, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    const-string/jumbo v9, "locksettings"

    .line 69
    .line 70
    .line 71
    sget-object v10, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v11, "user=? AND name=?"

    .line 74
    .line 75
    .line 76
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    const/4 v15, 0x0

    .line 85
    const/4 v13, 0x0

    .line 86
    const/4 v14, 0x0

    .line 87
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object v3, v7

    .line 105
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    move-object v8, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move-object v8, v7

    .line 111
    :goto_2
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    move-object/from16 v2, p1

    .line 115
    .line 116
    move-object v3, v8

    .line 117
    move/from16 v4, p3

    .line 118
    .line 119
    move v5, v6

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    if-ne v8, v7, :cond_4

    .line 124
    .line 125
    move-object/from16 v0, p2

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    move-object v0, v8

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 130
    .line 131
    :goto_3
    return-object v0

    .line 132
    :catchall_2
    move-exception v0

    .line 133
    move-object v2, v0

    .line 134
    :try_start_5
    monitor-exit v3

    .line 135
    throw v2

    .line 136
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    throw v0
.end method

.method public final readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const/16 v3, 0x3e4

    .line 19
    .line 20
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->readInternal(IJ)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v1, "LockSettingsStorage"

    .line 31
    .line 32
    const-string v2, "Error reading persistent data block"

    .line 33
    .line 34
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final readSyntheticPasswordState(ILjava/lang/String;J)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(ILjava/lang/String;J)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public removeKey(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "name"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "user"

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    const-string/jumbo v1, "locksettings"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "name=? AND user=?"

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 48
    .line 49
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    iput v3, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 56
    .line 57
    iput-object p1, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 58
    .line 59
    iput p2, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_3
    monitor-exit p0

    .line 77
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final removeUser(I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "user=\'"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v3, "user"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/UserManager;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v3, "locksettings"

    .line 50
    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "\'"

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 77
    .line 78
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-int/lit8 v3, v3, -0x1

    .line 86
    .line 87
    :goto_1
    if-ltz v3, :cond_2

    .line 88
    .line 89
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 96
    .line 97
    iget v4, v4, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 98
    .line 99
    if-ne v4, p1, :cond_1

    .line 100
    .line 101
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget p1, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    .line 113
    .line 114
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    iput p1, v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    :try_start_2
    monitor-exit v0

    .line 119
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->purgePath(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    goto :goto_4

    .line 130
    :goto_3
    :try_start_3
    monitor-exit v0

    .line 131
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final sendLockTypeChangedInfo(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    .line 2
    .line 3
    const-string v1, "LockSettingsStorage"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "secureState"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v2, "sendLockTypeChangedInfo failed!!  mLockTypeCallback = "

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string/jumbo p0, "mLockTypeCallback is null!!"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    xor-int/2addr v3, v4

    .line 13
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string/jumbo v6, "cannot store lock settings for special user: %d"

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v6, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->KEY_TO_DB_RESTORE:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v5, "LockSettingsStorage"

    .line 34
    .line 35
    const-string/jumbo v6, "spblob"

    .line 36
    .line 37
    .line 38
    const-string v7, ", "

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v9, "LockSettingsDB, Restore! User "

    .line 46
    .line 47
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "LockSettingsDB, restore fail : no backuped DB File, "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0, v8, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-ge v3, v4, :cond_1

    .line 114
    .line 115
    const-string v0, "LockSettingsDB, restore fail : no protector Id. Can not restore DB!"

    .line 116
    .line 117
    invoke-static {v0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getOriginDbName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->semRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_2

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, "LockSettingsDB, restore fail : semRestoreDatabaseFile ret = "

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    :goto_0
    const-string v0, "LockSettingsDB restore failed!"

    .line 153
    .line 154
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_2
    const-string v3, "LockSettingsDB, semRestoreDatabaseFile Success"

    .line 159
    .line 160
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->diagnoseError()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_3

    .line 174
    .line 175
    const-string v3, "LockSettingsDB, diagnoseError() Success"

    .line 176
    .line 177
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    const-string v3, "LockSettingsDB, diagnoseError() failed! reopen DB Helper!"

    .line 182
    .line 183
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    new-instance v3, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 187
    .line 188
    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-direct {v3, v9}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 194
    .line 195
    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 196
    .line 197
    iput-object v9, v3, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 198
    .line 199
    :goto_1
    const-string v3, "LockSettingsDB, clearCache() Success"

    .line 200
    .line 201
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->clearCache()V

    .line 205
    .line 206
    .line 207
    const-string v3, "LockSettingsDB, restore Success!"

    .line 208
    .line 209
    invoke-static {v3, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    const/16 v3, 0xffe

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_5

    .line 227
    .line 228
    const-string/jumbo v3, "com.android.providers.settings"

    .line 229
    .line 230
    .line 231
    invoke-static {v3}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->CACHED_KEY_TO_LOCKSCREEN:[Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-ltz v3, :cond_6

    .line 241
    .line 242
    const-string/jumbo v4, "sendLockTypeChangedInfo : "

    .line 243
    .line 244
    .line 245
    const-string v9, " = "

    .line 246
    .line 247
    move-object/from16 v10, p2

    .line 248
    .line 249
    invoke-static {v4, v1, v9, v10, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage;->SECURE_STATE:[I

    .line 253
    .line 254
    aget v3, v4, v3

    .line 255
    .line 256
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 257
    .line 258
    .line 259
    :cond_6
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage;->KEY_TO_DB_BACKUP:[Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_f

    .line 266
    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v4, "LockSettingsDB, Backup! User "

    .line 270
    .line 271
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Ljava/io/File;

    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getOriginDbName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_7

    .line 304
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v2, "LockSettingsDB, backup failed : no sourceFile, "

    .line 308
    .line 309
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getOriginDbName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :cond_7
    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 329
    .line 330
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 331
    .line 332
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    sget-object v11, Lcom/android/server/locksettings/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    const-string/jumbo v3, "sp-handle"

    .line 343
    .line 344
    .line 345
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    const/4 v15, 0x0

    .line 350
    const/16 v16, 0x0

    .line 351
    .line 352
    const-string/jumbo v10, "locksettings"

    .line 353
    .line 354
    .line 355
    const-string/jumbo v12, "user=? AND name=?"

    .line 356
    .line 357
    .line 358
    const/4 v14, 0x0

    .line 359
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-eqz v2, :cond_9

    .line 364
    .line 365
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    .line 367
    .line 368
    move-result v3

    .line 369
    if-eqz v3, :cond_8

    .line 370
    .line 371
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    goto :goto_2

    .line 376
    :cond_8
    move-object v3, v1

    .line 377
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_9
    move-object v3, v1

    .line 382
    :goto_3
    if-ne v3, v1, :cond_a

    .line 383
    .line 384
    const/4 v1, 0x0

    .line 385
    goto :goto_4

    .line 386
    :cond_a
    move-object v1, v3

    .line 387
    check-cast v1, Ljava/lang/String;

    .line 388
    .line 389
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    const-wide/16 v3, 0x0

    .line 394
    .line 395
    if-eqz v2, :cond_b

    .line 396
    .line 397
    move-wide v1, v3

    .line 398
    goto :goto_5

    .line 399
    :cond_b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 400
    .line 401
    .line 402
    move-result-wide v1

    .line 403
    :goto_5
    cmp-long v3, v1, v3

    .line 404
    .line 405
    if-eqz v3, :cond_e

    .line 406
    .line 407
    invoke-virtual {v0, v8, v6, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_c

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getOriginDbName()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getBackupDbName()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_d

    .line 431
    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    const-string v3, "LockSettingsDB, Failed semBackupDatabaseFile : error code = "

    .line 435
    .line 436
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_d
    const-string v0, "LockSettingsDB, backup success!"

    .line 451
    .line 452
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    goto :goto_8

    .line 456
    :cond_e
    :goto_6
    const-string v1, "LockSettingsDB, current protector id is null!"

    .line 457
    .line 458
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    :goto_7
    const-string v1, "LockSettingsDB, Backup failed! It will try again on the next reboot."

    .line 462
    .line 463
    invoke-static {v1}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo v1, "locksettings_db_backup"

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v1, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 470
    .line 471
    .line 472
    :cond_f
    :goto_8
    return-void
.end method

.method public final writeFile(Ljava/io/File;[BZ)V
    .locals 10

    .line 1
    const-string v0, "Error writing file "

    .line 2
    .line 3
    const-string v1, "Error writing file "

    .line 4
    .line 5
    const-string/jumbo v2, "writing file : "

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->startWrite(Ljava/io/File;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", bak : "

    .line 26
    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_0
    :goto_0
    new-instance v2, Landroid/util/AtomicFile;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    :try_start_2
    invoke-virtual {v6, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    move-object v5, v6

    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception v7

    .line 68
    goto :goto_1

    .line 69
    :catchall_2
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :catch_1
    move-exception v7

    .line 72
    move-object v6, v5

    .line 73
    :goto_1
    :try_start_4
    const-string v8, "LockSettingsStorage"

    .line 74
    .line 75
    new-instance v9, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v8, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "\n"

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_5
    invoke-virtual {v2, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->finishWrite(Ljava/io/File;)V

    .line 117
    .line 118
    .line 119
    if-eqz p3, :cond_1

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p2, :cond_2

    .line 138
    .line 139
    array-length p3, p2

    .line 140
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :cond_2
    const/4 p2, -0x1

    .line 145
    const/4 p3, 0x1

    .line 146
    invoke-virtual {p0, p3, p1, v5, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    monitor-exit v3

    .line 150
    return-void

    .line 151
    :goto_3
    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :goto_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    throw p0
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 2
    const-string/jumbo v0, "locksettings"

    .line 3
    const-string/jumbo v1, "name"

    .line 4
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 5
    const-string/jumbo v2, "user"

    .line 6
    const-string/jumbo v3, "value"

    .line 7
    invoke-static {p4, v1, v2, v3, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 9
    :try_start_0
    const-string/jumbo v2, "name=? AND user=?"

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mCache:Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 17
    throw p0
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final writePersistentDataBlock(III[B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    const/16 p4, 0x3e4

    .line 21
    .line 22
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->writeInternal(J[BI)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

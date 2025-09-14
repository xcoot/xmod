.class public final Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEVICE_SPECIFIC_INFO_HEADER:Ljava/lang/String; = "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"

.field static final SEED_FILE_SIZE:I = 0x200

.field public static final START_NANOTIME:J

.field public static final START_TIME:J


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/EntropyMixer$2;

.field public final mHandler:Lcom/android/server/EntropyMixer$1;

.field public final randomReadDevice:Ljava/io/File;

.field public final randomWriteDevice:Ljava/io/File;

.field public final seedFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 10
    move-result-wide v0

    .line 11
    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 5
    const-string/jumbo v1, "entropy.dat"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 7
    new-instance v0, Lcom/android/server/EntropyMixer$1;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    .line 8
    new-instance v0, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v0, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Lcom/android/server/EntropyMixer$2;

    .line 9
    new-instance v0, Landroid/util/AtomicFile;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-direct {v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 10
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    .line 11
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    .line 12
    const-string p3, "EntropyMixer"

    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    move-result-object p4

    .line 13
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    array-length p2, p4

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {v0, p4}, Ljava/io/FileOutputStream;->write([B)V

    .line 16
    const-string p2, "Loaded existing seed file"

    invoke-static {p3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/EntropyMixer;->getDeviceSpecificInformation()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_3

    .line 19
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p4

    :try_start_4
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 20
    :goto_3
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Error writing to "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/EntropyMixer;->randomWriteDevice:Ljava/io/File;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->updateSeedFile()V

    .line 22
    iget-object p2, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iget-object p2, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    const-wide/32 v0, 0xa4cb80

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 24
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    const-string p3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string p3, "android.intent.action.REBOOT"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object p3, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Lcom/android/server/EntropyMixer$2;

    const/4 p4, 0x0

    iget-object p0, p0, Lcom/android/server/EntropyMixer;->mHandler:Lcom/android/server/EntropyMixer$1;

    invoke-virtual {p1, p3, p2, p4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getDeviceSpecificInformation()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Copyright (C) 2009 The Android Open Source Project\nAll Your Randomness Are Belong To Us\n"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    sget-wide v1, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    const/16 v1, 0xa

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    sget-wide v2, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v2, "ro.serialno"

    .line 29
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v2, "ro.bootmode"

    .line 42
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v2, "ro.baseband"

    .line 55
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v2, "ro.carrier"

    .line 68
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v2, "ro.bootloader"

    .line 81
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v2, "ro.hardware"

    .line 94
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v2, "ro.revision"

    .line 107
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v2, "ro.build.fingerprint"

    .line 120
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    new-instance v2, Ljava/lang/Object;

    .line 132
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    move-result v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    move-result-wide v2

    .line 149
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 158
    move-result-wide v2

    .line 159
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method


# virtual methods
.method public final readSeedFile()[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 4
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string v3, "Error reading "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 19
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string v2, "EntropyMixer"

    .line 32
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    new-array p0, v0, [B

    .line 37
    return-object p0

    .line 38
    :catch_1
    new-array p0, v0, [B

    .line 40
    return-object p0
.end method

.method public final updateSeedFile()V
    .locals 9

    .line 1
    const-string v0, "EntropyMixer"

    .line 3
    invoke-virtual {p0}, Lcom/android/server/EntropyMixer;->readSeedFile()[B

    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x200

    .line 9
    new-array v3, v2, [B

    .line 11
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 13
    iget-object v5, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    .line 15
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 21
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-ne v5, v2, :cond_0

    .line 24
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v4

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    .line 32
    const-string/jumbo v6, "unexpected EOF"

    .line 35
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :catchall_0
    move-exception v5

    .line 40
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v4

    .line 45
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 49
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    const-string v6, "Error reading "

    .line 53
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v6, p0, Lcom/android/server/EntropyMixer;->randomReadDevice:Ljava/io/File;

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v6, "; seed file won\'t be properly updated"

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_2
    :try_start_6
    const-string v4, "SHA-256"

    .line 75
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 78
    move-result-object v4
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_2

    .line 79
    const-string v5, "Android EntropyMixer v1"

    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    move-result-wide v5

    .line 92
    const/16 v7, 0x8

    .line 94
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v8, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 111
    move-result-wide v5

    .line 112
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 126
    array-length v5, v1

    .line 127
    int-to-long v5, v5

    .line 128
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v8, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    int-to-long v5, v2

    .line 146
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v7, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 160
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 163
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 166
    move-result-object v4

    .line 167
    array-length v5, v4

    .line 168
    sub-int/2addr v2, v5

    .line 169
    array-length v5, v4

    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-static {v4, v6, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v2, 0x0

    .line 175
    :try_start_7
    iget-object v4, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 177
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 184
    iget-object v3, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 186
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 189
    goto :goto_3

    .line 190
    :catch_1
    move-exception v3

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    const-string v5, "Error writing "

    .line 195
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 200
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 211
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    iget-object p0, p0, Lcom/android/server/EntropyMixer;->seedFile:Landroid/util/AtomicFile;

    .line 216
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 219
    :goto_3
    array-length p0, v1

    .line 220
    if-nez p0, :cond_1

    .line 222
    const-string p0, "Created seed file"

    .line 224
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    goto :goto_4

    .line 228
    :cond_1
    const-string p0, "Updated seed file"

    .line 230
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_4
    return-void

    .line 234
    :catch_2
    move-exception p0

    .line 235
    const-string v1, "SHA-256 algorithm not found; seed file won\'t be updated"

    .line 237
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    return-void
.end method

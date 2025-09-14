.class public final Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATA_PATH:Ljava/io/File;


# instance fields
.field public final isSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mLowUserMemFlag_15:Z

.field public mLowUserMemFlag_20:Z

.field public final mMemLowUserThreshold_15:J

.field public final mMemLowUserThreshold_20:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    .line 10
    .line 11
    const-string v1, "DeviceStorageMonitorYuva"

    .line 12
    .line 13
    const-string v2, "constructor is called"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/16 v2, 0x14

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    .line 27
    .line 28
    const/16 v2, 0xf

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :try_start_0
    const-string v2, "com.samsung.memorysaver"

    .line 41
    .line 42
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const-string p1, "device supports YUVA"

    .line 51
    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string p1, "device does not support YUVA"

    .line 58
    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final getStorageUserMemLowBytes(I)J
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    int-to-long p0, p1

    .line 8
    mul-long/2addr v0, p0

    .line 9
    const-wide/16 p0, 0x64

    .line 10
    .line 11
    div-long/2addr v0, p0

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo p1, "user spcific threshold is calculated ->"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "DeviceStorageMonitorYuva"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-wide v0
.end method

.method public final sendCancelUserMemLowNotification(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "%)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceStorageMonitorYuva"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "com.samsung.memorysaver"

    .line 33
    .line 34
    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "PERCENT"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const/high16 p1, 0x10000000

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final sendUserMemLowNotification(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "%)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "DeviceStorageMonitorYuva"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "com.samsung.memorysaver"

    .line 33
    .line 34
    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v1, "PERCENT"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const/high16 p1, 0x10000000

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

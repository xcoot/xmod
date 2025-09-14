.class public Lcom/android/server/gpu/GpuService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

.field public final mDevDriverPackageName:Ljava/lang/String;

.field public final mDeviceConfigLock:Ljava/lang/Object;

.field public final mHasDevDriver:Z

.field public final mHasProdDriver:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mProdDriverPackageName:Ljava/lang/String;

.field public mProdDriverVersionCode:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 20
    const-string/jumbo v0, "ro.gfx.driver.0"

    .line 23
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    .line 29
    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    .line 33
    const-string/jumbo v1, "ro.gfx.driver.1"

    .line 36
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p1

    .line 52
    xor-int/lit8 p1, p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/gpu/GpuService;->mHasProdDriver:Z

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    xor-int/lit8 v0, v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/server/gpu/GpuService;->mHasDevDriver:Z

    .line 64
    if-nez v0, :cond_0

    .line 66
    if-eqz p1, :cond_1

    .line 68
    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 70
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 75
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 80
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 85
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string/jumbo p1, "package"

    .line 91
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Lcom/android/server/gpu/GpuService$PackageReceiver;

    .line 100
    invoke-direct {v2, p0}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    .line 103
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    :cond_1
    return-void
.end method

.method private static native nSetUpdatableDriverPath(Ljava/lang/String;)V
.end method


# virtual methods
.method public final fetchPrereleaseDriverPackageProperties()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mDevDriverPackageName:Ljava/lang/String;

    .line 5
    const/high16 v1, 0x100000

    .line 7
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 13
    const/16 v1, 0x1a

    .line 15
    if-ge v0, v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 20
    if-nez v0, :cond_1

    .line 22
    const-string p0, ""

    .line 24
    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->nSetUpdatableDriverPath(Ljava/lang/String;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 35
    const-string v1, "!/lib/"

    .line 37
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->nSetUpdatableDriverPath(Ljava/lang/String;)V

    .line 44
    :catch_0
    :goto_0
    return-void
.end method

.method public final fetchProductionDriverPackageProperties()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mProdDriverPackageName:Ljava/lang/String;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5
    const/high16 v2, 0x100000

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 13
    const/16 v3, 0x1a

    .line 15
    if-ge v2, v3, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    const-string v3, ""

    .line 22
    const-string/jumbo v4, "updatable_driver_production_allowlist"

    .line 25
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 30
    iput-wide v1, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 41
    const-string v1, "allowlist.txt"

    .line 43
    const-string v2, ","
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 47
    new-instance v5, Ljava/io/InputStreamReader;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 60
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 65
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {p0, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :catch_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 13
    iget-boolean p1, p0, Lcom/android/server/gpu/GpuService;->mHasProdDriver:Z

    .line 15
    if-nez p1, :cond_0

    .line 17
    iget-boolean p1, p0, Lcom/android/server/gpu/GpuService;->mHasDevDriver:Z

    .line 19
    if-nez p1, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Lcom/android/server/gpu/GpuService$SettingsObserver;

    .line 24
    invoke-direct {p1, p0}, Lcom/android/server/gpu/GpuService$SettingsObserver;-><init>(Lcom/android/server/gpu/GpuService;)V

    .line 27
    new-instance p1, Lcom/android/server/gpu/GpuService$DeviceConfigListener;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/gpu/GpuService$DeviceConfigListener;-><init>(Lcom/android/server/gpu/GpuService;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchProductionDriverPackageProperties()V

    .line 35
    const-string/jumbo p1, "game_driver"

    .line 38
    const-string/jumbo v0, "updatable_driver_production_denylists"

    .line 41
    invoke-static {p1, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p1, ""

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/gpu/GpuService;->parseDenylists(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->setDenylist()V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->fetchPrereleaseDriverPackageProperties()V

    .line 67
    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final parseDenylists(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v1, 0x3

    .line 8
    :try_start_1
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p0
.end method

.method public final setDenylist()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    const-string/jumbo v1, "updatable_driver_production_denylist"

    .line 6
    const-string v2, ""

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mDenylists:Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    .line 16
    if-nez v1, :cond_0

    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    .line 42
    invoke-virtual {v2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    .line 45
    move-result-wide v3

    .line 46
    iget-wide v5, p0, Lcom/android/server/gpu/GpuService;->mProdDriverVersionCode:J

    .line 48
    cmp-long v3, v3, v5

    .line 50
    if-nez v3, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    const-string/jumbo v1, "updatable_driver_production_denylist"

    .line 57
    const-string v3, ","

    .line 59
    invoke-virtual {v2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :cond_2
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

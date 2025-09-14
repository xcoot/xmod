.class public final Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mASKSManagerHelper:Lcom/samsung/android/server/pm/install/ASKSHelper;

.field public final mHandler:Landroid/os/Handler;

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

.field public final mSettingsDelegator:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;

.field public final mUnknownLock:Ljava/lang/Object;

.field public final mUnknownSourceAppSet:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/pm/install/PmConfigParser;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 34
    .line 35
    new-instance p1, Lcom/samsung/android/server/pm/install/ASKSHelper;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mASKSManagerHelper:Lcom/samsung/android/server/pm/install/ASKSHelper;

    .line 41
    .line 42
    return-void
.end method

.method public static isSideLoadingApp(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "com.google.android.packageinstaller"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "CountryISO"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "CN"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "com.samsung.android.packageinstaller"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    :goto_1
    return p0
.end method


# virtual methods
.method public loadListFromFile(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public writeUnknownPackageXmlSync(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "writeUnknownPackageXmlSync: "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "UnknownSourceAppManager"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mPmConfigParser:Lcom/samsung/android/server/pm/install/PmConfigParser;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p0}, Lcom/samsung/android/server/pm/install/PmConfigParser;->writePackagesToXml(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.class public final Lcom/android/server/pm/pkg/PackageStateUnserialized;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public apkInUpdatedApex:Z

.field public hiddenUntilInstalled:Z

.field public volatile lastPackageUsageTimeInMills:[J

.field public mApexModuleName:Ljava/lang/String;

.field public final mPackageSetting:Lcom/android/server/pm/PackageSetting;

.field public overrideSeInfo:Ljava/lang/String;

.field public seInfo:Ljava/lang/String;

.field public updatedSystemApp:Z

.field public usesLibraryFiles:Ljava/util/List;

.field public usesLibraryInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryFiles:Ljava/util/List;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getLastPackageUsageTimeInMills()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->lastPackageUsageTimeInMills:[J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    goto :goto_2

    .line 21
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final getLatestForegroundPackageUseTimeInMills()J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    aget v5, v2, v0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    aget-wide v5, v6, v5

    .line 18
    .line 19
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-wide v3
.end method

.method public final getLatestPackageUseTimeInMills()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLastPackageUsageTimeInMills()[J

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-wide v4, p0, v3

    .line 12
    .line 13
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-wide v1
.end method

.method public final setUpdatedSystemApp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->updatedSystemApp:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setUsesLibraryInfos(Ljava/util/List;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->usesLibraryInfos:Ljava/util/List;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageStateUnserialized;->mPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

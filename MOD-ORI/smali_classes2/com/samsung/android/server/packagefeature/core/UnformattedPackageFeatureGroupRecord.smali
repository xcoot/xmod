.class public final Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;
.super Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mGetFileDescriptor:Ljava/util/function/Function;

.field public final mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final initialize$1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 3
    .line 4
    invoke-super {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->initialize$1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p3, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    move-object v0, p3

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p5

    .line 12
    move v4, p4

    .line 13
    move-object v5, p6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;Ljava/lang/String;IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance p4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda3;

    .line 27
    .line 28
    invoke-direct {p4, p0, p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final propagateToCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final updateGroupDataFromScpm(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataDummy:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupData:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataSource:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->propagateToCallbacks()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

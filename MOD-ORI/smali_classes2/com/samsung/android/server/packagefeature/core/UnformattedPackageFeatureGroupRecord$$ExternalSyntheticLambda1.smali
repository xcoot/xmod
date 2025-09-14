.class public final synthetic Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

.field public final synthetic f$1:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object p1, v0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 10
    .line 11
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;->onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

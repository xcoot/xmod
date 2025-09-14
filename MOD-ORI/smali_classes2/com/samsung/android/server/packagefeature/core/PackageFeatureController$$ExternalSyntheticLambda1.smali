.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda3;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->mGroupDataUtil:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mConsumerForFailed:Ljava/util/function/BiConsumer;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->initialize$1()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

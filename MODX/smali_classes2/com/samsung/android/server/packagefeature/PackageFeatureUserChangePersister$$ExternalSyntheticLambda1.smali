.class public final synthetic Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

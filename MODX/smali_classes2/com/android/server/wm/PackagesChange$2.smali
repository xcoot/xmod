.class public final Lcom/android/server/wm/PackagesChange$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PackagesChange;

.field public final synthetic val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackagesChange;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PackagesChange$2;->this$0:Lcom/android/server/wm/PackagesChange;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange$2;->this$0:Lcom/android/server/wm/PackagesChange;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onSystemReady()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$2;->val$userChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 4
    .line 5
    and-int/2addr p2, v0

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

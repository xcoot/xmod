.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;->f$2:J

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-object p0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 26
    .line 27
    check-cast p0, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateGroupDataImmediately:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateGroupDataImmediately:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

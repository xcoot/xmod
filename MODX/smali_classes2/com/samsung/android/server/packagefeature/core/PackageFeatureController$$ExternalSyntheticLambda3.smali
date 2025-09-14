.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


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
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

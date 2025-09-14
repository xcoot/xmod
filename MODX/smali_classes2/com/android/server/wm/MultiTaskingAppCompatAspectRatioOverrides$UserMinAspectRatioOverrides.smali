.class public final Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    .line 5
    .line 6
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->ASPECT_RATIO_DIRECTORY:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v6, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v6, p0}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const-string v3, "FixedAspectRatioPackageMap"

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v0, p1

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides;->mUserOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 26
    .line 27
    return-void
.end method

.class public final Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final isAttributionTagValid:Z


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    .line 8
    return-void
.end method

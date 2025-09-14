.class public abstract Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 16
    sput-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    .line 18
    return-void
.end method

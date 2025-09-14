.class public final Lcom/android/server/pm/PackageManagerServiceTestParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final initialNonStoppedSystemPackages:Ljava/util/Set;

.field public final priorSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/ChangedPackagesTracker;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersion:I

    .line 13
    .line 14
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->initialNonStoppedSystemPackages:Ljava/util/Set;

    .line 22
    .line 23
    return-void
.end method

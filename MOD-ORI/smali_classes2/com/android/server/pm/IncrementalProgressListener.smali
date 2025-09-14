.class public final Lcom/android/server/pm/IncrementalProgressListener;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPackageLoadingProgressChanged(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v3, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v3, p1}, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;-><init>(F)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 33
    .line 34
    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    sub-float/2addr v1, p1

    .line 38
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const v1, 0x322bcc77    # 1.0E-8f

    .line 43
    .line 44
    .line 45
    cmpg-float p1, p1, v1

    .line 46
    .line 47
    if-gez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

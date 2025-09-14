.class public final synthetic Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;->f$0:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;->f$0:F

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 10
    .line 11
    cmpg-float v0, v0, p0

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    iput p0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

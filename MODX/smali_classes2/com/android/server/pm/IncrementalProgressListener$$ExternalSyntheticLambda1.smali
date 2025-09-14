.class public final synthetic Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/server/pm/PackageSetting;->mLoadingCompletedTime:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

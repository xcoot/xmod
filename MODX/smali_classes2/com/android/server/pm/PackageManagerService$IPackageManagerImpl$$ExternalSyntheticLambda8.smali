.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;->f$0:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

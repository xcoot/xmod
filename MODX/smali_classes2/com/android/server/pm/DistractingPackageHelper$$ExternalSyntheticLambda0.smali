.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v4, v4, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    iput p0, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

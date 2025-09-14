.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DexOptHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/DexOptHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/DexOptHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

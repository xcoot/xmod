.class public final synthetic Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InitAppsHelper;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InitAppsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InitAppsHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;->f$1:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/function/TriConsumer;Landroid/util/ArrayMap;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

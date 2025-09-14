.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;
.implements Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerServiceInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public produce()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 3

    .line 2
    new-instance p1, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;

    .line 3
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/Settings;

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;-><init>(Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;)V

    return-object p1
.end method

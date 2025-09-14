.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDefaultCrossProfilePackages()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

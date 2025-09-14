.class public final synthetic Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

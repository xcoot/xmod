.class public final synthetic Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AsecInstallHelper$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallHelper$3;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 18
    .line 19
    invoke-virtual {v2, v1, p0}, Lcom/android/server/pm/AsecInstallHelper;->updateMediaStatus(ILjava/util/Set;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, v0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallHelper;->setAvailableMountSync(Z)V

    .line 26
    .line 27
    .line 28
    const-string p0, "PackageManager"

    .line 29
    .line 30
    const-string/jumbo v0, "setAvailableMountSync false"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

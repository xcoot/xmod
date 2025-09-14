.class public final synthetic Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/role/RoleManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/UserHandle;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/role/RoleManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/role/RoleManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$5:I

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    new-instance v6, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    invoke-direct {v6, p0, v2, v1}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

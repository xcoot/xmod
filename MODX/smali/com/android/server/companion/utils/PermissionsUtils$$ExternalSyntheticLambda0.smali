.class public final synthetic Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 6
    iput p3, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p2, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 3
    iget v1, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 7
    const-class v2, Landroid/app/role/RoleManager;

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/role/RoleManager;

    .line 15
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.class public final synthetic Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 6
    iput p2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 3
    iget v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 11
    const-class v3, Landroid/app/role/RoleManager;

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/role/RoleManager;

    .line 19
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

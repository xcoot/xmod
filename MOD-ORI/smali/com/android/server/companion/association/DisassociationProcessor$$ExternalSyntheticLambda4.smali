.class public final synthetic Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-virtual {v2, v1, v3, v4, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    iget-object v0, v0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->getUidImportance(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.class public final synthetic Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 7
    const/high16 v3, 0x400000

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

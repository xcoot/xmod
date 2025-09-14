.class public final synthetic Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Package ["

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "] is not found."

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "CDM_PackageUtils"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    :goto_0
    return-object p0
.end method

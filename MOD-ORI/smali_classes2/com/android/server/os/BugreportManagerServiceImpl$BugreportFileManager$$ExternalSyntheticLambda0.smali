.class public final synthetic Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManager;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    :try_start_0
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0
.end method

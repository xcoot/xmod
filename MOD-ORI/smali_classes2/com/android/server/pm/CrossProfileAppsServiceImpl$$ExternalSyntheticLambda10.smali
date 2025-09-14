.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;->f$2:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const/4 p0, -0x1

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    return-object p0
.end method

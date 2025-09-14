.class final Lcom/android/server/pm/PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConflictingPackage:Ljava/lang/String;

.field public mConflictingPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, -0x74

    .line 1
    const-string v1, "Failed to prepare for install."

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    goto :goto_0

    :cond_0
    const/16 v0, -0x6e

    .line 4
    :goto_0
    invoke-static {p2, p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.class final Lcom/android/server/pm/SystemDeleteException;
.super Ljava/lang/Exception;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mReason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SystemDeleteException;->mReason:Lcom/android/server/pm/PackageManagerException;

    .line 5
    .line 6
    return-void
.end method

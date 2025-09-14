.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final error:I

.field public final internalErrorCode:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    .line 13
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerException;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p1, -0x6e

    .line 2
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 3
    iput p2, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, -0x6e

    .line 15
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public static ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

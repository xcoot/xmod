.class public final Lcom/android/server/pm/MultiPackageVerifyingSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChildVerifyingSessions:Ljava/util/List;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mVerificationState:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object v0, p2

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge p2, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/VerifyingSession;

    .line 27
    .line 28
    iput-object p0, v1, Lcom/android/server/pm/VerifyingSession;->mParentVerifyingSession:Lcom/android/server/pm/MultiPackageVerifyingSession;

    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mChildVerifyingSessions:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mVerificationState:Ljava/util/Set;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/pm/VerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/MultiPackageVerifyingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 52
    .line 53
    const-string p1, "No child sessions found!"

    .line 54
    .line 55
    const/16 p2, -0x15

    .line 56
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MultiPackageVerifyingSession{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p0, "}"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

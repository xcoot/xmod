.class public final Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChildInstallingSessions:Ljava/util/List;

.field public final mCurrentInstallRequests:Ljava/util/Set;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic this$0:Lcom/android/server/pm/InstallingSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    .line 5
    .line 6
    move-object p1, p2

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-ge p2, p3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Lcom/android/server/pm/InstallingSession;

    .line 31
    .line 32
    iput-object p0, p3, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mCurrentInstallRequests:Ljava/util/Set;

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
    const/16 p2, -0x14

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
    const-string v1, "MultiPackageInstallingSession{"

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

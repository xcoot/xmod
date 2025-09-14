.class public final Lcom/android/server/StorageManagerService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

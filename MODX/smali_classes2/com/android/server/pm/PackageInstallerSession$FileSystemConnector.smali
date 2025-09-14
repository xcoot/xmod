.class public final Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;
.super Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAddedFiles:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 12
    .line 13
    check-cast p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/content/pm/InstallationFileParcel;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 32
    .line 33
    iget-object p2, p2, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    .line 34
    .line 35
    check-cast v0, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 8

    .line 1
    if-eqz p6, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->mAddedFiles:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    move-wide v3, p2

    .line 19
    move-wide v5, p4

    .line 20
    move-object v7, p6

    .line 21
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 32
    .line 33
    const-string p1, "File name is not in the list of added files."

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "incomingFd can\'t be null"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.class public final Lcom/android/server/pm/PackageInstallerSession$FileEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Landroid/content/pm/InstallationFile;

.field public final mIndex:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/InstallationFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLocation()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

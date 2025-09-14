.class public abstract Lcom/android/server/backup/UserBackupManagerFiles;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getBaseStateDir(I)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "backup"

    .line 3
    if-eqz p0, :cond_0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 17
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    return-object p0
.end method

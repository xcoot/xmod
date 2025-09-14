.class Lcom/android/server/accounts/AccountManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method

.method public static getPreNDatabaseName(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 7
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "accounts.db"

    .line 13
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    if-nez p0, :cond_3

    .line 18
    new-instance v2, Ljava/io/File;

    .line 20
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 35
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    const-string v1, "User dir cannot be created: "

    .line 56
    invoke-static {p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v0, "User dir cannot be migrated: "

    .line 75
    invoke-static {v1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

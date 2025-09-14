.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/PackageInstaller$SessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$2:Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda10;->f$2:Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "Opening app details page for ongoing unarchival of: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "PackageArchiverService"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-class v2, Landroid/content/pm/LauncherApps;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 44
    .line 45
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageArchiver;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/pm/LauncherApps;->startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

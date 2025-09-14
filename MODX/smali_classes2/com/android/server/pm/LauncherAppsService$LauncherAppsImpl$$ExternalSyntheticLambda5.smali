.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 6
    .line 7
    sget v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq p0, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    :goto_0
    return v1
.end method

.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/pm/Installer;

.field public final synthetic f$2:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final synthetic f$3:Lcom/android/server/pm/PackageManagerTracedLock;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$1:Lcom/android/server/pm/Installer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$3:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p2, Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    new-instance v3, Lcom/android/server/pm/UserDataPreparer;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$1:Lcom/android/server/pm/Installer;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    invoke-direct {v3, v0, v2, v1}, Lcom/android/server/pm/UserDataPreparer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v6, 0x0

    .line 21
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda29;->f$3:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    move-object v2, p1

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Landroid/util/SparseArray;Lcom/android/server/pm/PersonaManagerService;)V

    .line 26
    .line 27
    .line 28
    return-object p2
.end method

.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/PackageManagerServiceInjector$Producer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lcom/android/server/pm/PackageManagerTracedLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$1:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p1, Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->createInstance()Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v0, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 12
    .line 13
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v0, v3, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    move-object v3, p2

    .line 20
    check-cast v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$1:Landroid/os/Handler;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$2:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

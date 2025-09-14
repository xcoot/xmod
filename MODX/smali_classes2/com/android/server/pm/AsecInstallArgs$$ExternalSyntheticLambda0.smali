.class public final synthetic Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AsecInstallArgs;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallArgs;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AsecInstallArgs;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 10
    .line 11
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(IZ)Z

    .line 17
    .line 18
    .line 19
    monitor-exit v2

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 24
    .line 25
    throw p0
.end method

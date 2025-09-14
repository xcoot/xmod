.class public final Lcom/android/server/pm/AsecInstallHelper$1;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$pm:Landroid/content/pm/PackageManager;

.field public final synthetic val$request:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;Landroid/content/pm/PackageManager;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$request:Lcom/android/server/pm/InstallRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onStatusChanged(IIJ)V
    .locals 0

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$pm:Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$1;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/pm/AsecInstallHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$1;->val$request:Lcom/android/server/pm/InstallRequest;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

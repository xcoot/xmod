.class public final Lcom/android/server/pm/AsecInstallHelper$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$mediaStatus:Z

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v0, "PackageManager"

    .line 13
    .line 14
    const-string/jumbo v1, "updateExternalMediaStatus RuntimeException"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 21
    .line 22
    const/4 p0, 0x5

    .line 23
    const-string/jumbo v0, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

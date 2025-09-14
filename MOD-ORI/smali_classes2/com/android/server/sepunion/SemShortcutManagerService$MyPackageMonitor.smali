.class public final Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemShortcutManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageModified(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, "SemExecuteManagerService"

    .line 2
    .line 3
    const-string/jumbo v0, "onPackageModified"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 12
    .line 13
    const/16 v0, 0x3e6

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 31
    .line 32
    const-wide/16 v1, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 4

    .line 1
    const-string v0, "SemExecuteManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "onSomePackagesChanged"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 12
    .line 13
    const/16 v1, 0x3e6

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;->this$0:Lcom/android/server/sepunion/SemShortcutManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Lcom/android/server/sepunion/SemShortcutManagerService$2;

    .line 31
    .line 32
    const-wide/16 v2, 0x3e8

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.class public final Lcom/android/server/DeviceIdleController$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 9
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Shell;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/android/server/DeviceIdleController;->onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onHelp()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 8
    return-void
.end method

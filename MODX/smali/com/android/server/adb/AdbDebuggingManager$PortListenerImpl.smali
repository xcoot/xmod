.class public final Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPortReceived(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "Received tls port="

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "AdbDebuggingManager"

    .line 19
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 24
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 26
    if-lez p1, :cond_0

    .line 28
    const/16 v1, 0x18

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x19

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

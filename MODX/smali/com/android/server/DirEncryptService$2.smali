.class public final Lcom/android/server/DirEncryptService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    const-string v0, "DirEncryptService received action: "

    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    const-string v0, "DirEncryptService"

    .line 21
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    const-string p1, "DirEncryptService received ACTION_BOOT_COMPLETED"

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 45
    iget-object p0, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    .line 47
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    .line 52
    :cond_0
    return-void
.end method

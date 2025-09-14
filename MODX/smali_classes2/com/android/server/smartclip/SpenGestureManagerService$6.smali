.class public final Lcom/android/server/smartclip/SpenGestureManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onServiceConnected : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 32
    .line 33
    new-instance v0, Landroid/os/Messenger;

    .line 34
    .line 35
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 44
    .line 45
    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onServiceDisconnected : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "SpenGestureManagerService"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$6;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 39
    .line 40
    return-void
.end method

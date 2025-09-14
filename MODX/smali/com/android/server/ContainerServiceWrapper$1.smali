.class public final Lcom/android/server/ContainerServiceWrapper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Container service started : "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 15
    iget-object v0, v0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "KnoxService::ContainerServiceWrapper"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 35
    iget-object p1, p1, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 43
    invoke-static {p2}, Lcom/samsung/android/knox/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IContainerService;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    .line 49
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v0, "Container service disconnected : "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 15
    iget-object v0, v0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "KnoxService::ContainerServiceWrapper"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    .line 35
    iget-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 37
    if-eqz p1, :cond_0

    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 42
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    :cond_0
    return-void
.end method

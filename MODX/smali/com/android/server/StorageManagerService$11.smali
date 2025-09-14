.class public final Lcom/android/server/StorageManagerService$11;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    .line 5
    iput-object p2, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    .line 7
    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    .line 10
    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$11(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onStatus$com$android$server$StorageManagerService$12(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    .line 8
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/android/server/HeimdAllFsService;->waitForFinished()V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    .line 17
    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 20
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    .line 30
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_1
    return-void

    .line 34
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    .line 36
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 38
    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/android/server/HeimdAllFsService;->waitForFinished()V

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    .line 45
    const/4 p2, 0x0

    .line 46
    iput-object p2, p1, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 48
    iget-object p1, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    .line 50
    if-eqz p1, :cond_3

    .line 52
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 55
    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/android/server/StorageManagerService$11;->val$callback:Ljava/lang/Runnable;

    .line 58
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_3
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/StorageManagerService$11;->$r8$classId:I

    .line 3
    return-void
.end method

.class public final Lcom/android/server/StorageManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/StorageManagerService$5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/StorageManagerService$5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "StorageManagerService"

    .line 8
    const-string/jumbo v1, "vold died; reconnecting"

    .line 11
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 19
    iget-object p0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectVold()V

    .line 24
    return-void

    .line 25
    :pswitch_0
    const-string v0, "StorageManagerService"

    .line 27
    const-string/jumbo v1, "storaged died; reconnecting"

    .line 30
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 38
    iget-object p0, p0, Lcom/android/server/StorageManagerService$5;->this$0:Lcom/android/server/StorageManagerService;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->connectStoraged()V

    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

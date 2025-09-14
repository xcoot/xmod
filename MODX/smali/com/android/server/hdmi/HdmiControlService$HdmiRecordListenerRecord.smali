.class public final Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mListener:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 15
    if-ne v2, p0, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    iput-object p0, v1, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 27
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 34
    if-ne v2, p0, :cond_1

    .line 36
    const/4 p0, 0x0

    .line 37
    iput-object p0, v1, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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

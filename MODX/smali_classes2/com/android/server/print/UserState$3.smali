.class public final Lcom/android/server/print/UserState$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final listener:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Landroid/os/IInterface;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 5
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/print/IPrintServicesChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p2}, Lcom/android/server/print/UserState$3;-><init>(Landroid/os/IInterface;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p2}, Lcom/android/server/print/UserState$3;-><init>(Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/UserState$3;->listener:Landroid/os/IInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/print/UserState$3;->$r8$classId:I

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/print/UserState;->mPrintServiceRecommendationsChangeListenerRecords:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/UserState$3;->this$0:Lcom/android/server/print/UserState;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/print/UserState;->mPrintServicesChangeListenerRecords:Ljava/util/List;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    check-cast v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    :goto_0
    return-void

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    throw p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

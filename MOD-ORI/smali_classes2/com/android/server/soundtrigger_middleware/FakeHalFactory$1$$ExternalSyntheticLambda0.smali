.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onClientDetached(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p0, "FakeHalFactory"

    .line 24
    .line 25
    const-string v0, "Unexpected RemoteException from same process"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeHalFactory;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeHalFactory;->mInjection:Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 43
    .line 44
    invoke-interface {v0, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;->onFrameworkDetached(Landroid/media/soundtrigger_middleware/IInjectGlobalEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    const-string p0, "FakeHalFactory"

    .line 49
    .line 50
    const-string v0, "Unexpected RemoteException from same process"

    .line 51
    .line 52
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

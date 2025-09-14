.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/media/soundtrigger_middleware/ISoundTriggerInjection;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    const-string v0, "FakeSoundTriggerHal"

    .line 27
    .line 28
    const-string v1, "Callback dispatch threw"

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    :try_start_1
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    .line 48
    .line 49
    invoke-interface {p0, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    const-string v0, "FakeSoundTriggerHal"

    .line 55
    .line 56
    const-string v1, "Callback dispatch threw"

    .line 57
    .line 58
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    :try_start_2
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$CallbackDispatcher;->mCallback:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/hardware/soundtrigger3/ISoundTriggerHwCallback;

    .line 76
    .line 77
    invoke-interface {p0, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_2
    move-exception p0

    .line 82
    const-string v0, "FakeSoundTriggerHal"

    .line 83
    .line 84
    const-string v1, "Callback dispatch threw"

    .line 85
    .line 86
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :goto_2
    return-void

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    :try_start_3
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$1;->this$0:Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/hardware/soundtrigger3/ISoundTriggerHw$Stub;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p0, v0}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catchall_3
    move-exception p0

    .line 112
    const-string v0, "FakeSoundTriggerHal"

    .line 113
    .line 114
    const-string v1, "Callback dispatch threw"

    .line 115
    .line 116
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :goto_3
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

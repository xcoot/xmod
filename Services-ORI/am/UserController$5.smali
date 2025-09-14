.class public final Lcom/android/server/am/UserController$5;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$finishUserStoppingAsync:Ljava/lang/Object;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController$5;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    iput-object p2, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/am/UserController$5;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    iput-object p2, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/UserController$5;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/am/UserController$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p2, "Finished processing BOOT_COMPLETED for u"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "ActivityManager"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/android/server/am/UserController;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo p2, "broadcast-ACTION_SHUTDOWN-"

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    .line 44
    .line 45
    const-string p3, "-[stopUser]"

    .line 46
    .line 47
    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo p2, "broadcast-ACTION_USER_STOPPING-"

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    .line 73
    .line 74
    const-string p3, "-[stopUser]"

    .line 75
    .line 76
    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget p2, p0, Lcom/android/server/am/UserController$5;->val$userId:I

    .line 81
    .line 82
    invoke-static {p2, p1}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/am/UserController$5;->val$finishUserStoppingAsync:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Ljava/lang/Runnable;

    .line 88
    .line 89
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

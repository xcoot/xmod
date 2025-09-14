.class public final synthetic Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, " cancel sleep mode restriction "

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 17
    const-string v1, "SleepModePolicyController"

    .line 19
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 24
    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->cancelAction()V

    .line 27
    return-void

    .line 28
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    const-string v0, " cancel sleep mode restriction "

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 37
    const-string v1, "SleepModePolicyController"

    .line 39
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 44
    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->cancelAction()V

    .line 47
    return-void

    .line 48
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, " do sleep mode restriction "

    .line 52
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    .line 57
    const-string v1, "SleepModePolicyController"

    .line 59
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    .line 64
    invoke-interface {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;->triggerAction()V

    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
